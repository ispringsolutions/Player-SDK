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
 * The SlideViewedEvent class represents an event which is
 * dispatched by the presentation playback controller when a slide is being viewed for the first time.
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class SlideViewedEvent extends Event 
{
	/**
	 * The <code>SlideViewedEvent.SLIDE_VIEWED</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>slideViewed</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th><th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 *	<tr><td><code>slideIndex</code></td>	<td>The index of the viewed slide.</td></tr>
	 * </table>
	 * 
	 * @eventType slideViewed
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#event:slideViewed
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const SLIDE_VIEWED:String = "slideViewed";
		
	private var m_slideIndex:uint;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param slideIndex The index of the slide which has been just viewed.
	 * @param bubbles Determines whether the PresentationPlaybackEvent object participates in the bubbling stage of the event flow. The default value is <code>false</code>.
	 * @param cancelable  Determines whether the PresentationPlaybackEvent object can be canceled. The default value is <code>false</code>.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function SlideViewedEvent(type:String, slideIndex:uint, bubbles:Boolean = false, cancelable:Boolean = false)
	{
		super(type, bubbles, cancelable);
			
		m_slideIndex = slideIndex;
	}
	
    /**
     * The index of the slide which has been just viewed.
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
		return new SlideViewedEvent(type, slideIndex, bubbles, cancelable);
	}
		
    /**
     * @private
     */
	public override function toString():String
	{
		return formatToString("SlideViewedEvent", "type", "slideIndex", "bubbles", "cancelable", "eventPhase");
	}
}
}