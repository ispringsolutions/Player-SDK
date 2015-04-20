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
	import fl.controls.Slider;
	import fl.events.SliderEvent;
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
	
	public class SeekSample extends MovieClip
	{
		private static const BUTTONS_BOTTOM_MARGIN:Number = 50;
		private static const CONTENT_PADDINGS:Number = 20;
		private static const LABELS_TOP_MARGIN:Number = 15;
		
		private var m_playButton:Button;
		
		private var m_slideLabel:TextField;
		private var m_timeLabel:TextField;
		
		private var m_timeSlider:Slider;
		
		private var m_presentation:DisplayObject;
		
		private var m_playerContainer:IPresentationPlayerContainer;
		private var m_player:IPresentationPlayer;
		private var m_playbackController:IPresentationPlaybackController;
		private var m_clock:IPresentationClock;
		private var m_slides:ISlides;
		
		public function SeekSample()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			var loader:Loader = new Loader();
			var context:LoaderContext = new LoaderContext(false, new ApplicationDomain(ApplicationDomain.currentDomain));			
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
			m_presentation = contentInfo.content;
			
			m_playerContainer = IPresentationPlayerContainer(m_presentation);
			m_playerContainer.addEventListener(PlayerContainerEvent.PLAYER_IS_AVAILABLE, onPlayerAvailable);
			
			m_presentation.x = m_presentation.y = CONTENT_PADDINGS;
		}
		
		private function onPlayerAvailable(e:PlayerContainerEvent):void 
		{
			m_player = m_playerContainer.player;
			m_playbackController = m_player.presentationView.playbackController;
			m_playbackController.addEventListener(PresentationPlaybackEvent.SLIDE_CHANGE, onSlideChanged);
			
			m_slides = m_player.presentation.slides;
			
			m_clock = m_player.presentationView.playbackController.clock;
			m_clock.addEventListener(PresentationClockEvent.TICK, onClockTick);
			m_clock.addEventListener(PresentationClockEvent.STATE_CHANGED, onClockStateChanged);
			
			m_player.skin.window.maximized = false;
			
			buildUI();
			updateLayout();
		}
		
		private function onClockStateChanged(e:PresentationClockEvent):void 
		{
			m_playButton.label =
				m_clock.isRunning
				? "Pause"
				: "Play";
		}
		
		private function convertTimeToString(time:Number):String
		{
			const hours:uint = Math.floor(time / 3600);
			time -= hours * 3600;
			const hoursStr:String = 
				hours > 0
				? hours.toString() + "."
				: "";
			
			const minutes:uint = Math.floor(time / 60);
			time -= minutes * 60;
			const minutesStr:String = minutes.toString() + ".";
			
			const seconds:Number = time;
			var secondsStr:String = seconds.toFixed(1);
			secondsStr =
				seconds < 10
				? "0" + secondsStr
				: secondsStr;
				
			return hoursStr + minutesStr + secondsStr;
		}
		
		private function onClockTick(e:PresentationClockEvent):void 
		{
			const duration:Number = m_slides.duration;
			const currentTimestamp:ITimestamp = m_player.presentationView.playbackController.clock.timestamp;
			const current:Number = m_slides.convertTimestampToTime(currentTimestamp);
			
			m_timeLabel.text = "Time: " + convertTimeToString(current) + " / " + convertTimeToString(duration);
			m_timeSlider.value = current;
		}
		
		private function onSlideChanged(e:PresentationPlaybackEvent):void 
		{
			const currentIndex:uint = m_playbackController.currentSlideIndex + 1;
			const count:uint = m_slides.count;
			m_slideLabel.text = "Slide: " + currentIndex + " of " + count;
		}
		
		private function updateLayout():void 
		{
			const h:Number = stage.stageHeight;
			const w:Number = stage.stageWidth;
			
			m_playButton.y =
			m_timeSlider.y = h - BUTTONS_BOTTOM_MARGIN;
			
			m_timeLabel.y =
			m_slideLabel.y = m_playButton.y + LABELS_TOP_MARGIN;
			
			m_timeSlider.width = w - m_timeSlider.x - CONTENT_PADDINGS;
			
			const presentationWidth:Number = w - 2 * CONTENT_PADDINGS;
			const presentationHeight:Number = h - 2 * CONTENT_PADDINGS - BUTTONS_BOTTOM_MARGIN;
			m_player.skin.window.resize(presentationWidth, presentationHeight);
		}
		
		private function initTimeSlider():void
		{
			m_timeSlider.minimum = 0;
			m_timeSlider.maximum = m_player.presentation.slides.duration;
			m_timeSlider.snapInterval = 0.1;
			m_timeSlider.tickInterval = 1;
			m_timeSlider.addEventListener(SliderEvent.CHANGE, onTimeSliderChanged);
		}
		
		private function buildUI():void 
		{
			const controlsGap:Number = 10;
			addChild(m_presentation);
			
			m_playButton = new Button();
			m_playButton.x = CONTENT_PADDINGS;
			addChild(m_playButton);
			
			m_slideLabel = new TextField();
			m_slideLabel.selectable = false;
			m_slideLabel.x = m_playButton.x + m_playButton.width + controlsGap;
			m_slideLabel.autoSize = TextFieldAutoSize.LEFT;
			addChild(m_slideLabel);
			
			m_timeLabel = new TextField();
			m_timeLabel.selectable = false;
			m_timeLabel.x = m_slideLabel.x + m_slideLabel.width + 150;
			m_timeLabel.autoSize = TextFieldAutoSize.LEFT;
			addChild(m_timeLabel);
			
			m_timeSlider = new Slider();
			m_timeSlider.liveDragging = true;
			m_timeSlider.x = m_playButton.x + m_playButton.width + controlsGap;
			addChild(m_timeSlider);
			initTimeSlider();
			
			m_playButton.label = "Pause";
			
			m_playButton.addEventListener(MouseEvent.CLICK, onPlayClick);
			
			stage.addEventListener(Event.RESIZE, onStageResize);
		}
		
		private function onTimeSliderChanged(e:SliderEvent):void 
		{
			const time:Number = m_timeSlider.value;
			var timestamp:ITimestamp = m_player.presentation.slides.convertTimeToTimestamp(time);
			m_playbackController.gotoTimestamp(timestamp.slideIndex, timestamp.stepIndex, timestamp.timeOffset);
		}
		
		private function onPlayClick(e:MouseEvent):void 
		{
			if (m_clock.isRunning)
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