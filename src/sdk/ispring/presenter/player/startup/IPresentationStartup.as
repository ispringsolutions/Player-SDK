/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.startup 
{

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
PresentationStartupAction;

/**
 * The IPresentationStartup interface provides information about
 * the presentation startup behavior.
 * 
 * <p>The IPresentationPlaybackController interface dispatches the 
 * <code>presentationStartup</code> event at the presentation startup
 * providing access to the IPresentationStartup interface.</p>
 * 
 * <p>
 * It is possible to redefine the default behavior of the player by modifying
 * the values of the IPresentationStartup interface properties
 * in the <code>presentationStartup</code> event handler.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.IPresentationPlaybackController#event:presentationStartup
 * @see ispring.presenter.player.events.PresentationStartupEvent
 * @see ispring.presenter.player.startup.PresentationStartupAction
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationStartup 
{
	/**
	 * Defines the action of the player at the presentation startup.
	 * See the <code>ispring.presenter.player.startup.PresentationStartupAction</code> constants for more details.
	 * 
	 * <p>The presentation startup action is not executed if the <code>presentationStartup</code> event
	 * is canceled by calling the <code>preventDefault()</code> method on the PresentationStartupEvent object.
	 * </p>
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#event:presentationStartup
	 * @see ispring.presenter.player.events.PresentationStartupEvent
	 * @see ispring.presenter.player.startup.PresentationStartupAction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get action():String;
	/**
	 * @private
	 */
	function set action(value:String):void;
		
	/**
	 * The slide index used as a startup action parameter.
	 * See the <code>ispring.presenter.player.startup.PresentationStartupAction</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.startup.PresentationStartupAction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideIndex():uint;
	/**
	 * @private
	 */
	function set slideIndex(value:uint):void;
	
	/**
	 * Indicates whether the presentation is started automatically
	 * after executing the specified startup action.
	 * 
	 * @see ispring.presenter.player.startup.PresentationStartupAction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get autoStart():Boolean;
	/**
	 * @private
	 */
	function set autoStart(value:Boolean):void;
}
}