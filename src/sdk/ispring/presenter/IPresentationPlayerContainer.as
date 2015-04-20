/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter 
{

import flash.events.IEventDispatcher;

/**
 * Dispatched when the presentation player is loaded.
 * 
 * @eventType ispring.presenter.PlayerContainerEvent.PLAYER_IS_AVAILABLE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="playerIsAvailable", type="ispring.presenter.PlayerContainerEvent")]

/**
 * The IPresentationPlayerContainer interface is implemented 
 * by the document class of iSpring generated ActionScript 3 presentations.
 * It provides access to the IPresentationPlayer interface of the
 * loaded presentation.
 *
 * <p>Due to progressive downloading of SWF files the presentation player may
 * require some time to load. To determine whether the player is available the 
 * <code>playerIsAvailable</code> property should be used.</p>
 *
 * <p>As soon as the presentation player is loaded, the presentation player container 
 * dispatches the <code>PlayerContainerEvent.PLAYER_IS_AVAILABLE</code> event indicating
 * that the presentation player is accessible via the <code>player</code> property.
 * </p>
 * 
 * @eventType ispring.presenter.PlayerContainerEvent
 * @see ispring.presenter.IPresentationPlayer
 * @see ispring.presenter.PlayerContainerEvent
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationPlayerContainer extends IEventDispatcher
{
	/**
	 * Indicates whether the presentation player is loaded and available.
	 * 
	 * <p>If this property is set to true the <code>player</code> the <code>player</code>
	 * property can be used to access the presentation player.
	 * </p>
	 * 
	 * @see #player
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playerIsAvailable():Boolean;

	/**
	 * The IPresentationPlayer interface of the presentation player or 
	 * <code>null</code> if the player has not been loaded yet.
	 * 
	 * <p>The <code>PlayerContainerEvent.PLAYER_IS_AVAILABLE</code> event is dispatched to notify the listeners
	 * that the player is accessible via the <code>player</code> property.
	 * </p>
	 * @see #playerIsAvailable
	 * @see ispring.presenter.PlayerContainerEvent
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get player():IPresentationPlayer;
}
	
}