/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.skin
{
	
import flash.events.IEventDispatcher;
import ispring.presenter.player.skin.ui.ISkinWindow;

/**
 * Dispatched when the skin is about to close the player window.
 * 
 * @eventType ispring.presenter.player.skin.SkinEvent.CLOSE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="close", type="ispring.presenter.player.skin.SkinEvent")]

/**
 * The ISkin interface represents a user interface of the presentation player
 * providing access to the skin window.
 * 
 * <p>The ISkin interface can be obtained using the <code>skin</code>
 * property on the IPresentationPlayer interface.</p>
 * 
 * @eventType ispring.presenter.player.skin.SkinEvent
 * 
 * @see ispring.presenter.IPresentationPlayer
 * @see ispring.presenter.player.skin.ui.ISkinWindow
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISkin extends IEventDispatcher
{
	/**
	 * The main window of the skin.
	 * 
	 * @see ispring.presenter.player.skin.ui.ISkinWindow
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get window():ISkinWindow;	
}
	
}