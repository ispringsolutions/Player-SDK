/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class TitlePanel extends Sprite
	{
		private static const TITLE_OFFSET:Number = 15;

		private var m_bg:Sprite;
		private var m_title:TextField;

		public function TitlePanel(componentFactory:IComponentFactory, title:String)
		{
			m_bg = componentFactory.createSprite(0xAFD4FF);
			addChild(m_bg);

			m_title = componentFactory.createLabel();
			m_title.text = title; 

			var tf:TextFormat = new TextFormat(ComponentFactory.FONT_NAME, 12, 0x0, true);
			m_title.setTextFormat(tf);

			addChild(m_title);
		}

		public function resize(w:Number, h:Number):void
		{
			m_bg.width = w;
			m_bg.height = h;

			m_title.x = TITLE_OFFSET;
			m_title.y = Math.floor((h - m_title.height) / 2);     
		}
	}
}
