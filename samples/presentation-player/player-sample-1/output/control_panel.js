(function() {
/**
 * @param {!ispring.presenter.player.IPresentationPlaybackController} playbackController
 * @param {!ispring.presenter.presentation.slides.ISlides} slides
 * @param {!ispring.presenter.player.sound.ISoundController} soundController
 * @param {{ leftPosition: number, scale: number }} displayProperties
 */
window.ControlPanel = function(playbackController, slides, soundController, displayProperties)
{
	var clock = playbackController.clock();

	/* ==================== play button ============================*/
	var playButton = document.getElementById("play");
	clock.stateChangeEvent().addHandler(function() {
		playButton.className = clock.running() ? "selected" : "";
	});

	playButton.onclick = function() {
		if (clock.running())
		{
			playbackController.pause();
		}
		else
		{
			playbackController.play();
		}
	};

	/* ================= navigation buttons ========================*/

	var prevButton = document.getElementById("prev");
	prevButton.onclick = function() {
		playbackController.gotoPreviousSlide();
	};

	var nextButton = document.getElementById("next");
	nextButton.onclick = function() {
		playbackController.gotoNextSlide();
	};

	playbackController.slideChangeEvent().addHandler(function() {
		var currentSlideIndex = playbackController.currentSlideIndex()
		enableControl(prevButton, currentSlideIndex != playbackController.firstSlideIndex());
		enableControl(nextButton, currentSlideIndex != playbackController.lastSlideIndex());
	});

	/* ==================== progress bar ===========================*/

	var slidesLabel = document.getElementById("slideLabel");
	playbackController.slideChangeEvent().addHandler(function() {
		slidesLabel.innerHTML = "Slide: " + (playbackController.currentSlideIndex() + 1) + " / " + (playbackController.lastSlideIndex() + 1);
	});

	var progressLine = document.getElementById("progress");
	var timeLabel = document.getElementById("timeLabel");
	clock.tickEvent().addHandler(function() {
		if (playbackController.currentSlideIndex() != -1)
		{
			var slide = playbackController.currentSlide();
			var slideDuration = slide.animationSteps().duration();

			var timestamp = clock.timestamp();
			var currentPresentationTime = slides.convertTimestampToTime(timestamp, false, false);

			var slideStartTimestamp = slides.createTimestamp(slide.index(), 0, 0);
			var slideStartTime = slides.convertTimestampToTime(slideStartTimestamp, false, false);

			timeLabel.innerHTML = formatTime(currentPresentationTime - slideStartTime) + " / " + formatTime(slideDuration);

			var slideProgress = (slideDuration > 0) ? ((currentPresentationTime - slideStartTime) / slideDuration) : 0;
			progressLine.style.width = Math.round(slideProgress * 100) + "%";
		}
	});

	var progressBar = document.getElementById("progressBar");
	var playAfterSeek = false;
	function startSeeking(event) {
		playAfterSeek = clock.running();
		playbackController.pause();

		document.addEventListener("mouseup", stopSeeking);
		document.addEventListener("mousemove", seek);

		seek(event);
	}

	function getProgressBarOffset() {
		var element = progressBar;
		var currentLeft = 0;

		do {
			currentLeft += element.offsetLeft;
			element = element.offsetParent;
		} while (element.offsetParent);

		return currentLeft;
	}

	function seek(event) {
		var progress = ((event.clientX - displayProperties.leftPosition) / displayProperties.scale - getProgressBarOffset() + displayProperties.leftPosition) / progressBar.clientWidth;
		progress = Math.max(0, Math.min(1, progress));

		var currentSlide = playbackController.currentSlide();
		var currentTime = progress * currentSlide.animationSteps().duration();
		var timestamp = currentSlide.convertTimeToTimestamp(currentTime, false);
		playbackController.gotoTimestamp(timestamp.slideIndex(), timestamp.stepIndex(), timestamp.timeOffset(), false);
	}

	function stopSeeking() {
		document.removeEventListener("mouseup", stopSeeking);
		document.removeEventListener("mousemove", seek);

		if (playAfterSeek)
		{
			playbackController.play();
		}
	}

	progressBar.addEventListener("mousedown", startSeeking);

	/* =================== volume control ==========================*/

	var muteButton = document.getElementById("muteButton");

	soundController.muteStateToggledEvent().addHandler(function() {
		muteButton.className = soundController.muted() ? "selected" : "";
	});

	muteButton.onclick = function() {
		soundController.mute(!soundController.muted());
	};

	var volumeThumb = document.getElementById("volumeThumb");

	function updateVolumeThumbPosition()
	{
		volumeThumb.style.marginLeft = (soundController.volume() * 100) + "%";
	}

	soundController.volumeChangedEvent().addHandler(updateVolumeThumbPosition);
	updateVolumeThumbPosition();

	function volumeChangeStarted(event) {
		if (!soundController.muted())
		{
			document.addEventListener("mouseup", volumeChangeFinished);
			document.addEventListener("mousemove", updateVolume);

			updateVolume(event);
		}
	}

	var volumeControl = document.getElementById("volumeControl");
	function getVolumeControlOffset() {
		var element = volumeControl;
		var currentLeft = 0;

		do {
			currentLeft += element.offsetLeft;
			element = element.offsetParent;
		} while (element.offsetParent);

		return currentLeft;
	}

	function updateVolume(event) {
		var volume = ((event.clientX - displayProperties.leftPosition) / displayProperties.scale - getVolumeControlOffset() + displayProperties.leftPosition) / volumeControl.clientWidth;
		volume = Math.max(0, Math.min(1, volume));

		soundController.setVolume(volume);
	}

	function volumeChangeFinished() {
		document.removeEventListener("mouseup", volumeChangeFinished);
		document.removeEventListener("mousemove", updateVolume);
	}

	volumeControl.addEventListener("mousedown", volumeChangeStarted);

	soundController.muteStateToggledEvent().addHandler(function() {
		enableControl(volumeControl, !soundController.muted());
	});
};

/**
 * @param {!Element} ctrl
 * @param {boolean} enabled
 */
function enableControl(ctrl, enabled) {
	if (enabled)
	{
		ctrl.removeAttribute("disabled");
	}
	else
	{
		ctrl.setAttribute("disabled", "");
	}
}

/**
 * @param {!number} num
 * @return {!string}
 */
function formatNumber(num) {
	var str = num.toString();
	if (str.length == 1)
	{
		str = "0" + str;
	}

	return str;
}

/**
 * @param {number} seconds
 * @return {string}
 */
function formatTime(seconds) {
	seconds = Math.round(seconds);
	var minutes = Math.floor(seconds / 60);
	seconds = seconds % 60;

	return formatNumber(minutes) + ":" + formatNumber(seconds);
}
})();
