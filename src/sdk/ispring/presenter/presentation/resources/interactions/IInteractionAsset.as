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
	
import ispring.interaction.IInteraction;
import ispring.utils.assets.IAsset;

/**
 * The IInteractionAsset interface represents an iSpring Kinetics interaction asset.
 * 
 * @see ispring.utils.assets.IAsset
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IInteractionAsset extends IAsset
{
	/**
	 * The name of the interaction.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get interactionName():String;
	
	/**
	 * Creates a new instance of the interaction.
	 * 
	 * @return An instance of the interaction.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset is not ready.
	 * 
	 * @see ispring.utils.assets.IAsset#isReady
	 * @see ispring.interaction.IInteraction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function createInstance():IInteraction;
}
	
}