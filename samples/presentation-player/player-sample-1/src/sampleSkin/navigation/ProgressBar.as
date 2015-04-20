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
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import sampleSkin.ComponentFactory;
	import sampleSkin.IComponentFactory;

	public class ProgressBar extends Sprite
	{
		public static const PROGRESS_SEEK:String = "ProgressSeekEvent";
		public static const START_SEEK:String = "StartSeekEvent";
		public static const STOP_SEEK:String = "StopSeekEvent";

		private var m_componentFactory:IComponentFactory;

		private var m_bg:Sprite;
		private var m_progressBg:Sprite;

		private var m_slidesStatus:TextField;
		private var m_timeStatus:TextField;

		private var m_progress:Number = 0;

		public function ProgressBar(componentFactory:IComponentFactory)
		{
			m_componentFactory = componentFactory;

			m_bg = m_componentFactory.createAsset(ProgressBar_trackSkin);
			m_progressBg = m_componentFactory.createAsset(ProgressBar_barSkin);
			m_progressBg.mouseEnabled = false;
			m_bg.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);

			m_slidesStatus = m_componentFactory.createLabel();
			m_timeStatus = m_componentFactory.createLabel();

			addChild(m_bg);
			addChild(m_progressBg);
			addChild(m_slidesStatus);
			addChild(m_timeStatus);

			m_progressBg.mouseEnabled = m_slidesStatus.mouseEnabled = m_timeStatus.mouseEnabled = false;
		}

		private function onMouseDownHandler(e:MouseEvent):void
		{
			stage.addEventListener(MouseEvent.MOUSE_MOVE, onStageMouseMove);
			stage.addEventListener(MouseEvent.MOUSE_UP, onStageMouseUp);
			invalidateProgress(e);

			dispatchEvent(new Event(START_SEEK));
		}

		private function onStageMouseMove(e:MouseEvent):void
		{
			invalidateProgress(e);

			dispatchEvent(new Event(PROGRESS_SEEK));
		}

		private function onStageMouseUp(e:MouseEvent):void
		{
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, onStageMouseMove);
			stage.removeEventListener(MouseEvent.MOUSE_UP, onStageMouseUp);
			invalidateProgress(e);

			dispatchEvent(new Event(STOP_SEEK));
		}

		private function invalidateProgress(e:MouseEvent):void
		{
			m_progressBg.width = Math.max(0, Math.min( m_bg.width, mouseX));
			m_progress = Math.max(0, Math.min(1, mouseX / m_bg.width));
		}

		public function resize(w:Number, h:Number):void
		{
			m_bg.width = w;
			m_bg.height = h;

			m_progressBg.width = w;
			m_progressBg.height = h;

			updateLabels();
			updateLayout();
		}

		public function set progress(progress:Number):void
		{
			m_progress = progress;
			updateLayout();
		}

		public function get progress():Number
		{
			return m_progress;
		}

		public function set timeStatus(status:String):void
		{
			m_timeStatus.htmlText = status;
			updateLabels();
		}

		public function set slidesStatus(status:String):void
		{
			m_slidesStatus.htmlText = status;
			updateLabels();
		}

		private function updateLayout():void
		{
		   m_progressBg.width = m_bg.width * m_progress;
		   m_progressBg.height = m_bg.height;
		}

		/**
		 * Updates time and slide indicators text format and position
		 */
		private function updateLabels():void
		{
			var tf:TextFormat = new TextFormat(ComponentFactory.FONT_NAME, 16);
			m_timeStatus.setTextFormat(tf);
			m_slidesStatus.setTextFormat(tf);

			m_timeStatus.x = m_bg.width - m_timeStatus.width;
			m_timeStatus.y = m_slidesStatus.y = Math.floor((m_bg.height - m_slidesStatus.height) / 2)
		}
	}
}
