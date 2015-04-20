/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.resources.interactions 
{
	
/**
 * The IInteractionAssets interface represents a collection of iSpring Kinetics interaction assets associated with the presentation.
 * 
 * @see ispring.presenter.presentation.resources.IResources#interactionAssets
 * @see ispring.presenter.presentation.resources.interactions.IInteractionAsset
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IInteractionAssets 
{
	/**
	 * Returns the number of interaction assets in the collection.
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
	 * Returns the interaction asset that exists at the specified index.
	 * 
	 * @param index The index of the interaction asset. The index value must be in the range from 0 to the number of interaction assets minus 1.
	 * 
	 * @return The interaction asset at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified index is out of range.
	 * 
	 * @see ispring.presenter.presentation.resources.interactions.IInteractionAsset
	 * @see #count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getInteractionAsset(index:uint):IInteractionAsset;
}
	
}