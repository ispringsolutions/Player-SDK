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
 * The TooltipEvent class is dispatched when a hyperlink tooltip
 * on a slide is to be displayed or hidden.
 * 
 * <p>The <code>IPresentationView</code> and the IStandaloneSlideView interfaces dispatch the TooltipEvent
 * to notify listeners whether to show or hide a tooltip of a hyperlink on a slide.</p>
 * 
 * @see ispring.presenter.player.IPresentationView
 * @see ispring.presenter.player.IStandaloneSlideView
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class TooltipEvent extends Event 
{
	/**
	 * The <code>TooltipEvent.SHOW_TOOLTIP</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>showTooltip</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>linkId</code></td>		<td>A unique identifier of the hyperlink.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 *	<tr><td><code>text</code></td>			<td>The tooltip text.</td></tr>
	 * </table>
	 * 
	 * @eventType showTooltip
	 * 
	 * @see ispring.presenter.player.IPresentationView#event:showTooltip
	 * @see ispring.presenter.player.IStandaloneSlideView#event:showTooltip
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SHOW_TOOLTIP:String = "showTooltip";

	/**
	 * The <code>TooltipEvent.HIDE_TOOLTIP</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>hideTooltip</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>linkId</code></td>		<td>A unique identifier of the hyperlink.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 *	<tr><td><code>text</code></td>			<td><code>null</code></td></tr>
	 * </table>
	 * 
	 * @eventType hideTooltip
	 * 
	 * @see ispring.presenter.player.IPresentationView#event:hideTooltip
	 * @see ispring.presenter.player.IStandaloneSlideView#event:hideTooltip
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const HIDE_TOOLTIP:String = "hideTooltip";
	
	private var m_linkId:String;
	private var m_text:String;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param linkId A unique identifier of the hyperlink.
	 * @param text The text of the tooltip to show.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function TooltipEvent(type:String, linkId:String, text:String = null) 
	{ 
		super(type);
		
		m_linkId = linkId;
		m_text = text;
	} 
	
	/**
	 * A unique identifier of the hyperlink.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get linkId():String 
	{
		return m_linkId;
	}
	
	/**
	 * The hyperlink text.
	 * 
	 * @default null
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get text():String 
	{
		return m_text;
	}

	/**
	 * @private
	 */
	public override function clone():Event 
	{ 
		return new TooltipEvent(type, linkId, text);
	} 
	
	/**
	 * @private
	 */
	public override function toString():String 
	{ 
		return formatToString("TooltipEvent", "type", "linkId", "text");
	}
}
	
}