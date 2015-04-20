/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player
{

/**
 * The PresentationPlaybackState class is an enumeration class that provides values for
 * the <code>playbackState</code> property of the IPresentationPlaybackController interface.
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PresentationPlaybackState
{
	/**
	 * Indicates that the presentation playback controller is playing a slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PLAYING_SLIDE:String = "playingSlide";
		
	/**
	 * Indicates that the presentation playback controller is playing a slide transition effect.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PLAYING_TRANSITON:String = "playingTransition";
		
	/**
	 * Indicates that the presentation playback controller paused a slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PAUSED_SLIDE:String = "pausedSlide";
		
	/**
	 * Indicates that the presentation playback controller paused a slide transition.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PAUSED_TRANSITON:String = "pausedTransition";
		
	/**
	 * Indicates that the presentation playback controller is buffering data.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const BUFFERING:String = "buffering";

	/**
	 * Indicates that the presentation playback controller is waiting for the user action to move to the next animation step.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SUSPENDED:String = "suspended";
}
	
}
