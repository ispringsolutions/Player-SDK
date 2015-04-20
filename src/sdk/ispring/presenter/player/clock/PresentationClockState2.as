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

/**
 * The PresentationClockState2 class is an enumeration class that provides values for
 * the <code>state2</code> property of the IPresentationClock2 interface.
 * 
 * @see ispring.presenter.player.clock.IPresentationClock2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public class PresentationClockState2
{
	/**
	 * Indicates that the clock is started.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const STARTED:String = PresentationClockState.STARTED;

	/**
	 * Indicates that the clock is suspended. The clock switches to the suspended state
	 * when the presentation is waiting for the user's action.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const SUSPENDED:String = PresentationClockState.SUSPENDED;
	
	/**
	 * Indicates that the clock has been suspended due to data buffering.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const BUFFERING:String = "buffering";

	/**
	 * Indicates that the clock is stopped.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const STOPPED:String = PresentationClockState.STOPPED;

	/**
	 * Indicates that the slide transition effect is rewinding.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const REWINDING:String = PresentationClockState.REWINDING;
}
}