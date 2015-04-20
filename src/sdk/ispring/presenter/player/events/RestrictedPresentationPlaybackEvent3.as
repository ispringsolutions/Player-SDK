/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.events
{

import flash.events.Event;
import ispring.presenter.player.restriction.ISlideChangeRestriction2;


/**
 * The RestrictedPresentationPlaybackEvent3 class extends represents
 * an extended version of the event that is dispatched by the restricted
 * version of the presentation playback controller.
 * 
 * <p>The RestrictedPresentationPlaybackEvent3 event has superseded the RestrictedPresentationPlaybackEvent2 event 
 * since iSpring Pro and Platform 6.2.1.
 * </p>
 *  
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.events.RestrictedPresentationPlaybackEvent2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public class RestrictedPresentationPlaybackEvent3 extends Event
{
	/**
	 * The <code>RestrictedPresentationPlaybackEvent3.SLIDE_CHANGE_NOT_ALLOWED_3</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>slideChangeNotAllowed_3</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>restriction</code></td>	<td>The ISlideChangeRestriction2 interface providing information about the slide change restriction reason.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType slideChangeNotAllowed_3
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#event:slideChangeNotAllowed
	 * @see ispring.presenter.player.restriction.ISlideChangeRestriction2
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const SLIDE_CHANGE_NOT_ALLOWED_3:String = "slideChangeNotAllowed_3";

	private var m_restriction:ISlideChangeRestriction2;

	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param restriction The ISlideChangeRestriction2 interface providing information about the slide change restriction reason.
	 * @param bubbles Determines whether the PresentationPlaybackEvent object participates in the bubbling stage of the event flow. The default value is <code>false</code>.
	 * @param cancelable  Determines whether the PresentationPlaybackEvent object can be canceled. The default value is <code>false</code>.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public function RestrictedPresentationPlaybackEvent3(type:String, restriction:ISlideChangeRestriction2, bubbles:Boolean = false, cancelable:Boolean = false)
	{
		super(type, bubbles, cancelable);

		m_restriction = restriction;
	}

	/**
	 * The slide change restriction information.
	 * 
	 * @see ispring.presenter.player.restriction.ISlideChangeRestriction2
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public function get restriction():ISlideChangeRestriction2
	{
		return m_restriction;
	}

	/**
	 * @private
	 */
	public override function clone():Event
	{
		return new RestrictedPresentationPlaybackEvent(type, bubbles, cancelable);
	}

	/**
	 * @private
	 */
	public override function toString():String
	{
		return formatToString("RestrictedPresentationPlaybackEvent3", "type", "bubbles", "cancelable", "eventPhase", "restriction");
	}
}

}
