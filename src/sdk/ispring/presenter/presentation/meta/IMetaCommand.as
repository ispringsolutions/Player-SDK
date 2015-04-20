/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.meta 
{

/**
 * The IMetaCommand interface stores a meta command information.
 * 
 * <p>A meta command is a custom action which should be executed at the specific event, for example, when
 * the player switches to a particular slide of the presentation.
 * The presentation player dispatches the <code>metaEvent</code> event notifying the listeners to execute the meta command.
 * If the event is handled by the listener which supports the meta command, the meta command is executed by the listener.
 * Otherwise, the listener ignores the meta command and the <code>metaEvent</code> event is processed by the next listener.
 * </p>
 * 
 * @see ispring.presenter.player.events.MetaCommandEvent
 * @see ispring.presenter.presentation.meta.IMetaCommands#getMetaCommand()
 * @see ispring.presenter.player.IPresentationView#event:executeMetaCommand
 * @see ispring.presenter.player.IStandaloneSlideView#event:executeMetaCommand
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IMetaCommand 
{
	/**
	 * The meta command name. Specifies an action to perform when the meta command is executed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get name():String;
	
	/**
	 * An object which properties define the meta command arguments.
	 * The properties and their values depend on the meta command name.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get params():Object;
}
	
}