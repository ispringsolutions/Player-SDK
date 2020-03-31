(function() {
/**
 * @param {!ispring.presenter.presentation.slides.ISlides} slides
 * @param {!ispring.presenter.player.IPresentationPlaybackController} playbackController
 */
window.SidePanel = function(slides, playbackController)
{
	var sidePanelView = document.getElementById("sidePanel");

	var items = [];

	function addSlide(index) {
		var slide = slides.getSlide(index);
		var slideItem = createSlideItem(slide.thumbnail().url(), (index + 1) + ". " + slide.title());
		slideItem.onclick = function() {
			playbackController.gotoSlide(index);
		};
		sidePanelView.appendChild(slideItem);
		items.push(slideItem);
	}

	for (var i = 0; i < slides.count(); ++i)
	{
		addSlide(i);
	}

	playbackController.slideChangeEvent().addHandler(function() {
		var selectedSlideIndex = playbackController.currentSlideIndex();
		for (var i = 0; i < items.length; ++i)
		{
			items[i].className = (i == selectedSlideIndex) ? "item selected" : "item";
		}
	})
};

/**
 * @param {!string} thumbnailPath
 * @param {!string} text
 * @return {!Element}
 */
function createSlideItem(thumbnailPath, text) {
	var item = document.createElement("div");
	item.className = "item";
	item.innerText = text;

	var thumbnail = document.createElement("div");
	thumbnail.className = "thumbnail";
	thumbnail.style.background = "url(" + thumbnailPath + ") no-repeat center";
	item.appendChild(thumbnail);
	return item;
}
})();
