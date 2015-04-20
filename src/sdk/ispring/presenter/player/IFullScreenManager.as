/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player 
{
import flash.events.IEventDispatcher;
	
/**
 * Dispatched whenever the stage leaves or enters full screen display mode.
 * 
 * @eventType flash.events.FullScreenEvent.FULL_SCREEN
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="fullScreen", type="flash.events.FullScreenEvent")]

/**
 * The IFullScreenManager interface allows entering and leaving full-screen display mode.
 * 
 * <p>To obtain the IFullScreenManager interface use the <code>fullScreenManager</code> property
 * on the IPresentationView interface.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationView
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IFullScreenManager extends IEventDispatcher
{
	/**
	 * Indicates whether Adobe Flash Player is running in full screen mode.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get fullScreen():Boolean;

	/**
	 * @private
	 */
	function set fullScreen(value:Boolean):void;
}
}