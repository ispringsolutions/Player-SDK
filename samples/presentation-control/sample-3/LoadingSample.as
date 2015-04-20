/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package
{
	import fl.controls.Button;
	import fl.controls.ComboBox;
	import fl.controls.List;
	import fl.controls.Slider;
	import fl.data.DataProvider;
	import fl.events.SliderEvent;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.MovieClip;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import ispring.presenter.IPresentationPlayer;
	import ispring.presenter.IPresentationPlayerContainer;
	import ispring.presenter.player.clock.IPresentationClock;
	import ispring.presenter.player.clock.PresentationClockEvent;
	import ispring.presenter.player.events.PresentationPlaybackEvent;
	import ispring.presenter.player.IPresentationPlaybackController;
	import ispring.presenter.player.sound.SoundControllerEvent;
	import ispring.presenter.PlayerContainerEvent;
	import ispring.presenter.presentation.slides.ISlide;
	import ispring.presenter.presentation.slides.ISlides;
	
	public class LoadingSample extends MovieClip
	{
		private static const BUTTONS_BOTTOM_MARGIN:Number = 80;
		private static const VOLUME_CONTROLS_BOTTOM_MARGIN:Number = 40;
		private static const CONTENT_PADDINGS:Number = 20;
		
		private var m_loader:Loader;
		
		private var m_playButton:Button;
		private var m_nextSlideButton:Button;
		private var m_prevSlideButton:Button;
		
		private var m_volumeLabel:TextField;
		private var m_volumeSlider:Slider;
		
		private var m_playerView:DisplayObject;
		
		private var m_presentationsComboBox:ComboBox;
		private var m_slidesList:List;
		
		private var m_playerContainer:IPresentationPlayerContainer;
		private var m_player:IPresentationPlayer;
		private var m_playbackController:IPresentationPlaybackController;
		private var m_clock:IPresentationClock;
		private var m_slides:ISlides;
		
		private var m_presentations:Array;
		
		public function LoadingSample()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			const controlsGap:Number = 15;
			m_presentationsComboBox = new ComboBox();
			m_presentationsComboBox.x =
			m_presentationsComboBox.y = CONTENT_PADDINGS;
			m_presentationsComboBox.width = 155;
			addChild(m_presentationsComboBox);
			
			m_slidesList = new List();
			m_slidesList.x = CONTENT_PADDINGS;
			m_slidesList.y = m_presentationsComboBox.y + m_presentationsComboBox.height + controlsGap;
			m_slidesList.width = m_presentationsComboBox.width;
			addChild(m_slidesList);
			
			m_volumeLabel = new TextField();
			m_volumeLabel.x = m_slidesList.x + m_slidesList.width + controlsGap;
			m_volumeLabel.selectable = false;
			m_volumeLabel.autoSize = TextFieldAutoSize.LEFT;
			m_volumeLabel.text = "Sound volume:";
			addChild(m_volumeLabel);
			
			m_volumeSlider = new Slider();
			m_volumeSlider.x = m_volumeLabel.x + m_volumeLabel.width + controlsGap;
			addChild(m_volumeSlider);
			
			m_playButton = new Button();
			m_playButton.x = m_slidesList.x + m_slidesList.width + controlsGap;
			addChild(m_playButton);
			
			m_prevSlideButton = new Button();
			m_prevSlideButton.x = m_playButton.x + m_playButton.width + controlsGap;
			m_prevSlideButton.label = "Previous slide";
			addChild(m_prevSlideButton);
			
			m_nextSlideButton = new Button();
			m_nextSlideButton.x = m_prevSlideButton.x + m_prevSlideButton.width + controlsGap;
			m_nextSlideButton.label = "Next slide";
			addChild(m_nextSlideButton);
			
			m_loader = new Loader();
			m_loader.contentLoaderInfo.addEventListener(Event.INIT, onMovieLoaded);
			
			loadPresentationsList();
		}
		
		private function loadPresentationsList():void
		{
			var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, onXmlLoaded);
			loader.load(new URLRequest("presentations.xml"));
		}
		
		private function onXmlLoaded(e:Event):void 
		{
			var loader:URLLoader = URLLoader(e.target);
			var xml:XML = new XML(loader.data);
			
			m_presentations = new Array();
			for each (var presNode:XML in xml.presentation)
			{
				var name:String = presNode.@name;
				var url:String = presNode.@src;
				var info:Object = {
					label: name,
					data: url
				};
				m_presentations.push(info);
			}
			m_presentationsComboBox.dataProvider = new DataProvider(m_presentations);
			m_presentationsComboBox.addEventListener(Event.CHANGE, onPresentationSelected);
			
			if (m_presentations.length == 0)
			{
				throw new Error("no presentations found");
			}
			loadPresentation(m_presentations[0].data);
		}
		
		private function onPresentationSelected(e:Event):void 
		{
			var url:String = m_presentationsComboBox.selectedItem.data;
			loadPresentation(url);
		}
		
		private function loadPresentation(url:String):void
		{
			if (m_playerView)
			{
				removeChild(m_playerView);
			}
			
			m_loader.unloadAndStop();
			
			/*
				To be able to communicate with iSpring Pro generated presentation it must be
				loaded into the application domain derived from the current application domain.
				
				It is also possible to load the presentation into the application domain of the
				current SWF file, however it is not recommended because it may cause class definition 
				conflicts when loading multiple iSpring presentations within one application
			*/
			var appDomain:ApplicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
			var context:LoaderContext = new LoaderContext(false, appDomain);
			m_loader.load(new URLRequest(url), context);
		}
		
		private function onStageResize(e:Event):void 
		{
			updateLayout();
		}
		
		private function onMovieLoaded(e:Event):void 
		{
			var contentInfo:LoaderInfo = LoaderInfo(e.target);
			m_playerView = contentInfo.content;
			
			// Query IPresentationPlayerContainer interface of the loaded SWF file
			m_playerContainer = m_playerView as IPresentationPlayerContainer;
			if (m_playerContainer == null)
			{
				// The loaded file is not an iSpring presentation
				throw new Error("The loaded SWF file is not a presentation created with iSpring Pro");
			}
			
			// Wait for the player to initialize
			m_playerContainer.addEventListener(PlayerContainerEvent.PLAYER_IS_AVAILABLE, onPlayerAvailable);
			
			// Add the presentation to stage
			addChild(m_playerView);
		}
		
		private function updateSlidesList():void
		{
			var slides:Array = [];
			const count:uint = m_slides.count;
			for (var i:uint = 0; i < count; ++i) 
			{
				var slide:ISlide = m_slides.getSlide(i);
				var data:Object = {
					label: slide.title,
					data: slide.index
				};
				slides.push(data);
			}
			
			m_slidesList.dataProvider = new DataProvider(slides);
			m_slidesList.addEventListener(Event.CHANGE, onSlideSelected);
		}
		
		private function onSlideSelected(e:Event):void 
		{
			var index:uint = m_slidesList.selectedItem.data;
			m_playbackController.gotoSlide(index);
		}
		
		private function onPlayerAvailable(e:PlayerContainerEvent):void 
		{
			// Store the player and the playback controller references
			m_player = m_playerContainer.player;
			m_playbackController = m_player.presentationView.playbackController;
			
			// Listen to the slide change event
			m_playbackController.addEventListener(PresentationPlaybackEvent.SLIDE_CHANGE, onSlideChanged);
			m_player.presentationView.soundController.addEventListener(SoundControllerEvent.VOLUME_CHANGED, onVolumeChanged);
			onVolumeChanged();
			
			m_slides = m_player.presentation.slides;
			updateSlidesList();

			// Store the presentation clock reference and listen to its events
			m_clock = m_player.presentationView.playbackController.clock;
			m_clock.addEventListener(PresentationClockEvent.STATE_CHANGED, onClockStateChanged);

			// Build the UI
			buildUI();
			
			m_player.skin.window.maximized = false;
			const leftPadding:Number = Math.max(m_slidesList.x + m_slidesList.width, m_presentationsComboBox.x + m_presentationsComboBox.width);			
			m_playerView.x = leftPadding + CONTENT_PADDINGS;
			m_playerView.y = CONTENT_PADDINGS;
			
			// Update UI elements layout
			updateLayout();
		}
		
		private function onVolumeChanged(e:SoundControllerEvent = null):void 
		{
			m_volumeSlider.value = m_player.presentationView.soundController.volume;
		}
		
		private function onClockStateChanged(e:PresentationClockEvent):void 
		{
			m_playButton.label =
				m_clock.started
				? "Pause"
				: "Play";
		}
		
		private function onSlideChanged(e:PresentationPlaybackEvent):void 
		{
			m_slidesList.selectedIndex = m_playbackController.currentSlideIndex;
		}
		
		private function updateLayout():void 
		{
			const h:Number = stage.stageHeight;
			
			m_playButton.y =
			m_nextSlideButton.y =
			m_prevSlideButton.y = h - BUTTONS_BOTTOM_MARGIN;
			
			m_volumeLabel.y =
			m_volumeSlider.y = h - VOLUME_CONTROLS_BOTTOM_MARGIN;
			
			m_slidesList.height = h - m_slidesList.y - CONTENT_PADDINGS;
			
			const presentationWidth:Number = stage.stageWidth - CONTENT_PADDINGS - m_playerView.x;
			const presentationHeight:Number = h - 2 * CONTENT_PADDINGS - BUTTONS_BOTTOM_MARGIN;
			m_player.skin.window.resize(presentationWidth, presentationHeight);
		}
		
		private function buildUI():void 
		{
			m_playButton.label = "Pause";
			
			m_playButton.addEventListener(MouseEvent.CLICK, onPlayClick);
			m_prevSlideButton.addEventListener(MouseEvent.CLICK, onPrevClick);
			m_nextSlideButton.addEventListener(MouseEvent.CLICK, onNextClick);
			
			m_volumeSlider.maximum = 1;
			m_volumeSlider.snapInterval = 0.05;
			m_volumeSlider.addEventListener(SliderEvent.CHANGE, onVolumeSliderChanged);
			
			stage.addEventListener(Event.RESIZE, onStageResize);
		}
		
		private function onVolumeSliderChanged(e:SliderEvent):void 
		{
			m_player.presentationView.soundController.volume = m_volumeSlider.value;
		}
		
		private function onNextClick(e:MouseEvent):void 
		{
			m_playbackController.gotoNextSlide();
		}
		
		private function onPrevClick(e:MouseEvent):void 
		{
			m_playbackController.gotoPreviousSlide();
		}
		
		private function onPlayClick(e:MouseEvent):void 
		{
			if (m_clock.started)
			{
				m_playbackController.pause();
			}
			else
			{
				m_playbackController.play();
			}
		}
	}
}
