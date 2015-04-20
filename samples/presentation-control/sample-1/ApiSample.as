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
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.MovieClip;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import fl.controls.Button;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import ispring.presenter.IPresentationPlayer;
	import ispring.presenter.IPresentationPlayerContainer;
	import ispring.presenter.player.clock.IPresentationClock;
	import ispring.presenter.player.clock.PresentationClockEvent;
	import ispring.presenter.player.events.PresentationPlaybackEvent;
	import ispring.presenter.player.IPresentationPlaybackController;
	import ispring.presenter.PlayerContainerEvent;
	import ispring.presenter.presentation.ITimestamp;
	import ispring.presenter.presentation.slides.ISlides;
	
	public class ApiSample extends MovieClip
	{
		private static const BUTTONS_BOTTOM_MARGIN:Number = 50;
		private static const CONTENT_PADDINGS:Number = 20;
		
		private var m_playButton:Button;
		private var m_nextSlideButton:Button;
		private var m_prevSlideButton:Button;
		
		private var m_slideLabel:TextField;
		private var m_timeLabel:TextField;
		
		private var m_playerContainer:IPresentationPlayerContainer;
		private var m_player:IPresentationPlayer;
		private var m_playbackController:IPresentationPlaybackController;
		private var m_clock:IPresentationClock;
		private var m_slides:ISlides;
		
		public function ApiSample()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			var loader:Loader = new Loader();
			
			/*
				To be able to communicate with iSpring Pro generated presentation it must be
				loaded into the application domain derived from the current application domain.
				
				It is also possible to load the presentation into the application domain of the
				current SWF file, however it is not recommended because it may cause class definition 
				conflicts when loading multiple iSpring presentations within one application
			*/
			var appDomain:ApplicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
			var context:LoaderContext = new LoaderContext(false, appDomain);
			loader.contentLoaderInfo.addEventListener(Event.INIT, onMovieLoaded);
			
			loader.load(new URLRequest("presentation.swf"), context);
		}
		
		private function onStageResize(e:Event):void 
		{
			updateLayout();
		}
		
		private function onMovieLoaded(e:Event):void 
		{
			var contentInfo:LoaderInfo = LoaderInfo(e.target);
			var content:DisplayObject = contentInfo.content;
			
			// Query IPresentationPlayerContainer interface of the loaded SWF file
			m_playerContainer = content as IPresentationPlayerContainer;
			if (m_playerContainer == null)
			{
				// The loaded file is not an iSpring presentation
				throw new Error("The loaded SWF file is not a presentation created with iSpring Pro");
			}
			
			// Wait for the player to initilize
			m_playerContainer.addEventListener(PlayerContainerEvent.PLAYER_IS_AVAILABLE, onPlayerAvailable);
			
			content.x = content.y = CONTENT_PADDINGS;
			// Add the presentation to stage
			addChild(content);
		}
		
		private function onPlayerAvailable(e:PlayerContainerEvent):void 
		{
			// Store the player and the playback controller references
			m_player = m_playerContainer.player;
			m_playbackController = m_player.presentationView.playbackController;
			
			// Listen to the slide change event
			m_playbackController.addEventListener(PresentationPlaybackEvent.SLIDE_CHANGE, onSlideChanged);
			
			m_slides = m_player.presentation.slides;

			// Store the presentation clock reference and listen to its events
			m_clock = m_player.presentationView.playbackController.clock;
			m_clock.addEventListener(PresentationClockEvent.TICK, onClockTick);
			m_clock.addEventListener(PresentationClockEvent.STATE_CHANGED, onClockStateChanged);

			// Build the UI
			buildUI();
			
			m_player.skin.window.maximized = false;
			
			// Update UI elements layout
			updateLayout();
		}
		
		private function onClockStateChanged(e:PresentationClockEvent):void 
		{
			m_playButton.label =
				m_clock.started
				? "Pause"
				: "Play";
		}
		
		private function convertTimeToString(time:Number):String
		{
			const minutes:uint = Math.floor(time / 60);
			time -= minutes * 60;
			
			var timeStr:String = time.toFixed(1);
			var secondsStr:String = 
				(time < 10) ? "0" + timeStr
							: timeStr;
				
			return minutes.toString() + ":" + secondsStr;
		}
		
		private function onClockTick(e:PresentationClockEvent):void 
		{
			// Retrieve the presentation timings and update the time label
			const duration:Number = m_slides.duration;
			const currentTimestamp:ITimestamp = m_player.presentationView.playbackController.clock.timestamp;
			const current:Number = m_slides.convertTimestampToTime(currentTimestamp);
			
			m_timeLabel.text = "Time: " + convertTimeToString(current) + " / " + convertTimeToString(duration);
		}
		
		private function onSlideChanged(e:PresentationPlaybackEvent):void 
		{
			// Update the current slide label text
			const currentIndex:uint = m_playbackController.currentSlideIndex + 1;
			const count:uint = m_slides.count;
			m_slideLabel.text = "Slide: " + currentIndex + " of " + count;
		}
		
		private function updateLayout():void 
		{
			const h:Number = stage.stageHeight;
			
			m_playButton.y =
			m_nextSlideButton.y =
			m_prevSlideButton.y =
			m_slideLabel.y = 
			m_timeLabel.y = h - BUTTONS_BOTTOM_MARGIN;
			
			const presentationWidth:Number = stage.stageWidth - 2 * CONTENT_PADDINGS;
			const presentationHeight:Number = h - 2 * CONTENT_PADDINGS - BUTTONS_BOTTOM_MARGIN;
			m_player.skin.window.resize(presentationWidth, presentationHeight);
		}
		
		private function buildUI():void 
		{
			const buttonsGap:Number = 10;
			m_playButton = new Button();
			m_playButton.x = CONTENT_PADDINGS;
			addChild(m_playButton);
			
			m_prevSlideButton = new Button();
			m_prevSlideButton.x = m_playButton.x + m_playButton.width + buttonsGap;
			addChild(m_prevSlideButton);
			
			m_nextSlideButton = new Button();
			m_nextSlideButton.x = m_prevSlideButton.x + m_prevSlideButton.width + buttonsGap;
			addChild(m_nextSlideButton);
			
			m_slideLabel = new TextField();
			m_slideLabel.autoSize = TextFieldAutoSize.LEFT;
			m_slideLabel.x = m_nextSlideButton.x + m_nextSlideButton.width + buttonsGap;
			addChild(m_slideLabel);
			
			m_timeLabel = new TextField();
			m_timeLabel.autoSize = TextFieldAutoSize.LEFT;
			m_timeLabel.x = m_slideLabel.x + 80;
			addChild(m_timeLabel);
			
			m_playButton.label = "Pause";
			m_nextSlideButton.label = "Next slide";
			m_prevSlideButton.label = "Previous slide";
			
			m_playButton.addEventListener(MouseEvent.CLICK, onPlayClick);
			m_prevSlideButton.addEventListener(MouseEvent.CLICK, onPrevClick);
			m_nextSlideButton.addEventListener(MouseEvent.CLICK, onNextClick);
			
			stage.addEventListener(Event.RESIZE, onStageResize);
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
