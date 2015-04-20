/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.resources.references
{

import flash.events.IEventDispatcher;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
ReferenceType;

/**
 * The IReference interface stores information about a reference.
 * 
 * <p>The IReference interface extends the <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the IReference interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.presenter.presentation.resources.references.IReferences
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IReference extends IEventDispatcher
{
	/**
	 * The type of the reference.
	 * See the <code>ispring.presenter.presentation.resources.references.ReferenceType</code> constants for this property. 
	 * 
	 * @see ispring.presenter.presentation.resources.references.ReferenceType
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get type():String;
		
	/**
	 * The reference title.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get title():String;
	
	/**
	 * The reference URL.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get url():String;

	/**
	 * The name of the target window to open the reference in.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get target():String;

	/**
	 * Opens the reference in the specified browser window.
	 * 
	 * @param overridenTarget A target window name to open the reference. If this parameter is <code>null</code> the reference is opened in the target window defined by the <code>target</code> property.
	 * 
	 * @see #target
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function navigate(overridenTarget:String = null):void;
}

}