/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.utils.assets 
{
	
import ispring.utils.sound.ISound;
	
/**
 * The ISoundAsset interface represents a sound asset.
 * 
 * @see ispring.utils.assets.IAsset
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISoundAsset extends IAsset
{
	/**
	 * The duration of the sound asset, in seconds.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset is not ready.
	 * 
	 * @see ispring.utils.assets.IAsset#isReady
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;
	
	/**
	 * Creates an instance of the sound asset.
	 * 
	 * @return The ISound interface of the created sound object.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset is not ready.
	 * 
	 * @see ispring.utils.assets.IAsset#isReady
	 * @see ispring.utils.sound.ISound
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createInstance():ISound;
}
	
}