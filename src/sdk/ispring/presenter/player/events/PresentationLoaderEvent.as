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

/**
 * The PresentationLoaderEvent class represents an event that is
 * dispatched by the presentation loader.
 * 
 * @see ispring.presenter.player.IPresentationLoader
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PresentationLoaderEvent extends Event 
{
	/**
	 * The <code>PresentationLoaderEvent.SLIDE_LOADED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>slideLoaded</code> event.
	 *  
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>index</code></td>			<td>The index of the loaded slide.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType slideLoaded
	 * 
	 * @see ispring.presenter.player.IPresentationLoader#event:slideLoaded
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SLIDE_LOADED:String = "slideLoaded";

	/**
	 * The <code>PresentationLoaderEvent.PROGRESS</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>slideLoadingProgress</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>index</code></td>			<td>The index of the slide which loading progress has been updated.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType slideLoadingProgress
	 * 
	 * @see ispring.presenter.player.IPresentationLoader#event:slideLoadingProgress
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PROGRESS:String = "slideLoadingProgress";
	
	private var m_slideIndex:uint;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param slideIndex The index of the slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function PresentationLoaderEvent(type:String, slideIndex:uint) 
	{ 
		super(type);
		
		m_slideIndex = slideIndex;
	} 
	
	/**
	 * The index of the slide related to the dispatched event.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get index():uint
	{
		return m_slideIndex;
	}

	/**
	 * @private
	 */	
	public override function clone():Event 
	{ 
		return new PresentationLoaderEvent(type, index);
	} 
	
	/**
	 * @private
	 */	
	public override function toString():String 
	{ 
		return formatToString("PresentationLoaderEvent", "type", "index", "bubbles", "cancelable", "eventPhase"); 
	}
}
	
}