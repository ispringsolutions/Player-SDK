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

/**
 * The AssetState class is an enumeration class that provides values for
 * the <code>state</code> property of the IAsset interface.
 * 
 * @see ispring.utils.assets.IAsset
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */	
public class AssetState
{
	/**
	 * Indicates that the asset is not loaded.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const NOT_LOADED:String = "not_loaded";
	
	/**
	 * Indicates that the asset is being loaded.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const LOADING:String = "loading";

	/**
	 * Indicates that the asset has been loaded. 
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	public static const LOADED:String = "loaded";
}
	
}
