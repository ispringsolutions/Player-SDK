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

import flash.events.Event;

/**
 * The PlayerContainerEvent class represents an event that is dispatched
 * by the associated presentation player container or slide player container.
 * 
 * 
 * @see ispring.presenter.IPresentationPlayerContainer
 * @see ispring.presenter.ISlidePlayerContainer
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PlayerContainerEvent extends Event 
{
	/**
	 * The <code>PlayerContainerEvent.PLAYER_IS_AVAILABLE</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>playerIsAvailable</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code></td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType playerIsAvailable
	 * 
	 * @see ispring.presenter.IPresentationPlayerContainer#event:playerIsAvailable
	 * @see ispring.presenter.ISlidePlayerContainer#event:playerIsAvailable
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PLAYER_IS_AVAILABLE:String = "playerIsAvailable";
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function PlayerContainerEvent(type:String) 
	{ 
		super(type);
	} 
	
	/**
	 * @private
	 */
	public override function clone():Event 
	{ 
		return new PlayerContainerEvent(type);
	} 
	
	/**
	 * @private
	 */
	public override function toString():String 
	{ 
		return formatToString("PlayerContainerEvent", "type", "bubbles", "cancelable", "eventPhase"); 
	}
}
	
}