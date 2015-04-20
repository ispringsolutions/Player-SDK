/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.resources
{

import ispring.presenter.presentation.resources.interactions.IInteractionAssets;
import ispring.presenter.presentation.resources.references.IReferences;

/**
 * The IResources interface provides information about the presentation resources such as references,
 * attachments, and interactions.
 * 
 * <p>To obtain the IResources interface use the <code>resources</code> property on the IPresentation
 * interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.IPresentation#resources
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IResources
{
	/**
	 * Returns a collection of the presentation references.
	 * 
	 * @see ispring.presenter.presentation.resources.references.IReferences
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get references():IReferences;
	
	/**
	 * Returns a collection of iSpring Kinetics interaction assets attached to the presentation.
	 * 
	 * <p>The current implementation always returns an empty collection of interaction assets. This functionality is reserved for future versions.</p>
	 * 
	 * @see ispring.presenter.presentation.resources.interactions.IInteractionAssets
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get interactionAssets():IInteractionAssets;
}
	
}