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

import flash.events.IEventDispatcher;


//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
TransitionPlaybackState;


/**
 * Dispatched when a slide transition effect is started.
 * 
 * @eventType ispring.presenter.player.transitions.SlideTransitionControllerEvent.TRANSITION_EFFECT_STARTED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="transitionEffectStarted", type="ispring.presenter.player.transitions.SlideTransitionControllerEvent")]

/**
 * Dispatched when a slide transition effect is finished. 
 * 
 * @eventType ispring.presenter.player.transitions.SlideTransitionControllerEvent.TRANSITION_EFFECT_FINISHED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="transitionEffectFinished", type="ispring.presenter.player.transitions.SlideTransitionControllerEvent")]


/**
 * The ISlideTransitionController interface provides information about the current state and progress of
 * the slide transition effect.
 * 
 * <p>To obtain the ISlideTransitionController interface use the <code>slideTransitionController</code> property
 * on the IPresentationPlaybackController interface.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController#slideTransitionController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlideTransitionController extends IEventDispatcher
{
	/**
	 * The transition effect progress in the range 0...1.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get transitionProgress():Number;
		
	/**
	 * The state of the slide transition controller. 
	 * See the <code>ispring.presenter.player.transitions.TransitionPlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.transitions.TransitionPlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get state():String;
}
	
}