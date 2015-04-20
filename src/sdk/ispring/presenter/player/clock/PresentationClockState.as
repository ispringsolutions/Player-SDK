/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.clock 
{

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
PresentationClockState2;

/**
 * The PresentationClockState class is an enumeration class that provides values for
 * the <code>state</code> property of the IPresentationClock interface.
 * 
 * @see ispring.presenter.player.clock.IPresentationClock
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PresentationClockState 
{
	/**
	 * Indicates that the clock is started.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const STARTED:String = "started";

	/**
	 * Indicates that the clock is suspended. The clock switches to the suspended state
	 * when the player is buffering the data or the presentation is waiting for the user's action. 
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SUSPENDED:String = "suspended";

	/**
	 * Indicates that the clock is stopped.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const STOPPED:String = "stopped";

	/**
	 * Indicates that a slide transition effect is rewinding.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const REWINDING:String = "rewinding";
}

}