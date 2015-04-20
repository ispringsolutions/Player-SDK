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

import flash.events.IEventDispatcher;
import ispring.presenter.presentation.ITimestamp;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
PresentationClockState;
IPresentationClock2;

/**
 * Dispatched when the clock is updated.
 * 
 * @eventType ispring.presenter.player.clock.PresentationClockEvent.TICK
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="tick", type="ispring.presenter.player.clock.PresentationClockEvent")]

/**
 * Dispatched when the clock is started.
 * 
 * @eventType ispring.presenter.player.clock.PresentationClockEvent.START
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="start", type="ispring.presenter.player.clock.PresentationClockEvent")]

/**
 * Dispatched when the clock is stopped.
 * 
 * @eventType ispring.presenter.player.clock.PresentationClockEvent.STOP
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="stop", type="ispring.presenter.player.clock.PresentationClockEvent")]

/**
 * Dispatched when the state of the clock is changed.
 * 
 * @eventType ispring.presenter.player.clock.PresentationClockEvent.STATE_CHANGED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="stateChanged", type="ispring.presenter.player.clock.PresentationClockEvent")]


/**
 * The IPresentationClock interface provides information about the current playback position and the
 * state of the presentation playback controller.
 * The IPresentationClock interface can be obtained using the <code>clock</code> property
 * on the IPresentationPlaybackController interface.
 * 
 * <p>This interface has been superseded by the IPresentationClock2 interface since
 * iSpring Pro 6.1 and iSpring Platform 6.1.</p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.presentation.ITimestamp
 * @see ispring.presenter.player.clock.PresentationClockEvent
 * @see ispring.presenter.player.clock.IPresentationClock2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationClock extends IEventDispatcher
{
	/**
	 * The current playback position within the presentation.
	 * 
	 * @see ispring.presenter.presentation.ITimestamp
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get timestamp():ITimestamp;
	
	/**
	 * Indicates whether the clock is started.
	 * 
	 * <p>The started presentation clock does not run (see the <code>isRunning</code> property)
	 * if the presentation is being buffered or waiting for the user's action.
	 * </p>
	 * 
	 * @see #isRunning
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get started():Boolean;
	
	/**
	 * Indicates whether the clock is running. 
	 * 
	 * <p>The clock is running when it is started (see the <code>started</code> property) AND
	 * the presentation is not being buffered or waiting for the user's action.</p>
	 * 
	 * <p>The <code>suspended</code> and <code>buffering</code> properties of the IPresentationClock2
	 * interface provide more precise information about the presentation clock state.</p>
	 * 
	 * @see #started
	 * @see ispring.presenter.player.clock.IPresentationClock2#suspended
	 * @see ispring.presenter.player.clock.IPresentationClock2#buffering
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get isRunning():Boolean;
	
	/**
	 * Returns the state of the clock.
	 * See the <code>ispring.presenter.player.clock.PresentationClockState</code> constants for more details.
	 * 
	 * <p>The <code>state2</code> of the IPresentationClock2 interface provides more
	 * precise information about the clock state.</p>
	 * 
	 * @see ispring.presenter.player.clock.PresentationClockState
	 * @see ispring.presenter.player.clock.IPresentationClock2#state2
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get state():String;
}

}