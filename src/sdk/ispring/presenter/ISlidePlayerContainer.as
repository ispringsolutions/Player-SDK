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
 * Dispatched when the standalone slide player is loaded.
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
 * The ISlidePlayerContainer interface is implemented 
 * by the document class of iSpring generated ActionScript 3 standalone slides.
 * It provides access to the ISlidePlayer interface of the
 * loaded slide.
 *
 * <p>Due to progressive downloading of SWF files the slide player may
 * require some time to load. To determine whether the player is available the 
 * <code>playerIsAvailable</code> property is used.</p>
 *
 * <p>As soon as the slide player is loaded, the standalone player container 
 * dispatches the <code>PlayerContainerEvent.PLAYER_IS_AVAILABLE</code> event indicating
 * that the presentation player is accessible via the <code>player</code> property.
 * </p>
 * 
 * @see ispring.presenter.ISlidePlayer
 * @see ispring.presenter.PlayerContainerEvent
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlidePlayerContainer extends IEventDispatcher
{
	/**
	 * Indicates whether the slide player is loaded and available.
	 * 
	 * <p>If this property is set to true the <code>player</code> the <code>player</code>
	 * property can be used to access the presentation player.
	 * </p>
	 * 
	 * @see #player
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playerIsAvailable():Boolean;

	/**
	 * The ISlidePlayer interface of the presentation player or 
	 * <code>null</code> if the player has not been loaded yet.
	 * 
	 * <p>The <code>PlayerContainerEvent.PLAYER_IS_AVAILABLE</code> event is dispatched to notify the listeners
	 * that the player is accessible via the <code>player</code> property.
	 * </p>
	 * 
	 * @see #playerIsAvailable
	 * @see ispring.presenter.PlayerContainerEvent
	 * @see ispring.presenter.ISlidePlayer
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get player():ISlidePlayer;
}
	
}