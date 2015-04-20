/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.media
{

import flash.events.Event;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
PlaybackState;

/**
 * The MediaPlaybackEvent2 event is an extended version of the MediaPlaybackEvent.
 * 
 * <p>The MediaPlaybackEvent2 event has superseded the MediaPlaybackEvent event 
 * since iSpring Pro and Platform 6.1. However, it is recommended to accept the legacy MediaPlaybackEvent class
 * as a parameter of an event handler and use type casting to access the MediaPlaybackEvent2 class properties and methods
 * to maintain compatibility with the presentations created with the earlier versions of iSpring.
 * </p>
 * 
 * @see ispring.presenter.player.media.MediaPlaybackEvent
 * @see ispring.presenter.player.media.IMediaPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public class MediaPlaybackEvent2 extends MediaPlaybackEvent
{
	/**
	 * The <code>MediaPlaybackEvent2.PLAYBACK_STATE_CHANGED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>mediaPlaybackStateChanged</code> event. The value of this constant
	 * is equal to the value of the <code>MediaPlaybackEvent.PLAYBACK_STATE_CHANGED</code> constant.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>						<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>			<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>		<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>		<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>oldPlaybackState</code></td>	<td>The old playback state. See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.</td></tr>
	 *	<tr><td><code>playbackState</code></td>		<td>The new playback state. See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.</td></tr>
	 *	<tr><td><code>target</code></td>			<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType mediaPlaybackStateChanged
	 * 
	 * @see ispring.presenter.player.media.IMediaPlaybackController#event:mediaPlaybackStateChanged
	 * @see ispring.presenter.player.media.PlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const PLAYBACK_STATE_CHANGED:String = MediaPlaybackEvent.PLAYBACK_STATE_CHANGED;
	
	private var m_oldPlaybackState:String;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param playbackState The new playback state. See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.
	 * @param oldPlaybackState The old playback state. See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.media.PlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public function MediaPlaybackEvent2(type:String, playbackState:String, oldPlaybackState:String)
	{ 
		super(type, playbackState);
		
		m_oldPlaybackState = oldPlaybackState;
	} 
	
	/**
	 * The old playback state.
	 * See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.media.PlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public function get oldPlaybackState():String
	{
		return m_oldPlaybackState;
	}
	
	/**
	 * @private
	 */
	public override function clone():Event
	{ 
		return new MediaPlaybackEvent2(type, playbackState, oldPlaybackState);
	}

	/**
	 * @private
	 */
	public override function toString():String
	{
		return formatToString("MediaPlaybackEvent2", "type", "playbackState", "oldPlaybackState", "bubbles", "cancelable", "eventPhase");
	}
}

}