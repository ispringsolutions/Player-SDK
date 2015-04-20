/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.sound
{
import flash.events.Event;
	
/**
 * The SoundControllerEvent event is dispatched by the sound controller.
 * 
 * @see ispring.presenter.player.sound.ISoundController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class SoundControllerEvent extends Event 
{
	/**
	 * The <code>SoundControllerEvent.VOLUME_CHANGED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>volumeChanged</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType volumeChanged
	 * 
	 * @see ispring.presenter.player.sound.ISoundController#event:volumeChanged
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const VOLUME_CHANGED:String = "volumeChanged";

	/**
	 * The <code>SoundControllerEvent.REAL_VOLUME_CHANGED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>realVolumeChanged</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType realVolumeChanged
	 * 
	 * @see ispring.presenter.player.sound.ISoundController#event:realVolumeChanged
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const REAL_VOLUME_CHANGED:String = "realVolumeChanged";

	/**
	 * The <code>SoundControllerEvent.MUTE_STATE_TOGGLED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>muteStateToggled</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType muteStateToggled
	 * 
	 * @see ispring.presenter.player.sound.ISoundController#event:muteStateToggled
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const MUTE_STATE_TOGGLED:String = "muteStateToggled";
		
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function SoundControllerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
	{
		super(type, bubbles, cancelable);
	}
	
	/**
	 * @private
	 */	
	public override function clone():Event
	{
		return new SoundControllerEvent(type, bubbles, cancelable);
	}
		
	/**
	 * @private
	 */	
	public override function toString():String
	{
		return formatToString("SoundControllerEvent", "type", "bubbles", "cancelable", "eventPhase");
	}
}
}