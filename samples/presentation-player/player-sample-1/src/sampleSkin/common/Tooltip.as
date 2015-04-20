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
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import sampleSkin.ComponentFactory;
	import sampleSkin.IComponentFactory;

	public class Tooltip extends Sprite
	{
		private static const TEXT_GAP:Number = 5;

		private var m_componentFactory:IComponentFactory;

		private var m_bg:Sprite;
		private var m_label:TextField;

		public function Tooltip(componentFactory:IComponentFactory)
		{
			m_componentFactory = componentFactory;

			m_bg = m_componentFactory.createSprite(0xA0D9FF);

			m_label = m_componentFactory.createLabel();
			m_label.wordWrap = true;
			m_label.multiline = true;
 
			addChild(m_bg);
			addChild(m_label);

			hide();
		}

		/**
		 * Shows a tooltip with the specified label and position
		 */
		public function show(label:String, posX:Number, posY:Number):void
		{
			if (visible)
			{
				return;
			}

			x = posX + TEXT_GAP;
			y = posY + TEXT_GAP;

			m_label.width = stage.stageWidth;
			m_label.text = label;
			m_label.setTextFormat(new TextFormat(ComponentFactory.FONT_NAME, 12));

			var labelWidth:Number = m_label.textWidth + TEXT_GAP;
			var deltaWidth:Number = stage.stageWidth - posX;

			m_label.width = m_bg.width = (labelWidth < deltaWidth) ? labelWidth : deltaWidth;
			m_label.height = m_bg.height = m_label.textHeight + TEXT_GAP;

			visible = true;
		}

		/**
		 * Hides the currently shown tooltip
		 */
		public function hide():void
		{
			if (!visible)
			{
				return;
			}

			visible = false;
		}
	}
}
