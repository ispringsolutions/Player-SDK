/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.settings
{

/**
 * The ActionType class is an enumeration class that provides values for
 * the <code>type</code> property of the IPlaybackAction interface.
 * 
 * @see ispring.presenter.presentation.settings.IPlaybackAction#type
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class ActionType
{
	/**
	 * Toggles play and pause modes of the presentation.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const TOGGLE_PLAY_PAUSE:String = "playPause";
		
	/**
	 * Moves to the next slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_NEXT_SLIDE:String = "nextSlide";
		
	/**
	 * Moves to the previous slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_PREVIOUS_SLIDE:String = "previousSlide";
		
	/**
	 * Moves to the first slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_FIRST_SLIDE:String = "firstSlide";
		
	/**
	 * Moves to the last slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_LAST_SLIDE:String = "lastSlide";
		
	/**
	 * Moves to the last slide viewed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_LAST_SLIDE_VIEWED:String = "lastSlideViewed";
	
	/**
	 * Moves to the beginning of the current slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_SLIDE_START:String = "slideStart";
		
	/**
	 * Moves to the end of the current slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_SLIDE_END:String = "slideEnd";
		
	/**
	 * Seeks forward.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SEEK_FORWARD:String = "seekForward";
		
	/**
	 * Seeks backward.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SEEK_BACKWARD:String = "seekBackward";
		
	/**
	 * Moves to the previous animation step.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_PREVIOUS_STEP:String = "previousStep";
		
	/**
	 * Moves to the next animation step.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_NEXT_STEP:String = "nextStep";
		
	/**
	 * Decreases sound volume.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const VOLUME_DOWN:String = "volumeDown";
		
	/**
	 * Increases sound volume.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const VOLUME_UP:String = "volumeUp";
		
	/**
	 * Toggles fullscreen and normal mode.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const TOGGLE_FULLSCREEN:String = "toggleFullscreen";
		
	/**
	 * Resumes presentation playback.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PLAY:String = "play";
		
	/**
	 * Pauses presentation playback.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PAUSE:String = "pause";
}

}
