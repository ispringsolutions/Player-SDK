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
 * Dispatched when the state of the clock is changed.
 * 
 * @eventType ispring.presenter.player.clock.PresentationClockEvent.STATE2_CHANGED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
[Event(name="state2Changed", type="ispring.presenter.player.clock.PresentationClockEvent2")]


/**
 * The IPresentationClock2 interface provides extended information about the current playback position and the
 * state of the presentation playback controller.
 * 
 * <p>The IPresentationClock2 interface has superseded the IPresentationClock interface
 * since iSpring Pro 6.1 and iSpring Platform 6.1. The IPresentationClock2 interface can be obtained from an existing IPresentationClock interface
 * instance using type casting.</p>
 * 
 * @example The following example illustrates accessing extended information via the IPresentationClock2 interface.
 * <listing version="3.0">
 * import ispring.presenter.player.IPresentationPlaybackController;
 * import ispring.presenter.player.clock.IPresentationClock;
 * import ispring.presenter.player.clock.IPresentationClock2;
 * ...
 * var controller:IPresentationPlaybackController;
 * 
 * ...
 * 
 * var clock:IPresentationClock = controller.clock;
 * 
 * ...
 * 
 * // Checking whether the IPresentationClock2 interface is available.
 * var clock2:IPresentationClock2 = clock as IPresentationClock2;
 * if (clock2 != null)
 * {
 *     // Now we can access the IPresentationClock2 properties
 *     // and listen to the events of the interface using the clock2 instance.
 * }
 * else
 * {
 *     // Extended information is not available because the presentation was
 *     // created with an earlier version of iSpring Pro or iSpring Platform.
 * }
 * </listing>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.clock.IPresentationClock
 * @see ispring.presenter.player.clock.PresentationClockEvent2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface IPresentationClock2 extends IPresentationClock
{
	/**
	 * Returns the state of the clock.
	 * See the <code>ispring.presenter.player.clock.PresentationClockState2</code> constants for more details.
	 * 
	 * <p>This property provides more precise information about the clock state than
	 * the <code>state</code> property of the IPresentationClock interface.</p>
	 * 
	 * @see ispring.presenter.player.clock.PresentationClockState2
	 * @see ispring.presenter.player.clock.IPresentationClock#state
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get state2():String;

	/**
	 * Indicates whether playback has been suspended and the player is waiting for user's action.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get suspended():Boolean;

	/**
	 * Indicates whether the player is buffering the data.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	 function get buffering():Boolean;
}

}