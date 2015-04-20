/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.slides
{

import flash.events.Event;


/**
 * The SlidePlaybackEvent class represents an event which is
 * dispatched by the object implementing the ISlidePlaybackController
 * interface.
 * 
 * @see ispring.presenter.player.slides.ISlidePlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.2
 */
public class SlidePlaybackEvent extends Event
{
	/**
	 * The <code>SlidePlaybackEvent.STEP_CHANGE</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>stepChange</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType stepChange
	 * 
	 * @see ispring.presenter.player.slides.ISlidePlaybackController#event:stepChange
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2
	 */
	public static const STEP_CHANGE:String = "stepChange";

	/**
	 * The <code>SlidePlaybackEvent.POSITION_CHANGE</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>positionChange</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType positionChange
	 * 
	 * @see ispring.presenter.player.slides.ISlidePlaybackController#event:positionChange
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2
	 */
	public static const POSITION_CHANGE:String = "positionChange";

	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2
	 */
	public function SlidePlaybackEvent(type:String)
	{
		super(type)
	}

	/**
	 * @private
	 */
	override public function clone():Event
	{
		return new SlidePlaybackEvent(type);
	}

	/**
	 * @private
	 */
	override public function toString():String
	{
		return formatToString("SlidePlaybackControllerEvent", "type");
	}
}

}
