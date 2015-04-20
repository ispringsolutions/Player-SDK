/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.utils.assets
{

import flash.display.DisplayObject;

/**
 * The IGraphicAsset interface represents a graphic asset such as a Bitmap, a MovieClip, a Sprite, or a Shape.
 * 
 * @see ispring.utils.assets.IAsset
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IGraphicAsset extends IAsset
{
	/**
	 * The graphic asset width, in pixels.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset is not ready.
	 * 
	 * @see #height
	 * @see ispring.utils.assets.IAsset#isReady
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get width():Number;

	/**
	 * The graphic asset height, in pixels.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset is not ready.
	 * 
	 * @see #width
	 * @see ispring.utils.assets.IAsset#isReady
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get height():Number;
	
	/**
	 * Creates a new instance of the graphic asset.
	 * 
	 * @return An instance of the graphic asset.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset is not ready.
	 * 
	 * @see ispring.utils.assets.IAsset#isReady
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createInstance():DisplayObject;
}
	
}
