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
 * The MediaPlaybackEvent event lets you handle events during audio and video playback.
 * 
 * <p>This event has been superseded by the MediaPlaybackEvent2 event since iSpring Pro 6.1 and iSpring Platform 6.1.</p>
 * 
 * @see ispring.presenter.player.media.MediaPlaybackEvent2
 * @see ispring.presenter.player.media.IMediaPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class MediaPlaybackEvent extends Event 
{
	/**
	 * The <code>MediaPlaybackEvent.PLAYBACK_STATE_CHANGED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>mediaPlaybackStateChanged</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>playbackState</code></td>	<td>The new playback state. See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
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
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PLAYBACK_STATE_CHANGED:String = "mediaPlaybackStateChanged";
	
	private var m_playbackState:String;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param playbackState The new playback state. See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.media.PlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function MediaPlaybackEvent(type:String, playbackState:String)
	{ 
		super(type);
		
		m_playbackState = playbackState;
	} 
	
	/**
	 * The playback state.
	 * See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.media.PlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get playbackState():String
	{
		return m_playbackState
	}
	
	/**
	 * @private
	 */
	public override function clone():Event 
	{ 
		return new MediaPlaybackEvent(type, playbackState);
	} 
	
	/**
	 * @private
	 */
	public override function toString():String 
	{ 
		return formatToString("MediaPlaybackEvent", "type", "playbackState", "bubbles", "cancelable", "eventPhase"); 
	}
}
	
}