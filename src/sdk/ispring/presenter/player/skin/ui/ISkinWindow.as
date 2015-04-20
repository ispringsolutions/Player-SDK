/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.skin.ui 
{
import flash.display.DisplayObject;
import flash.events.IEventDispatcher;
	
/**
 * The ISkinWindow interface represents the player window providing access to the
 * presentation player dimensions and its display object.
 * 
 * <p>The ISkinWindow interface can be obtained via the <code>window</code>
 * property on the ISkin interface.
 * </p>
 * 
 * <p>The ISkinWindow interface extends the <code>flash.events.IEventDispatcher</code>
 * interface. The current implementation of the ISkinWindow interface does not displatch 
 * any event. This functionality is reserved for future versions.</p>
 * 
 * @see ispring.presenter.player.skin.ISkin#window
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISkinWindow extends IEventDispatcher
{
	/**
	 * The <code>flash.display.DisplayObject</code> object visualizing the presentation content.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/DisplayObject.html flash.display.DisplayObject
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get displayObject():DisplayObject;
	
	/**
	 * Resizes the player window.
	 * 
	 * @param width A new width of the skin window in pixels.
	 * @param height A new height if the skin window in pixels.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the skin window is maximized (the <code>maximized</code> property is <code>true</code>).
	 * 
	 * @see #width
	 * @see #height
	 * @see #maximized
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function resize(width:Number, height:Number):void;
	
	/**
	 * The skin window height in pixels.
	 * 
	 * @see #resize()
	 * @see #height
	 * @see #maximized
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get width():Number;
	/**
	 * @private
	 */
	function set width(value:Number):void;
	
	/**
	 * The skin window height in pixels.
	 * 
	 * @see #width
	 * @see #resize()
	 * @see #maximized
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get height():Number;
	/**
	 * @private
	 */
	function set height(value:Number):void;
		
	/**
	 * The minimal width of the skin window in pixels.
	 * 
	 * @see #maxWidth
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get minWidth():Number;
	/**
	 * @private
	 */
	function set minWidth(value:Number):void;
		
	/**
	 * The minimal height of the skin window in pixels.
	 * 
	 * @see #maxHeight
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get minHeight():Number;
	/**
	 * @private
	 */
	function set minHeight(value:Number):void;
		
	/**
	 * The maximal width of the skin window in pixels.
	 * 
	 * @see #minWidth
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get maxWidth():Number;
	/**
	 * @private
	 */
	function set maxWidth(value:Number):void;
		
	/**
	 * The maximal height of the skin window in pixels.
	 * 
	 * @see #minHeight
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get maxHeight():Number;
	/**
	 * @private
	 */
	function set maxHeight(value:Number):void;
		
	/**
	 * Indicates whether the skin window is maximized.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get maximized():Boolean;
	/**
	 * @private
	 */
	function set maximized(value:Boolean):void;
}
}