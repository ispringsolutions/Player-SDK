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

import flash.events.Event;

/**
 * The SlideTransitionControllerEvent class defines an event dispatched by the slide transition controller to 
 * notify listeners about start and finish of the slide transition effect.
 * 
 * @see ispring.presenter.player.transitions.ISlideTransitionController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class SlideTransitionControllerEvent extends Event 
{
	/**
	 * The <code>SlideTransitionControllerEvent.TRANSITION_EFFECT_STARTED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>transitionEffectStarted</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>slideIndex</code></td>	<td>The index of the slide the player starts switching to.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType transitionEffectStarted
	 * 
	 * @see ispring.presenter.player.transitions.ISlideTransitionController#event:transitionEffectStarted
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const TRANSITION_EFFECT_STARTED:String = "transitionEffectStarted";

	/**
	 * The <code>SlideTransitionControllerEvent.TRANSITION_EFFECT_FINISHED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>transitionEffectFinished</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>slideIndex</code></td>	<td>The index of the slide the player has switched to.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType transitionEffectFinished
	 * 
	 * @see ispring.presenter.player.transitions.ISlideTransitionController#event:transitionEffectFinished
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const TRANSITION_EFFECT_FINISHED:String = "transitionEffectFinished";
	
	private var m_slideIndex:uint;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param slideIndex The index of the slide the player is switching to.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function SlideTransitionControllerEvent(type:String, slideIndex:uint) 
	{ 
		super(type);

		m_slideIndex = slideIndex;
	} 
	
	/**
	 * The index of the slide the player is switching to.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get slideIndex():uint
	{
		return m_slideIndex;
	}
	
	/**
	 * @private
	 */
	public override function clone():Event 
	{ 
		return new SlideTransitionControllerEvent(type, slideIndex);
	} 
	
	/**
	 * @private
	 */
	public override function toString():String 
	{ 
		return formatToString("SlideTransitionControllerEvent", "type", "slideIndex", "bubbles", "cancelable", "eventPhase"); 
	}
	
}
	
}