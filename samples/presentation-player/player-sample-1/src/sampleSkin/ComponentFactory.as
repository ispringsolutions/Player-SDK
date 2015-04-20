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
	import fl.controls.Button;
	import fl.controls.ScrollBarDirection;
	import fl.controls.TileList;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import sampleSkin.sidePanel.SlideListItemRenderer;

	public class ComponentFactory implements IComponentFactory
	{
		public static const FONT_NAME:String = "sampleSkin.Font1";
		
		public function ComponentFactory()
		{
		}

		public function createSprite(color:uint):Sprite
		{
			var spr:Sprite = new Sprite();
			spr.graphics.beginFill(color);
			spr.graphics.drawRect(0, 0, 55, 55);
			spr.graphics.endFill();

			return spr;
		}

		public function createAsset(asset:Class):Sprite
		{
			return new asset;
		}

		public function createLabel():TextField
		{
			var label:TextField = new TextField();
			label.embedFonts = true;
			label.selectable = false;
			label.autoSize = TextFieldAutoSize.LEFT;

			return label;
		}

		public function createButton():Button
		{
			var button:Button = new Button();
			button.textField.embedFonts = true;

			return button;
		}

		public function createList():TileList
		{
			var list:TileList = new TileList();
			list.direction  = ScrollBarDirection.VERTICAL;
			list.columnWidth = 280;
			list.rowHeight = 90;
			list.columnCount = 1;
			list.setStyle('cellRenderer', SlideListItemRenderer);
			
			return list;
		}
	}
}
