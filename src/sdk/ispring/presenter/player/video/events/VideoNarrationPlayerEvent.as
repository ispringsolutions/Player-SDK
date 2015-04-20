/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.video.events 
{
import flash.events.Event;
	
/**
 * The VideoNarrationPlayerEvent event is dispatched by the video narration player.
 * 
 * @see ispring.presenter.player.video.IVideoNarrationPlayer
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class VideoNarrationPlayerEvent extends Event
{
	/**
	 * The <code>VideoNarrationPlayerEvent.CURRENT_TRACK_CHANGED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>currentTrackChanged</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType currentTrackChanged
	 * 
	 * @see ispring.presenter.player.video.IVideoNarrationPlayer#event:currentTrackChanged
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const CURRENT_TRACK_CHANGED:String = "currentTrackChanged";
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param bubbles Determines whether the PresentationPlaybackEvent object participates in the bubbling stage of the event flow. The default value is <code>false</code>.
	 * @param cancelable  Determines whether the PresentationPlaybackEvent object can be canceled. The default value is <code>false</code>.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function VideoNarrationPlayerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
	{
		super(type, bubbles, cancelable);
	}
	
	/**
	 * @private
	 */
	public override function clone():Event
	{
		return new VideoNarrationPlayerEvent(type, bubbles, cancelable);
	}
	
	/**
	 * @private
	 */
	public override function toString():String
	{
		return formatToString("VideoNarrationPlayerEvent", "type", "bubbles", "cancelable", "eventPhase");
	}
}
}