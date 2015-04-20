/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin.navigation
{
	import fl.controls.Button
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import ispring.presenter.player.clock.PresentationClockEvent;
	import ispring.presenter.player.events.PresentationPlaybackEvent;
	import ispring.presenter.player.IPresentationPlaybackController;
	import ispring.presenter.player.IPresentationView2;
	import ispring.presenter.player.PresentationPlaybackState;
	import ispring.presenter.player.slides.IPresentationSlideView;
	import ispring.presenter.player.slides.ISlidePlaybackController;
	import ispring.presenter.presentation.IPresentation;
	import ispring.presenter.presentation.slides.ISlide;
	import ispring.presenter.presentation.slides.ISlides;
	import ispring.presenter.presentation.slides.SlideType;
	import sampleSkin.IComponentFactory;
	import sampleSkin.settings.IBuildSettings;
	import sampleSkin.settings.SkinSettings; 

	public class NavigationPanel extends Sprite
	{
		public static const BUTTONS_GAP:int = 5;

		private static const NAVIGATION_BUTTONS_WIDTH:Number = 50;
		public static const NAVIGATION_BUTTONS_HEIGHT:Number = 25;

		private static const PLAY_BUTTON_WIDTH:Number = 50;
		private static const PLAY_BUTTON_HEIGHT:Number = 50;

		private static const PROGRESS_BAR_HEIGHT:Number = 25;

		private static const VOLUME_SLIDER_WIDTH:Number = 100;

		private static const BUTTONS_HORIZONTAL_OFFSET:int = 10;

		private var m_componentFactory:IComponentFactory;
		private var m_presentation:IPresentation;
		private var m_presentationView:IPresentationView2;
		private var m_skinSettings:SkinSettings;
		private var m_buildSettings:IBuildSettings;
		private var m_slides:ISlides;
		private var m_playbackController:IPresentationPlaybackController;

		private var m_prevButton:Button;
		private var m_nextButton:Button;
		private var m_playButton:Button;

		private var m_volumeControl:VolumeControl;

		private var m_progressBar:ProgressBar;
		private var m_playAfterSeek:Boolean;

		private var m_totalTimeStr:String;

		private var m_bg:Sprite;

		public function NavigationPanel(componentFactory:IComponentFactory,
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
			m_playbackController = m_presentationView.restrictedPlaybackController;
			m_totalTimeStr = timeToString(m_slides.visibleSlidesDuration);

			m_bg = componentFactory.createSprite(0xAFD4FF);
			addChild(m_bg);

			m_prevButton = componentFactory.createButton();
			m_playButton = componentFactory.createButton();
			m_nextButton = componentFactory.createButton();

			m_prevButton.label = m_nextButton.label = m_playButton.label = "";

			m_prevButton.setStyle("icon", sampleSkin.iconPrev);
			m_nextButton.setStyle("icon", sampleSkin.iconNext);
			m_playButton.setStyle("icon", sampleSkin.iconPlay);

			m_playButton.toggle = true;
		
			m_progressBar = new ProgressBar(componentFactory);
			m_progressBar.addEventListener(ProgressBar.PROGRESS_SEEK, onProgressSeek);
			m_progressBar.addEventListener(ProgressBar.START_SEEK, onProgressStartSeek);
			m_progressBar.addEventListener(ProgressBar.STOP_SEEK, onProgressStopSeek);

			m_volumeControl = new VolumeControl(componentFactory);

			m_volumeControl.volume = m_presentationView.soundController.volume;
			m_volumeControl.mute = m_presentationView.soundController.mute;

			m_volumeControl.resize(VOLUME_SLIDER_WIDTH, NAVIGATION_BUTTONS_HEIGHT);

			m_volumeControl.addEventListener(VolumeControl.VOLUME_CHANGED_EVENT, onVolumeChanged);		
			m_volumeControl.addEventListener(VolumeControl.MUTE_CHANGED_EVENT, onMuteChanged);		
			
			addChild(m_bg);
			addChild(m_prevButton);
			addChild(m_playButton);
			addChild(m_nextButton);	
			addChild(m_progressBar);
			addChild(m_volumeControl);
			
			m_prevButton.addEventListener(MouseEvent.CLICK, onPrevButtonClick);
			m_nextButton.addEventListener(MouseEvent.CLICK, onNextButtonClick);				
			m_playButton.addEventListener(MouseEvent.CLICK, onPlayButtonClick);	
		
			m_playbackController.clock.addEventListener(PresentationClockEvent.STATE_CHANGED, onClockStateChanged, false, 0, true);		
			m_playbackController.clock.addEventListener(PresentationClockEvent.TICK, updateProgress, false, 0, true);			
			m_playbackController.addEventListener(PresentationPlaybackEvent.SLIDE_CHANGE, updateSlideIndicator, false, 0, true);	
			
			m_prevButton.width = m_nextButton.width = NAVIGATION_BUTTONS_WIDTH;
			m_prevButton.height = m_nextButton.height = NAVIGATION_BUTTONS_HEIGHT;

			m_playButton.width = PLAY_BUTTON_WIDTH
			m_playButton.height = PLAY_BUTTON_HEIGHT;	
		}

		private function onMuteChanged(e:Event):void
		{
			m_presentationView.soundController.mute = m_volumeControl.mute;
		}

		private function onVolumeChanged(e:Event):void
		{
			m_presentationView.soundController.volume = m_volumeControl.volume;
		}
	
		/**
		 * Updates playback position when user starts seeking using timeline
		 */
		private function onProgressStartSeek(event:Event):void 
		{
			m_playAfterSeek = m_playbackController.currentSlideIndex != uint.MAX_VALUE ?
				m_playbackController.clock.started :
				false;

			seek(false);
		}
		
		/**
		 * Resumes playback position when user stops seeking using timeline
		 */
		private function onProgressStopSeek(e:Event):void 
		{
			seek(m_playAfterSeek);

			// Do not seek on interaction and quiz slides
			if (m_playbackController.currentSlide.type != SlideType.PRESENTATION_SLIDE)
			{
				m_progressBar.progress = 1;
			}
		}

		/**
		 * Progress bar seeking
		 */
		private function onProgressSeek(e:Event):void
		{
			seek(false);
		}

		/**
		 * Update playback position on timeline seek request
		 */
		private function seek(autoStart:Boolean):void
		{
			// Slide seeking is not available when current slide index is undefined
			if (m_playbackController.currentSlideIndex != uint.MAX_VALUE)
			{
				var currentSlide:ISlide = m_playbackController.currentSlide;
				if (currentSlide.type == SlideType.PRESENTATION_SLIDE)
				{
					var presentationSlideView:IPresentationSlideView = m_playbackController.currentSlideView as IPresentationSlideView;
					var slidePlaybackController:ISlidePlaybackController = presentationSlideView.playbackController;

					var position:Number =  m_progressBar.progress * slidePlaybackController.animationSteps.duration;
					if (autoStart)
					{
						slidePlaybackController.playFromPosition(position);
					}
					else
					{
						slidePlaybackController.pauseAtPosition(position);
					}
				}
			}
		}

		/**
		 * Previous Slide button click handler
		 */
		private function onPrevButtonClick(e:Event):void
		{
			if (m_playbackController.currentSlideIndex == uint.MAX_VALUE)
			{
				return;
			}

			m_playbackController.gotoPreviousSlide();
		}

		/**
		 * Next Slide button click handler
		 */		
		private function onNextButtonClick(e:Event):void
		{
			if (m_playbackController.currentSlideIndex == uint.MAX_VALUE)
			{
				return;
			}

			m_playbackController.gotoNextSlide();
		}
		
		/**
		 * Play/Pause control
		 */
		private function onPlayButtonClick(e:MouseEvent):void
		{
			m_playButton.selected = !m_playButton.selected;

			if (m_playbackController.currentSlideIndex == uint.MAX_VALUE)
			{
				return;
			}

			if (m_playButton.selected)
			{
				m_playbackController.pause();
			}
			else
			{
				m_playbackController.play();
			}
		}

		public function resize(w:Number, h:Number):void
		{
			m_bg.width = w;
			m_bg.height = h;

			m_prevButton.y = m_nextButton.y = Math.floor((h - NAVIGATION_BUTTONS_HEIGHT) / 2);
			m_playButton.y = Math.floor((h - PLAY_BUTTON_HEIGHT) / 2);
			m_playButton.x = BUTTONS_HORIZONTAL_OFFSET;

			m_prevButton.x = m_playButton.x + m_playButton.width + BUTTONS_GAP * 2;
			m_nextButton.x = m_prevButton.x + m_prevButton.width + BUTTONS_GAP;

			m_progressBar.x = m_nextButton.x + m_nextButton.width + BUTTONS_GAP * 4;
			m_progressBar.y = Math.floor((h - PROGRESS_BAR_HEIGHT) / 2);

			m_volumeControl.y = m_prevButton.y;
			m_volumeControl.x = w - m_volumeControl.width - BUTTONS_HORIZONTAL_OFFSET;

			var progressBarWidth:Number = m_volumeControl.x - m_progressBar.x - BUTTONS_HORIZONTAL_OFFSET;
			m_progressBar.resize(progressBarWidth, PROGRESS_BAR_HEIGHT);

		}

		/**
		 * Update playback progress indicators
		 */		
		private function updateProgress(e:Event = null):void
		{
			if (m_playbackController.currentSlideIndex != uint.MAX_VALUE)
			{
				var currentSlide:ISlide = m_playbackController.currentSlide;
				if (currentSlide.type == SlideType.PRESENTATION_SLIDE)
				{
					var presentationSlideView:IPresentationSlideView = m_playbackController.currentSlideView as IPresentationSlideView;
					var slidePlaybackController:ISlidePlaybackController = presentationSlideView.playbackController;
					m_progressBar.progress = slidePlaybackController.playbackProgress;

					m_progressBar.timeStatus = "<b>" + timeToString(slidePlaybackController.playbackPosition) + "</b> / " + timeToString(currentSlide.animationSteps.duration);
				}
				else
				{ 
					m_progressBar.progress = 1;
					m_progressBar.timeStatus = "<b>" + timeToString(0) + "</b> / " + timeToString(0);
				}
			}
		}

		/**
		 * Play/Pause icon state update
		 */
		private function onClockStateChanged(e:Event = null):void
		{
			updateNavigationButtons();

			m_playButton.selected =  m_playbackController.clock.started && m_playbackController.playbackState != PresentationPlaybackState.SUSPENDED;
			if (m_playButton.selected)
			{
				m_playButton.setStyle("icon", sampleSkin.iconPause);
			}
			else
			{
				m_playButton.setStyle("icon", sampleSkin.iconPlay);
			}
		}

		/**
		 * Updates current slide indicator
		 */
		private function updateSlideIndicator(e:Event = null):void
		{
			var slideIndexStr:String = "-"

			if (m_playbackController.currentSlideIndex != -1 && m_playbackController.currentSlide.visible)
			{
				slideIndexStr = "" + (m_playbackController.currentSlide.visibleIndex + 1);
			}
			m_progressBar.slidesStatus = "Slide: <b>" + slideIndexStr + "</b> / " + m_slides.visibleSlidesCount;
		}
		
		/**
		 * Updates navigation button state
		 */
		private function updateNavigationButtons():void
		{
			m_prevButton.enabled = m_playbackController.previousSlideIndex != uint.MAX_VALUE;
			m_nextButton.enabled = m_playbackController.nextSlideIndex != uint.MAX_VALUE;
		}

		/**
		 * Converts time in seconds to string in mm:ss format
		 */
		private function timeToString(time:Number):String
		{
			function formatNumber(num:Number):String
			{
				var str:String = num.toString();
				if (str.length == 1)
				{
					str = "0" + str;
				}

				return str;
			}
			var seconds:Number = Math.round(time)
			var minutes:Number = Math.floor(seconds / 60);
			seconds = seconds % 60;

			return formatNumber(minutes) + ":" + formatNumber(seconds);           
		}

		override public function get height():Number
		{
			return m_bg.height;
		}

		override public function get width():Number
		{
			return m_bg.width;
		}
	}
}

import fl.controls.Button;
import fl.controls.Slider;
import fl.events.SliderEvent;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import sampleSkin.IComponentFactory;
import sampleSkin.navigation.NavigationPanel;

class VolumeControl extends Sprite
{
	public static const VOLUME_CHANGED_EVENT:String = "VOLUME_CHANGED_EVENT";
	public static const MUTE_CHANGED_EVENT:String = "MUTE_CHANGED_EVENT";

	private var m_volumeButton:Button;
	private var m_volumeSlider:Slider;

	public function VolumeControl(componentFactory:IComponentFactory)
	{
		m_volumeButton = componentFactory.createButton();
		m_volumeButton.setStyle("icon", sampleSkin.iconVolume);
		m_volumeButton.label = "";
		m_volumeButton.toggle = true;
		addChild(m_volumeButton);

		m_volumeSlider = new Slider();
		m_volumeSlider.maximum = 1;
		m_volumeSlider.minimum = 0;
		m_volumeSlider.snapInterval = 0.05;
		addChild(m_volumeSlider);

		m_volumeButton.addEventListener(MouseEvent.CLICK, onVolumeBtnClick);	
		m_volumeSlider.addEventListener(SliderEvent.CHANGE, onVolumeChange);	
		m_volumeSlider.addEventListener(SliderEvent.THUMB_DRAG, onVolumeChange);	

		m_volumeButton.width = m_volumeButton.height = NavigationPanel.NAVIGATION_BUTTONS_HEIGHT;	
		m_volumeSlider.x = m_volumeButton.x + m_volumeButton.width + NavigationPanel.BUTTONS_GAP;
		m_volumeSlider.y = (m_volumeButton.height - m_volumeSlider.height) / 2;
	}

	private function onVolumeChange(e:SliderEvent):void
	{
		dispatchEvent(new Event(VOLUME_CHANGED_EVENT));
	}

	public function get volume():Number
	{
		return m_volumeSlider.value;
	}

	public function get mute():Boolean
	{
		return m_volumeButton.selected;
	}

	public function set volume(value:Number):void
	{
		m_volumeSlider.value = value;
	}

	public function set mute(value:Boolean):void
	{
		m_volumeButton.selected = value;
	}

	/**
	 * Sound mute state toggled
	 */
	private function onVolumeBtnClick(e:MouseEvent):void
	{
		m_volumeButton.setStyle("icon", m_volumeButton.selected ? sampleSkin.iconNoVolume : sampleSkin.iconVolume);
		m_volumeSlider.enabled = !m_volumeButton.selected;
		dispatchEvent(new Event(MUTE_CHANGED_EVENT));	
	}

	public function resize(w:Number, h:Number):void
	{
		m_volumeSlider.width = w - m_volumeButton.width;
		m_volumeButton.height = h;

		m_volumeSlider.y = (m_volumeButton.height - m_volumeSlider.height) / 2;
	}

	override public function get width():Number
	{
		return m_volumeSlider.x + m_volumeSlider.width;
	}
}
