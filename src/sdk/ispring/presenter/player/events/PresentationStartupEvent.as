/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.events 
{
import flash.events.Event;
import ispring.presenter.player.startup.IPresentationStartup;


/**
 * The PresentationStartupEvent class represents an event that is
 * dispatched at the presentation startup by the presentation playback controller.
 * This event provides access to the default presentation startup information and allows
 * overriding the default presentation startup behavior.
 * 
 * <p>The default startup information is accessible via the <code>startup</code> property
 * returning the IPresentationStartup interface. A PresentationStartupEvent listener can override
 * the default startup behavior by changing the IPresentationStartup interface properties, and even prevent
 * the presentation from starting using the <code>preventDefault()</code> method on the PresentationStartupEvent object.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.startup.IPresentationStartup
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PresentationStartupEvent extends Event 
{
	/**
	 * The <code>PresentationStartupEvent.PRESENTATION_STARTUP</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>presentationStartup</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>true</code>; This event is cancelable. Use the <code>preventDefault()</code> method to prevent the presentation startup.  The prevented presentation startup can be resumed using any of the playback control methods on the IPresentationPlaybackController interface.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>startup</code></td>		<td>The IPresentationStartup interface providing information about the presentation startup behavior. Use this interface properties to override the default presentation startup behavior.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * <p>Please note that the player skin may also listen to the <code>presentationStartup</code> event and
	 * attempt to override the default startup behavior in its own way. To prevent the skin from overriding the
	 * startup behavior add a <code>presentationStartup</code> listener to the IPresentationPlaybackController interface
	 * with the higher priority level to handle this event before the skin (the standard iSpring skins handle this event with the priority level 0).
	 * Then call the <code>stopImmediatePropagation()</code> method on the PresentationStartupEvent object after handling the event in the event handler.
	 * </p>
	 * 
	 * @eventType presentationStartup
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#event:presentationStartup
	 * @see ispring.presenter.player.startup.IPresentationStartup
	 * @see ispring.presenter.player.IPresentationPlaybackController
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html#preventDefault() flash.events.Event.preventDefault()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PRESENTATION_STARTUP:String = "presentationStartup";
		
	private var m_startup:IPresentationStartup;
		
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param startup Provides information about the default presentation startup behavior.
	 * @param bubbles Determines whether the PresentationPlaybackEvent object participates in the bubbling stage of the event flow. The default value is <code>false</code>.
	 * @param cancelable  Determines whether the PresentationPlaybackEvent object can be canceled. The default value is <code>false</code>.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function PresentationStartupEvent(type:String, startup:IPresentationStartup, bubbles:Boolean = false, cancelable:Boolean = false)
	{ 
		super(type, bubbles, cancelable);
			
		m_startup = startup;
	}
	
	/**
	 * The default presentation startup behavior information. Use this property to access and override the presentation startup behavior.
	 * 
	 * @see ispring.presenter.player.startup.IPresentationStartup
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get startup():IPresentationStartup
	{
		return m_startup;
	}
	
	/**
	 * @private
	 */
	public override function clone():Event
	{
		return new PresentationStartupEvent(type, m_startup, bubbles, cancelable);
	}
	
	/**
	 * @private
	 */
	public override function toString():String
	{
		return formatToString("PresentationStartupEvent", "type", "bubbles", "cancelable", "eventPhase");
	}
}
}