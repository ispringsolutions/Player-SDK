(function() {
/**
 * @param {!ispring.presenter.player.IPresentationPlayer} player
 */
window.initializeSkin = function(player)
{
	var SLIDE_POS_X = 280;
	var SLIDE_POS_Y = 110;

	var displayProperties = {
		leftPosition: 0,
		scale: 1,
	};

	var presentation = player.presentation();

	var playerWidth = presentation.slideWidth() + SLIDE_POS_X;
	var playerHeight = presentation.slideHeight() + SLIDE_POS_Y;

	var skinSettings = presentation.settings().skin();
	var playerDiv = initializePlayerDiv(playerWidth, playerHeight, skinSettings.sidePanelSettings.sidePanelAtLeft);

	initializeTitle(presentation.title());

	var playerView = player.view();

	// Append player view to content div
	var contentView = document.getElementById("content");
	setElementSize(contentView, presentation.slideWidth(), presentation.slideHeight());
	contentView.appendChild(playerView.displayObject());

	// Initialize slide list
	var playbackController = playerView.restrictedPlaybackController();
	new SidePanel(presentation.slides(), playbackController);

	// Initialize Control panel (progress bar, volume bar, control buttons)
	new ControlPanel(playbackController, presentation.slides(), playerView.soundController(), displayProperties);

	// Initialize view for video narration
	var narrationViewElement = initializeNarrationView(player.videoNarrationController().view(), presentation.narration().videoTracks());
	playerDiv.appendChild(narrationViewElement);

	if (!presentation.settings().appearance().fitToWindow())
	{
		// move to window center on resize
		document.body.style.overflow = "auto";
		window.onresize = function() {
			var left = calculateCenteredPos(document.documentElement.clientWidth, playerWidth);
			var top = calculateCenteredPos(document.documentElement.clientHeight, playerHeight);
			setElementPos(playerDiv, left, top);
		};
	}
	else
	{
		document.body.style.overflow = "hidden";
		playerDiv.style.webkitTransformOrigin = "0 0";
		playerDiv.style.msTransformOrigin = "0 0";
		playerDiv.style.transformOrigin = "0 0";

		// scale player after window
		window.onresize = function() {
			var scale = Math.min(document.documentElement.clientWidth / playerWidth, document.documentElement.clientHeight / playerHeight);
			displayProperties.scale = scale;
			playerDiv.style.webkitTransform = "scale(" + scale + ")";
			playerDiv.style.msTransform = "scale(" + scale + ")";
			playerDiv.style.transform = "scale(" + scale + ")";

			var scaledHeight = Math.round(playerHeight * scale);
			var top = calculateCenteredPos(document.documentElement.clientHeight, scaledHeight);
			var scaledWidth = Math.round(playerWidth * scale);
			displayProperties.leftPosition = calculateCenteredPos(document.documentElement.clientWidth, scaledWidth);
			setElementPos(playerDiv, displayProperties.leftPosition, top);
		};
	}
	window.onresize();

	document.onselectstart = function() { return false; };
}

/**
 * @param {!ispring.presenter.player.narration.video.IVideoNarrationView} narrationView
 * @param {!ispring.presenter.presentation.narration.VideoTracks} videoTracks
 * @return {!Element}
 */
function initializeNarrationView(narrationView, videoTracks)
{
	var /** Element */ narrationViewElement = narrationView.displayObject();
	narrationViewElement.style.display = "none";
	narrationViewElement.id = "narrationView";

	var NarrationTrackPlaybackState = ispring.presenter.presentation.narration.NarrationTrackPlaybackState;
	for (var i = 0; i < videoTracks.count(); ++i)
	{
		var videoTrack = videoTracks.getVideoTrack(i);

		videoTrack.playbackStateChangedEvent().addHandler(function(track) {
			var sidePanelView = document.getElementById("sidePanel");

			if (track.playbackState() == NarrationTrackPlaybackState.ACTIVATED)
			{
				var videoWidth = 280;
				var videoHeight = videoWidth / track.width() * track.height();
				narrationView.resize(videoWidth, videoHeight);

				sidePanelView.style.top = makePx(videoHeight + 50);
				narrationViewElement.style.display = "";
			}
			else if (track.playbackState() == NarrationTrackPlaybackState.DEACTIVATED)
			{
				narrationViewElement.style.display = "none";
				sidePanelView.style.top = "";
			}
		}, this);
	}
	return narrationViewElement;
}

/**
 * @param {number} playerWidth
 * @param {number} playerHeight
 * @param {boolean} sidePanelAtLeft
 * @return {HTMLElement}
 */
function initializePlayerDiv(playerWidth, playerHeight, sidePanelAtLeft)
{
	var /** HTMLElement */ playerDiv = document.getElementById("player");
	setElementSize(playerDiv, playerWidth, playerHeight);
	playerDiv.className = sidePanelAtLeft ? "sidePanelAtLeft" : "sidePanelAtRight";
	return playerDiv;
}

/**
 * @param {string} title
 */
function initializeTitle(title)
{
	var titlePanel = document.getElementById("titlePanel");
	titlePanel.innerText = title;
}

/**
 * @param {number} outerSize
 * @param {number} innerSize
 * @return {number}
 */
function calculateCenteredPos(outerSize, innerSize)
{
	return Math.max(0, Math.floor((outerSize - innerSize) / 2));
}

/**
 * @param {number} n
 * @return {string}
 */
function makePx(n) {
	return n + "px";
}

/**
 * @param {!HTMLElement} element
 * @param {number} x
 * @param {number} y
 */
function setElementPos(element, x, y)
{
	element.style.left = makePx(x);
	element.style.top = makePx(y);
}

/**
 * @param {!HTMLElement} element
 * @param {number} w
 * @param {number} h
 */
function setElementSize(element, w, h)
{
	element.style.width = makePx(w);
	element.style.height = makePx(h);
}
})();
