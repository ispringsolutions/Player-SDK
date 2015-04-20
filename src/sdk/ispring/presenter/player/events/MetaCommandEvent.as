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
import ispring.presenter.presentation.meta.IMetaCommand;

/**
 * This event is dispatched when a meta command is to be executed.
 * 
 * @see ispring.presenter.presentation.meta.IMetaCommand
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class MetaCommandEvent extends Event
{
	/**
	 * The <code>MetaEvent.EXECUTE_META_COMMAND</code> constant defines the value of the <code>type</code>
	 * property of the event object for a <code>executeMetaCommand</code> event.
	 * 
	 * <p>The properties of the event object have the following values:</p>
	 * <table class="innertable">
	 *	<tr><th>Property</th>					<th>Value</th></tr>
	 *	<tr><td><code>bubbles</code></td>		<td><code>false</code></td></tr>
	 *	<tr><td><code>cancelable</code></td>	<td><code>false</code>; there is no default behavior to cancel.</td></tr>
	 *  <tr><td><code>command</code></td>		<td>The IMetaCommand interface providing information about the meta command.</td></tr>
	 *	<tr><td><code>currentTarget</code></td>	<td>The Object that defines the event listener that handles the event. For example, if you use <code>myButton.addEventListener()</code> to register an event listener, <code>myButton</code> is the value of the <code>currentTarget</code>.</td></tr>
	 *	<tr><td><code>target</code></td>		<td>The Object that dispatched the event; it is not always the Object listening for the event. Use the <code>currentTarget</code> property to always access the Object listening for the event.</td></tr>
	 * </table>
	 * 
	 * @eventType executeMetaCommand
	 * 
	 * @see ispring.presenter.presentation.meta.IMetaCommand
	 * @see ispring.presenter.player.IPresentationView#event:executeMetaCommand
	 * @see ispring.presenter.player.IStandaloneSlideView#event:executeMetaCommand
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const EXECUTE_META_COMMAND:String = "executeMetaCommand";
	
	private var m_command:IMetaCommand;
	
	/**
	 * Constructor.
	 * 
	 * @param type The event type; indicates the action that triggered the event.
	 * @param command The IMetaCommand interface of the command to be executed.
	 * 
	 * @see ispring.presenter.presentation.meta.IMetaCommand
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function MetaCommandEvent(type:String, command:IMetaCommand)
	{ 
		super(type);
		
		m_command = command;
	} 
	
	/**
	 * The meta command information.
	 * 
	 * @see ispring.presenter.presentation.meta.IMetaCommand
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public function get command():IMetaCommand
	{
		return m_command;
	}
	
	/**
	 * @private
	 */
	public override function clone():Event 
	{ 
		return new MetaCommandEvent(type, command);
	} 
	
	/**
	 * @private
	 */
	public override function toString():String 
	{ 
		return formatToString("MetaCommandEvent", "type", "bubbles", "cancelable", "eventPhase");
	}
}

}