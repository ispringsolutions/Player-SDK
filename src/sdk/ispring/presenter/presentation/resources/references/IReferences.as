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

/**
 * The IReferences interface represents a collection of the presentation references. A reference is
 * a hyperlink or a file attachment associated with the presentation.
 * 
 * @see ispring.presenter.presentation.resources.IResources#references
 * @see ispring.presenter.presentation.resources.references.IReference
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IReferences
{
	/**
	 * Returns the number of references in the collection.
	 * 
	 * @see #getReference()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns the reference that exists at the specified index.
	 * 
	 * @param index The index of the reference. The index value must be in the range from 0 to the number of references minus 1.
	 * 
	 * @return The reference at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified index is out of range.
	 * 
	 * @see ispring.presenter.presentation.resources.references.IReference
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getReference(index:uint):IReference;
}
	
}
