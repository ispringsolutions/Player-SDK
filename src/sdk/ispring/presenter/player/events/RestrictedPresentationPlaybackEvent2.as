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
import ispring.presenter.player.restriction.ISlideChangeRestriction;

/**
 * The RestrictedPresentationPlaybackEvent2 class extends the RestrictedPresentationPlaybackEvent and represents
 * an extended version of the event that is dispatched by the restricted version of the presentation playback controller.
 * 
 * <p>The RestrictedPresentationPlaybackEvent2 event has superseded the RestrictedPresentationPlaybackEvent event 
 * since iSpring Pro and Platform 6.1. However, it is recommended to accept the legacy RestrictedPresentationPlaybackEvent class
 * as a parameter of an event handler and use type casting to access the RestrictedPresentationPlaybackEvent2 class properties and methods
 * to maintain compatibility with the presentations created with the earlier versions of iSpring.
 * </p>
 *  
 * @example The following example illustrates handling of the RestrictedPresentationPlaybackEvent2 event keeping compatibility with earlier versions of iSpring.
 * <listing version="3.0">
 * import ispring.presenter.player.IPresentationPlaybackController;
 * import ispring.presenter.player.events.RestrictedPresentationPlaybackEvent;
 * import ispring.presenter.player.events.RestrictedPresentationPlaybackEvent2;
 * import ispring.presenter.player.restriction.ISlideChangeRestriction;
 * 
 * ...
 * var playbackController:IPresentationPlaybackController;
 * ... 
 * 
 * // The RestrictedPresentationPlaybackEvent2.SLIDE_CHANGE_NOT_ALLOWED and 
 * // the RestrictedPresentationPlaybackEvent.SLIDE_CHANGE_NOT_ALLOWED
 * // have the same value, so we can use any of them to add an event listener.
 * playbackController.addEventListener(RestrictedPresentationPlaybackEvent2.SLIDE_CHANGE_NOT_ALLOWED, 
 *     onSlideChangeNotAllowed);
 * 
 * // The event handler takes the RestrictedPresentationPlaybackEvent object as a parameter
 * // to keep compatibility with the presentations created with iSpring 6.0.x.
 * function onSlideChangeNotAllowed(event:RestrictedPresentationPlaybackEvent):void
 * {
 *     // Check whether the event is a RestrictedPresentationPlaybackEvent2 event
 *     var event2:RestrictedPresentationPlaybackEvent2 = event as RestrictedPresentationPlaybackEvent2;
 * 
 *     if (event2 != null)
 *     {
 *         // The extended information about the presentation restriction event is available
 *         var restriction:ISlideChangeRestriction = event2.restriction;
 * 
 *         // Do something with the slide restriction information
 *         ...
 *     }
 *     else
 *     {
 *         // Extended information about the event is not available because
 *         // the presentation was created with an earlier version of iSpring Pro or iSpring Platform
 *     }
 * }
 * </listing>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.events.RestrictedPresentationPlaybackEvent
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public class RestrictedPresentationPlaybackEvent2 extends RestrictedPresentationPlaybackEvent
{
	/**
	 * The <code>RestrictedPresentationPlaybackEvent2.SLIDE_CHANGE_NOT_ALLOWED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>slideChangeNotAllowed</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>restriction</code></td>	<td>The ISlideChangeRestriction interface providing information about the slide change restriction reason.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType slideChangeNotAllowed
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#event:slideChangeNotAllowed
	 * @see ispring.presenter.player.restriction.ISlideChangeRestriction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const SLIDE_CHANGE_NOT_ALLOWED:String = RestrictedPresentationPlaybackEvent.SLIDE_CHANGE_NOT_ALLOWED;
	
	private var m_restriction:ISlideChangeRestriction;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param restriction The ISlideChangeRestriction interface providing information about the slide change restriction reason.
	 * @param bubbles Determines whether the PresentationPlaybackEvent object participates in the bubbling stage of the event flow. The default value is <code>false</code>.
	 * @param cancelable  Determines whether the PresentationPlaybackEvent object can be canceled. The default value is <code>false</code>.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public function RestrictedPresentationPlaybackEvent2(type:String, restriction:ISlideChangeRestriction, bubbles:Boolean = false, cancelable:Boolean = false)
	{
		super(type, bubbles, cancelable);

		m_restriction = restriction;
	}
	
	/**
	 * The slide change restriction information.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public function get restriction():ISlideChangeRestriction
	{
		return m_restriction;
	}
	
	/**
	 * @private
	 */
	public override function clone():Event
	{
		return new RestrictedPresentationPlaybackEvent2(type, restriction, bubbles, cancelable);
	}

	/**
	 * @private
	 */
	public override function toString():String
	{
		return formatToString("RestrictedPresentationPlaybackEvent2", "type", "bubbles", "cancelable", "eventPhase", "restriction");
	}
}

}