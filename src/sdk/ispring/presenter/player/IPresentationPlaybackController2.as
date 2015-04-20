/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player
{

/**
 * The IPresentationPlaybackController2 interface provides extended presentation playback information and control facilities.
 * 
 * <p>The IPresentationPlaybackController2 interface supersedes the IPresentationPlaybackController interface.
 * The IPresentationPlaybackController2 interface can be obtained from the existing IPresentationPlaybackController
 * interface using type casting.</p>
 * 
 * @example The following example illustrates obtaining the IPresentationPlaybackController2 interface and accessing its properties.
 * <listing version="3.0">
 * var pv:IPresentationView;
 * 
 * ...
 * 
 * var ppc:IPresentationPlaybackController = pv.playbackController;
 * 
 * // Checking whether the extended version of the playback controller interface is available.
 * var ppc2:IPresentationPlaybackController2 = ppc as IPresentationPlaybackController2;
 * if (ppc2 != null)
 * {
 *     // Accessing the IPresentationPlaybackController2 properties and methods.
 *     var firstSlideIndex:uint = ppc2.firstSlideIndex;
 * }
 * else
 * {
 *     // Extended information is not available because the presentation was created with
 *     // an earlier version of iSpring Pro or iSpring Platform.
 * }
 * </listing>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface IPresentationPlaybackController2 extends IPresentationPlaybackController
{
	/**
	 * Returns the first slide index taking hidden slides and custom slide shows
	 * into account.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get firstSlideIndex():uint;

	/**
	 * Returns the last slide index taking hidden slides and custom slide shows
	 * into account.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get lastSlideIndex():uint;
}
	
}