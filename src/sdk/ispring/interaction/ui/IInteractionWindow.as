/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.interaction.ui 
{
import flash.display.DisplayObject;
import flash.events.IEventDispatcher;

	
/**
 * The IInteractionWindow interface represents the interaction player window providing access to the
 * interaction player dimensions and its display object.
 * 
 * <p>The IInteractionWindow interface can be obtained via the <code>window</code>
 * property on the IInteraction interface.
 * </p>
 * 
 * <p>The IInteractionWindow interface extends the
 * <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the IInteractionWindow interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.interaction.IInteraction#window
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * @productversion iSpring&nbsp;Kinetics 6.0.3
 */
public interface IInteractionWindow extends IEventDispatcher
{
	/**
	 * The <code>flash.display.DisplayObject</code> object visualizing the interaction.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/DisplayObject.html flash.display.DisplayObject
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get displayObject():DisplayObject;
	
	/**
	 * The minimal width of the interaction window in pixels.
	 * 
	 * @see #maxWidth
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get minWidth():Number;
	/**
	 * @private
	 */
	function set minWidth(value:Number):void;
		
	/**
	 * The minimal height of the interaction window in pixels.
	 * 
	 * @see #maxHeight
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get minHeight():Number;
	function set minHeight(value:Number):void;
		
	/**
	 * The maximal width of the interaction window in pixels.
	 * 
	 * @see #minWidth
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get maxWidth():Number;
	/**
	 * @private
	 */
	function set maxWidth(value:Number):void;
		
	/**
	 * The maximal height of the interaction window in pixels.
	 * 
	 * @see #minHeight
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get maxHeight():Number;
	/**
	 * @private
	 */
	function set maxHeight(value:Number):void;
		
	/**
	 * The width of the interaction window in pixels.
	 * 
	 * @see #height
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get width():Number;
	/**
	 * @private
	 */
	function set width(value:Number):void;
		
	/**
	 * The height of the interaction window in pixels.
	 * 
	 * @see #width
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get height():Number;
	/**
	 * @private
	 */
	function set height(value:Number):void;
	
	/**
	 * Indicates whether the skin window is maximized.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get maximized():Boolean;
	/**
	 * @private
	 */
	function set maximized(value:Boolean):void;
	
	/**
	 * The X-coordinate of the left side of the interaction window relative to the parent display object origin.
	 * 
	 * @see #top
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get left():Number;
	/**
	 * @private
	 */
	function set left(value:Number):void;
		
	/**
	 * The Y-coordinate of the top side of the interaction window relative to the parent display object origin.
	 * 
	 * @see #left
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get top():Number;
	/**
	 * @private
	 */
	function set top(value:Number):void;
}
	
}