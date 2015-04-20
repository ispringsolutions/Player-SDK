SidePanel = function(presentation, playbackController)
{
	var sidePanelView = document.getElementById("sidePanel");

	var items = [];

	function addItem(index, thumbnailPath, text) {
		var item = document.createElement("div");
		item.className = "item";
		item.innerHTML = (index + 1) + ". " + text;

		var thumbnail = document.createElement("div");
		thumbnail.className = "thumbnail";
		thumbnail.style.background = "url(" + thumbnailPath + ") no-repeat center";
		item.appendChild(thumbnail);

		sidePanelView.appendChild(item);

		item.onclick = function() {
			playbackController.gotoSlide(index);
		};

		items.push(item);
	}

	for (var i = 0; i < presentation.slides().count(); ++i)
	{
		var slide = presentation.slides().getSlide(i);
		addItem(i, slide.thumbnail().url(), slide.title());
	}

	playbackController.slideChangeEvent().addHandler(function() {
		var selectedSlideIndex = playbackController.currentSlideIndex();
		for (var i = 0; i < items.length; ++i)
		{
			items[i].className = (i == selectedSlideIndex) ? "item selected" : "item";
		}
	})
};
