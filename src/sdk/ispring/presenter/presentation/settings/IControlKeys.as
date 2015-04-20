/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.settings
{

/**
 * The IControlKeys interface is a collection of the presentation control keys.
 * 
 * <p>To obtain the control keys information use the <code>controlKeys</code> property on the
 * IKeyboardSettings interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.IKeyboardSettings#controlKeys
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IControlKeys
{
	/**
	 * The number of control keys in the collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns the control key that exists at the specified index.
	 * 
	 * @param index The index position of the control key. The index value must be in the range from 0 to the number of keys minus 1.
	 * 
	 * @return The IControlKey interface of the control key at the specified index position.
	 * 
	 * @throws RangeError Throws if the value of the <code>index</code> parameter is out of range.
	 * 
	 * @see ispring.presenter.presentation.settings.IControlKey
	 * @see #count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getControlKey(index:uint):IControlKey;
}

}