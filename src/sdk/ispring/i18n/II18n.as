/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.i18n
{

import flash.events.IEventDispatcher;

/**
 * The II18n interface provides access to the internationalized message set.
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * @productversion iSpring&nbsp;Platform 7
 */
public interface II18n extends IEventDispatcher
{
	/**
	 * Returns message text by it's id.
	 * Returns default value if message with specified id doesn't exists.
	 *
	 * If parameters specified then replace all keys in message to corresponding value.
	 * @param messageId An id of the message
	 * @param parameters An optional object containing key-value pairs to replace within the message text. The placeholder text within the message must be enclosed in % characters.
	 * @param defaultValue A default value used when no message with the specified <code>messageId</code> is defined.
	 * @return Message text
	 */
	function getMessage(messageId:String, parameters:Object = null, defaultValue:String = ""):String;

	/**
	 * Returns an Vector of strings containing message IDs
	 */
	function getMessageIds():Vector.<String>;

	/**
	 * Returns an object containing key-value pairs of the available messages.
	 */
	function toObject():Object;
}

}
