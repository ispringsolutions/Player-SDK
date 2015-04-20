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
	import fl.controls.TileList;
	import flash.display.Sprite;
	import flash.text.TextField;

	public interface IComponentFactory
	{
		function createAsset(asset:Class):Sprite;
		function createSprite(color:uint):Sprite;
		function createLabel():TextField;
		function createButton():Button;
		function createList():TileList;
	}
}
