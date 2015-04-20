/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin.common
{
	import flash.display.DisplayObject;
	import flash.display.Stage;
	import flash.errors.IllegalOperationError;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import ispring.presenter.player.skin.ui.ISkinWindow;

	public class SkinWindow extends EventDispatcher implements ISkinWindow
	{
		private var m_displayObject:DisplayObject;
		
		private var m_maximized:Boolean = false;
		private var m_minWidth:Number = 0;
		private var m_minHeight:Number = 0;
		private var m_maxWidth:Number = Number.MAX_VALUE;
		private var m_maxHeight:Number = Number.MAX_VALUE;
		
		public function SkinWindow(displayObject:DisplayObject)
		{
			if (displayObject == null)
			{
				throw new ArgumentError("displayObject must not be null");
			}
			
			m_displayObject = displayObject;
			m_displayObject.addEventListener(Event.ADDED_TO_STAGE, onDisplayObjectAddedToStage);
			m_displayObject.addEventListener(Event.REMOVED_FROM_STAGE, onDisplayObjectRemovedFromStage);
		}
		
		public function get displayObject():DisplayObject 
		{
			return m_displayObject;
		}
		
		public function get width():Number
		{
			return m_displayObject.width;
		}
		
		public function set width(value:Number):void
		{
			resize(value, height);
		}
		
		public function get height():Number
		{
			return m_displayObject.height;
		}
		
		public function set height(value:Number):void
		{
			resize(width, value);
		}
		
		public function resize(width:Number, height:Number):void
		{
			if (m_maximized)
			{
				throw new IllegalOperationError("can't resize skin in maximized mode");
			}
			
			updateDisplayObjectDimensitons(
				Math.max(m_minWidth, Math.min(m_maxWidth, width)),
				Math.max(m_minHeight, Math.min(m_maxHeight, height))
			);
		}
		
		private function updateDisplayObjectDimensitons(width:Number, height:Number):void
		{
			m_displayObject.width = width;
			m_displayObject.height = height;
		}
		
		public function get minWidth():Number
		{
			return m_minWidth;
		}
		
		public function set minWidth(value:Number):void
		{
			if (isNaN(value))
			{
				throw new RangeError("minWidth can't be NaN");
			}
			
			if (m_minWidth == value)
				return;
			
			m_minWidth = value;
			
			if (!m_maximized)
			{
				resize(width, height);
			}
		}
		
		public function get minHeight():Number
		{
			return m_minHeight;
		}
		
		public function set minHeight(value:Number):void
		{
			if (isNaN(value))
			{
				throw new RangeError("minHeight can't be NaN");
			}
			
			if (m_minHeight == value)
				return;
			
			m_minHeight = value;
			
			if (!m_maximized)
			{
				resize(width, height);
			}
		}
		
		public function get maxWidth():Number
		{
			return m_maxWidth;
		}
		
		public function set maxWidth(value:Number):void
		{
			if (isNaN(value))
			{
				throw new RangeError("maxWidth can't be NaN");
			}
			
			if (m_maxWidth == value)
				return;
			
			m_maxWidth = value;
			
			if (!m_maximized)
			{
				resize(width, height);
			}
		}
		
		public function get maxHeight():Number
		{
			return m_maxHeight;
		}
		
		public function set maxHeight(value:Number):void
		{
			if (isNaN(value))
			{
				throw new RangeError("maxHeight can't be NaN");
			}
			
			if (m_maxHeight == value)
				return;
			
			m_maxHeight = value;
			
			if (!m_maximized)
			{
				resize(width, height);
			}
		}
		
		public function get maximized():Boolean
		{
			return m_maximized;
		}
		
		public function set maximized(value:Boolean):void
		{
			if (m_maximized == value)
				return;
			
			m_maximized = value;
			
			if (m_maximized)
			{
				if (m_displayObject.stage != null)
				{
					onStageResized();
				}
			}
			else
			{
				resize(width, height);
			}
		}
		
		private function onDisplayObjectAddedToStage(e:Event):void
		{
			if (e.target == e.currentTarget)
			{
				try
				{
					m_displayObject.stage.addEventListener(Event.RESIZE, onStageResized, false, 0, true);
					onStageResized();	
				}
				catch (e:SecurityError)
				{					
				}
			}
		}
		
		private function onDisplayObjectRemovedFromStage(e:Event):void
		{
			if (e.target == e.currentTarget)
			{
				try
				{
					m_displayObject.stage.removeEventListener(Event.RESIZE, onStageResized);
				}
				catch (e:SecurityError)
				{					
				}
			}
		}
		
		private function onStageResized(e:Event = null):void
		{
			if (m_maximized)
			{
				try
				{
					var stage:Stage = m_displayObject.stage;
					updateDisplayObjectDimensitons(stage.stageWidth, stage.stageHeight);
				}
				catch (e:SecurityError)
				{					
				}
			}
		}
	}
}