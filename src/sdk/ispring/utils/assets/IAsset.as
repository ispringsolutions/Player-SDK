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
	
import flash.events.IEventDispatcher;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
AssetState;

/**
 * Dispatched when an asset becomes ready to use.
 * 
 * @eventType ispring.utils.assets.AssetEvent.READY
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="ready", type="ispring.utils.assets.AssetEvent")]

/**
 * Dispatched when an asset loading progress is updated.
 * 
 * @eventType ispring.utils.assets.AssetEvent.PROGRESS
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="progress", type="ispring.utils.assets.AssetEvent")]


/**
 * Dispatched when an asset is loaded.
 * 
 * @eventType ispring.utils.assets.AssetEvent.LOADING_COMPLETE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="loadingComplete", type="ispring.utils.assets.AssetEvent")]

/**
 * Dispatched when an asset loading is failed.
 * 
 * @eventType ispring.utils.assets.AssetEvent.LOADING_FAILURE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="loadingFailure", type="ispring.utils.assets.AssetEvent")]

/**
 * The IAsset interface defines a generic asset.
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IAsset extends IEventDispatcher
{
	/**
	 * Indicates whether the asset is loaded.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get isLoaded():Boolean;
	
	/**
	 * Indicates whether the asset is ready to use.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get isReady():Boolean;
	
	/**
	 * Returns the asset loading progress in the range 0...1.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get progress():Number;
	
	/**
	 * The state of the asset. See the <code>ispring.utils.assets.AssetState</code> constants for more details.
	 * 
	 * @see ispring.utils.assets.AssetState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get state():String;
	
	/**
	 * Loads the asset.
	 * 
	 * @see #unload()
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset has been loaded already.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function load():void;

	/**
	 * Unloads the asset.
	 * 
	 * @see #load()
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the asset has not been loaded yet.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function unload():void;
}
	
}
