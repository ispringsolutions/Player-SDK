/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.webobjects
{
/**
 * The IWebObjects interface represents a collection of the slide web objects.
 * 
 * <p>To obtain the IWebObject interface, use the <code>webObjects</code> property on the ISlide2 interface.</p>
 * 
 * @see ispring.presenter.presentation.webobjects.IWebObject
 * @see ispring.presenter.presentation.slides.ISlide2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface IWebObjects
{
	/**
	 * Returns the number of web objects in the slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get count():uint;

	/**
	 * Returns the IWebObject interface of the web object that exists at the specified index.
	 * 
	 * @param index The index of the web object within the presentation. The index value must be in the range from 0 to the number of web objects in the collection minus 1.
	 * 
	 * @return The web object at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified web object index is out of range.
	 * 
	 * @see ispring.presenter.presentation.webobjects.IWebObject
	 * @see #count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function getWebObject(index:uint):IWebObject;
}

}
