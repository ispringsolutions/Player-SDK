/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin.sidePanel
{
	import fl.controls.TileList;
	import fl.data.DataProvider;
	import fl.events.ListEvent;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import ispring.presenter.player.events.PresentationPlaybackEvent;
	import ispring.presenter.player.IPresentationPlaybackController;
	import ispring.presenter.player.IPresentationView2;
	import ispring.presenter.presentation.IPresentation;
	import ispring.presenter.presentation.slides.ISlide;
	import ispring.presenter.presentation.slides.ISlides;
	import sampleSkin.IComponentFactory;
	import sampleSkin.settings.IBuildSettings;
	import sampleSkin.settings.SkinSettings;

	public class ThumbnailsPanel extends Sprite
	{
		private var m_componentFactory:IComponentFactory;
		private var m_presentation:IPresentation;
		private var m_presentationView:IPresentationView2;
		private var m_skinSettings:SkinSettings;
		private var m_buildSettings:IBuildSettings;
		private var m_playbackController:IPresentationPlaybackController;
		private var m_slides:ISlides;

		private var m_thumanilsLoadingManager:ThumbnailsLoadingManager;

		private var m_list:TileList;

		public function ThumbnailsPanel(componentFactory:IComponentFactory,
			presentation:IPresentation,
			presentationView:IPresentationView2,
			settings:SkinSettings,
			buildSettings:IBuildSettings)
		{
			 if (componentFactory == null ||
				presentation == null ||
				presentationView == null ||
				settings == null ||
				buildSettings == null)
			{
				throw new ArgumentError();
			}

			m_componentFactory = componentFactory;
			m_presentation = presentation;
			m_skinSettings = settings;
			m_buildSettings = buildSettings;
			m_presentationView = presentationView;
			m_slides = m_presentation.slides;

			var thumbnailsArray:Array = getSlidesThumbnails(m_slides);
			m_thumanilsLoadingManager = new ThumbnailsLoadingManager(thumbnailsArray);

			m_playbackController = m_presentationView.restrictedPlaybackController;
			m_playbackController.addEventListener(PresentationPlaybackEvent.SLIDE_CHANGE, onPlaybackControllerSlideChanged, false, 0, true);
			
			m_list = componentFactory.createList();
			m_list.addEventListener(ListEvent.ITEM_CLICK, onListBeforeSelectedItemChanged);
			addChild(m_list as DisplayObject);

			var slidesArray:Array = convertSlidesCollectionToArray(m_slides);
			m_list.dataProvider = new DataProvider(slidesArray);
		}

		/**
		 * Switches to the selected slide index
		 */
		private function onListBeforeSelectedItemChanged(e:ListEvent):void
		{
			var item:Object = m_list.getItemAt(e.index);
			if (m_list.isItemSelected(item))
			{
				return;
			}

			var slide:ISlide = item.slide as ISlide;
			m_playbackController.gotoSlide(slide.index);
		}
		
		/**
		 * Updates current slide indication
		 */
		private function onPlaybackControllerSlideChanged(e:PresentationPlaybackEvent = null):void
		{
			 m_list.selectedIndex = getCurrentSlideIndex();
			 m_list.scrollToSelected();
		}

		public function resize(w:Number, h:Number):void
		{
			m_list.width = w;
			m_list.height = h;
		}

		/**
		 * Returns the index of the current slide in the slides list
		 */
		private function getCurrentSlideIndex():int
		{
			var currentSlide:ISlide = m_playbackController.currentSlide;
			var dataProvider:DataProvider = m_list.dataProvider;
			
			for (var i:uint = 0; i < dataProvider.length; i++)
			{
				if (dataProvider.getItemAt(i).slide == currentSlide)
				{
					return i;
				}
			}
			return -1;
		}
		
		/**
		 * Builds an array of visible slide thumbnails
		 */
		private function getSlidesThumbnails(slides:ISlides):Array
		{
			var thumbnails:Array = new Array();
			
			for (var i:uint = 0; i < slides.visibleSlidesCount; ++i)
			{
				var visibleSlide:ISlide = slides.getVisibleSlide(i);
				if (visibleSlide.hasThumbnail)
				{
					thumbnails.push(visibleSlide.thumbnail);
				}
			}
			
			return thumbnails;
		}

		/**
		 * Creates an array to serve as a data provider for the thumbnails list
		 */
		private function convertSlidesCollectionToArray(slides:ISlides):Array
		{
			var slidesArray:Array = new Array();
			for (var i:int = 0; i < slides.count; ++i)
			{
				var slide:ISlide = slides.getSlide(i);
				if (slide.visible)
				{
					slidesArray.push({slide: slide});
				}
			}
			return slidesArray;
		}
	}
}