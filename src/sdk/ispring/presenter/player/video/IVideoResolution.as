/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.video 
{

/**
 * The IVideoResolution interface provides video resolution information.
 * 
 * <p>To obtain the IVideoResolution interface from an existing video view use the <code>resolution</code>
 * property on the IVideoView interface.</p>
 * 
 * <p>To obtain the IVideoResolution interface of the video track currently playing in the video narration player
 * use the <code>currentTrackResolution</code> property on the IVideoNarrationPlayer interface.
 * </p>
 * 
 * @see ispring.presenter.player.video.IVideoView#resolution
 * @see ispring.presenter.player.video.IVideoNarrationPlayer#currentTrackResolution
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IVideoResolution
{
	/**
	 * The horizontal resolution of the video in pixels.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get videoWidth():uint;
	
	/**
	 * The vertical resolution of the video in pixels.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get videoHeight():uint;
}
	
}
