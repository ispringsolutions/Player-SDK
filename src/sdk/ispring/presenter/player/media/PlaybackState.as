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

/**
 * The PlaybackState class is an enumeration class that provides values for
 * the <code>playbackState</code> property of the IMediaPlaybackController interface and
 * for the <code>playbackState</code> property of the MediaPlaybackEvent class.
 * 
 * @see ispring.presenter.player.media.IMediaPlaybackController
 * @see ispring.presenter.player.media.MediaPlaybackEvent
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PlaybackState
{
	/**
	 * Indicates that the media is stopped.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const STOPPED:String = "stopped";
		
	/**
	 * Indicates that the media is playing.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PLAYING:String = "playing";
		
	/**
	 * Indicates that the media is buffering.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const BUFFERING:String = "buffering";
}
	
}
