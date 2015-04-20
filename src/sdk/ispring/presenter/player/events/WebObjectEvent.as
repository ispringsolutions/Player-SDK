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
import ispring.presenter.presentation.webobjects.IWebObject;

/**
 * The WebObjectEvent class represents an event which is dispatched
 * by the object implementing the IPresentationView interface to notify
 * its listeners that a web object is to be shown or hidden.
 * 
 * <p>The web object controller module of the generated Flash presentation
 * handles this event and sends the corresponding notifications to the containing HTML page
 * via ExternalInterface.</p>
 * 
 * @see ispring.presenter.player.IPresentationView
 * @see ispring.presenter.presentation.webobjects.IWebObject
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public class WebObjectEvent extends Event 
{
	/**
	 * The <code>WebObjectEvent.SHOW_WEB_OBJECT</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>showWebObject</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>webObject</code></td>		<td>The IWebObject interface providing information about the web object to be displayed.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType showWebObject
	 * 
	 * @see ispring.presenter.player.IPresentationView#event:showWebObject
	 * @see ispring.presenter.presentation.webobjects.IWebObject
	 * @see ispring.presenter.player.IPresentationView
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const SHOW_WEB_OBJECT:String = "showWebObject";

	/**
	 * The <code>WebObjectEvent.HIDE_WEB_OBJECT</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>hideWebObject</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>webObject</code></td>		<td>The IWebObject interface providing information about the web object to be hidden.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType hideWebObject
	 * 
	 * @see ispring.presenter.player.IPresentationView#event:hideWebObject
	 * @see ispring.presenter.presentation.webobjects.IWebObject
	 * @see ispring.presenter.player.IPresentationView
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const HIDE_WEB_OBJECT:String = "hideWebObject";
	
	private var m_webObject:IWebObject;
	
	/**
	 * Constructor
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param webObject Provides information about the web object associated with the WebObjectEvent event.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public function WebObjectEvent(type:String, webObject:IWebObject) 
	{ 
		super(type);

		m_webObject = webObject;
	} 
	
	/**
	 * Provides the information about the web object associated with the WebObjectEvent event.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public function get webObject():IWebObject
	{
		return m_webObject;
	}
	
	/**
	 * @private
	 */
	public override function clone():Event
	{
		return new WebObjectEvent(type, webObject);
	}
	
	/**
	 * @private
	 */
	public override function toString():String 
	{
		return formatToString("WebObjectEvent", "type", "bubbles", "cancelable", "eventPhase", "webObject");
	}
}
	
}