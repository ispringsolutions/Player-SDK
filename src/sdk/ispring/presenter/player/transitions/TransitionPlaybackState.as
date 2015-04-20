/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.transitions
{
	
/**
 * The TransitionPlaybackState class is an enumeration class that provides values for
 * the <code>state</code> property of the ISlideTransitionController interface.
 * 
 * @see ispring.presenter.player.transitions.ISlideTransitionController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */	
public class TransitionPlaybackState
{
	/**
	 * Indicates that the transition effect is playing.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	public static const PLAYING:String = "playing";
		
	/**
	 * Indicates that the transition effect is suspended.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PAUSED:String = "paused";
		
	/**
	 * Indicates that the transition effect is not playing.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const IDLE:String = "idle";

}
	
}