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
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.net.URLRequest;
import flash.system.ApplicationDomain;
import flash.system.LoaderContext;
import flash.text.TextField;
import flash.text.TextFormat;
import ispring.presenter.ISlidePlayer;
import ispring.presenter.ISlidePlayerContainer;
import ispring.presenter.player.slides.ISlidePlaybackController;
import ispring.presenter.player.slides.SlidePlaybackEvent;
import ispring.presenter.PlayerContainerEvent;

public class StandaloneSlidesPlayer extends Sprite
{
	private static const SLIDE_PATH:String = "presentation/slide1.swf";
	
	private static const LEFT_MARGIN:Number = 20;
	private static const RIGHT_MARGIN:Number = 20;
	private static const TOP_MARGIN:Number = 20;
	private static const BOTTOM_MARGIN:Number = 15;
	private static const PANEL_SPACING:Number = 5;
	private static const PANEL_HEIGHT:Number = 25;

	public static const STATE_PLAYING:String = "play";
	public static const STATE_PAUSED:String = "pause";
	
	private var m_player:ISlidePlayer = null;
	private var m_currentState:String;
	
	private var m_slideContainer:SlideBg;
	private var m_btnPlay:Button;
	private var m_btnNext:Button;
	private var m_btnPrev:Button;
	private var m_lblStep:TextField;
	private var m_slSteps:Slider;
	
	public function StandaloneSlidesPlayer() 
	{
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
		stage.addEventListener(Event.RESIZE, onStageResize, false, 0, true);
		
		initUI();

		loadSlide();
	}
	
	private function onStageResize(e:Event):void
	{
		invalidateUI();
	}
	
	private function initUI():void
	{
		m_slideContainer = new SlideBg();
		m_slideContainer.x = LEFT_MARGIN;
		m_slideContainer.y = TOP_MARGIN;
		addChild(m_slideContainer);

		m_btnPlay = new Button();
		m_btnPlay.x = LEFT_MARGIN;
		m_btnPlay.height = PANEL_HEIGHT;
		m_btnPlay.label = "Play";
		m_btnPlay.addEventListener(MouseEvent.CLICK, onPlayClick);
		addChild(m_btnPlay);

		m_btnPrev = new Button();
		m_btnPrev.x = m_btnPlay.x + m_btnPlay.width + PANEL_SPACING;
		m_btnPrev.height = PANEL_HEIGHT;
		m_btnPrev.label = "Previous Step";
		m_btnPrev.addEventListener(MouseEvent.CLICK, onPrevStepClick);
		addChild(m_btnPrev);

		m_btnNext = new Button();
		m_btnNext.x = m_btnPrev.x + m_btnPrev.width + PANEL_SPACING;
		m_btnNext.height = PANEL_HEIGHT;
		m_btnNext.label = "Next Step";
		m_btnNext.addEventListener(MouseEvent.CLICK, onNextStepClick);
		addChild(m_btnNext);

		var labelTextFormat:TextFormat = new TextFormat();
		labelTextFormat.font = "Arial";
		labelTextFormat.size = 16;

		m_lblStep = new TextField();
		m_lblStep.x = m_btnNext.x + m_btnNext.width + PANEL_SPACING;
		m_lblStep.width = 50;
		m_lblStep.height = PANEL_HEIGHT;
		m_lblStep.selectable = false;
		m_lblStep.defaultTextFormat = labelTextFormat;
		addChild(m_lblStep);

		m_slSteps = new Slider();
		m_slSteps.x = m_lblStep.x + m_lblStep.width + PANEL_SPACING;
		m_slSteps.width = 200;
		m_slSteps.tickInterval = 1000;
		m_slSteps.liveDragging = true;
		m_slSteps.addEventListener(SliderEvent.CHANGE, onSliderChange);
		addChild(m_slSteps);
	}

	private function onPlayClick(e:MouseEvent):void
	{
		if(m_player == null)
		{
			return;
		}

		switch (m_currentState)
		{
		case STATE_PLAYING:
			m_player.view.playbackController.pause();
			m_currentState = STATE_PAUSED;
			m_btnPlay.label = "Play";
			break;
		case STATE_PAUSED:
			m_player.view.playbackController.play();
			m_currentState = STATE_PLAYING;
			m_btnPlay.label = "Pause";
			break;
		default:
			break;
		}
	}

	private function onSliderChange(e:SliderEvent):void
	{
		m_player.view.playbackController.playFromPosition(m_slSteps.value / 1000);
		m_player.view.playbackController.pause();
		m_currentState = STATE_PAUSED;
		m_btnPlay.label = "Play";
	}

	private function onNextStepClick(e:MouseEvent):void
	{
		m_player.view.playbackController.gotoNextStep();
	}

	private function onPrevStepClick(e:MouseEvent):void
	{
		m_player.view.playbackController.gotoPreviousStep(); 
	}
	
	private function invalidateUI():void
	{
		m_slideContainer.width = stage.stageWidth - LEFT_MARGIN - RIGHT_MARGIN;
		m_slideContainer.height = stage.stageHeight - TOP_MARGIN - BOTTOM_MARGIN - PANEL_HEIGHT;

		m_btnPlay.y = m_slideContainer.y + m_slideContainer.height;
		m_btnPrev.y = m_btnPlay.y;
		m_btnNext.y = m_btnPlay.y;
		m_lblStep.y = m_btnPlay.y;
		m_slSteps.y = m_btnPlay.y + m_slSteps.height * 3;

		var slide:DisplayObject = m_slideContainer.getChildByName("slide");

		if(slide == null)
		{
			return;
		}

		var slideWidth:Number = m_player.slide.width;
		var slideHeight:Number = m_player.slide.height;
		var ratio:Number = slideWidth / slideHeight;
		var dstRatio:Number = m_slideContainer.width / m_slideContainer.height;

		var extraSpace:Number;
		if((dstRatio > 1)&&(dstRatio > ratio))
		{
			if(ratio > 1)
			{
				slide.height = m_slideContainer.height;
				slide.width = slide.height * ratio;
				extraSpace = m_slideContainer.width - slide.width;
				slide.x = extraSpace / 2;
				slide.y = 0;               
			}
			else
			{
				slide.width = m_slideContainer.width;
				slide.height = slide.width / ratio;
				extraSpace = m_slideContainer.height - slide.height;
				slide.x = 0;    
				slide.y = extraSpace / 2;                
			}
		}
		else
		{
			if(ratio > 1)
			{
				slide.width = m_slideContainer.width;
				slide.height = slide.width / ratio;
				extraSpace = m_slideContainer.height - slide.height;
				slide.x = 0;
				slide.y = extraSpace / 2;   
			}
			else
			{
				slide.height = m_slideContainer.height;
				slide.width = slide.height * ratio;
				extraSpace = m_slideContainer.width - slide.width;
				slide.x = extraSpace / 2; 
				slide.y = 0;
			}         
		}
	}
	
	public function loadSlide():void
	{
		var loader:Loader = new Loader();
		var context:LoaderContext = new LoaderContext(false, new ApplicationDomain(ApplicationDomain.currentDomain));
		loader.contentLoaderInfo.addEventListener(Event.INIT, onInit);
		
		loader.load(new URLRequest(SLIDE_PATH), context);
	}

	private var m_playbackController:ISlidePlaybackController;

	private function onInit(e:Event):void
	{
		var container:ISlidePlayerContainer = e.target.content as ISlidePlayerContainer;

		if(container.playerIsAvailable)
		{
			initPlayer();
		}
		else
		{
			container.addEventListener(PlayerContainerEvent.PLAYER_IS_AVAILABLE, onPlayerAvailable)
		}

		function onPlayerAvailable(e:PlayerContainerEvent):void
		{
			container.removeEventListener(PlayerContainerEvent.PLAYER_IS_AVAILABLE, onPlayerAvailable);
			initPlayer();
		}

		function initPlayer():void
		{
			m_player = container.player;
			
			m_playbackController = m_player.view.playbackController;
			m_playbackController.addEventListener(SlidePlaybackEvent.POSITION_CHANGE, onPositionChange);
			m_playbackController.addEventListener(SlidePlaybackEvent.STEP_CHANGE, onStepChange);
			var slide:DisplayObject = m_slideContainer.addChild(m_player.view.displayObject);
			slide.name = "slide";
			m_currentState = STATE_PLAYING;
			m_btnPlay.label = "Pause";
			m_slSteps.minimum = 0;
			m_slSteps.maximum = m_player.slide.duration * 1000;
			invalidateUI();
			updatePositionIndicator();
			updateStepIndicator();
		}
	}

	private function onPositionChange(e:SlidePlaybackEvent):void
	{
		updatePositionIndicator();
	}

	private function onStepChange(e:SlidePlaybackEvent):void
	{
		updateStepIndicator();
	}

	private function updatePositionIndicator():void
	{
		m_slSteps.value = m_playbackController.playbackPosition * 1000;
	}

	private function updateStepIndicator():void
	{
		m_lblStep.text = (m_playbackController.currentStepIndex + 1).toString() + "/" + m_playbackController.animationSteps.count.toString();
	}
}

}

import flash.display.Sprite;

class SlideBg extends Sprite
{
	private var m_width:Number;
	private var m_height:Number;

	public function SlideBg()
	{
		super();
	}

	public override function get width():Number
	{
		return m_width;
	}

	public override function get height():Number
	{
		return m_height;
	}

	public override function set width(value:Number):void
	{
		m_width = value;
	}

	public override function set height(value:Number):void
	{
		m_height = value;
	}

}