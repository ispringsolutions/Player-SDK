SampleSkin = function(player)
{
	var presentationView = player.view();
	var playbackController = player.view().restrictedPlaybackController();
	var soundController = player.view().soundController();
	var presentation = player.presentation();
	var skinSettings = presentation.settings().skin();

	var playerWidth = presentation.slideWidth() + 280;
	var playerHeight = presentation.slideHeight() + 110;

	var playerView = document.getElementById("player");
	playerView.style.width = playerWidth + "px";
	playerView.style.height = playerHeight + "px";

	if (skinSettings.sidePanelSettings.sidePanelAtLeft)
	{
		playerView.className = "sidePanelAtLeft";
	}
	else
	{
		playerView.className = "sidePanelAtRight";
	}

	var titlePanel = document.getElementById("titlePanel");
	titlePanel.innerHTML = presentation.title();

	new SidePanel(presentation, playbackController);

	var contentView = document.getElementById("content");
	contentView.appendChild(presentationView.displayObject());

	new ControlPanel(playbackController, presentation.slides(), soundController);

	var narrationView = player.videoNarrationController().view();
	var narrationViewElement = narrationView.displayObject();
	narrationViewElement.style.display = "none";
	narrationViewElement.id = "narrationView";
	playerView.appendChild(narrationViewElement);

	var NarrationTrackPlaybackState = ispring.presenter.presentation.narration.NarrationTrackPlaybackState;
	var videoTracks = presentation.narration().videoTracks();
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

				sidePanelView.style.top = (videoHeight + 50) + "px";
				narrationViewElement.style.display = "";
			}
			else if (track.playbackState() == NarrationTrackPlaybackState.DEACTIVATED)
			{
				narrationViewElement.style.display = "none";
				sidePanelView.style.top = "";
			}
		}, this);
	}

	window.leftPosition = 0;
	window.scale = 1;
	if (!presentation.settings().appearance().fitToWindow())
	{
		document.body.style.overflow = "auto";
		window.onresize = function() {
			var top = Math.max(0, Math.floor((document.documentElement.clientHeight - playerHeight) / 2));
			playerView.style.top = top + "px";

			var left = Math.max(0, Math.floor((document.documentElement.clientWidth - playerWidth) / 2));
			playerView.style.left = left + "px";

		};
	}
	else
	{
		document.body.style.overflow = "hidden";
		playerView.style.webkitTransformOrigin = "0 0";
		playerView.style.msTransformOrigin = "0 0";
		playerView.style.transformOrigin = "0 0";

		window.onresize = function() {
			window.scale = Math.min(document.documentElement.clientWidth / playerWidth, document.documentElement.clientHeight / playerHeight);
			playerView.style.webkitTransform = "scale(" + window.scale + ")";
			playerView.style.msTransform = "scale(" + window.scale + ")";
			playerView.style.transform = "scale(" + window.scale + ")";

			var scaledHeight = Math.round(playerHeight * scale);
			var top = Math.max(0, Math.floor((document.documentElement.clientHeight - scaledHeight) / 2));
			playerView.style.top = top + "px";

			var scaledWidth = Math.round(playerWidth * scale);
			window.leftPosition = Math.max(0, Math.floor((document.documentElement.clientWidth - scaledWidth) / 2));
			playerView.style.left = window.leftPosition + "px";
		};
	}
	window.onresize();

	document.onselectstart = function() { return false; }
};