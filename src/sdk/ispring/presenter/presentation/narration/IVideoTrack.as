/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.narration
{

import ispring.presenter.player.video.IVideoView;
import ispring.presenter.player.video.IVideoPlaybackControllerFactory;


/**
 * The IVideoTrack interface represents a video track.
 * 
 * @see ispring.presenter.presentation.narration.INarrationTrack
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IVideoTrack extends INarrationTrack
{
	/**
	 * Creates a view of the video track.
	 * 
	 * @param videoControllerFactory A factory object implementing the IVideoPlaybackControllerFactory interface which creates a media playback controller associated with the video track.
	 * 
	 * @return A view of the video track.
	 * 
	 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory
	 * @see ispring.presenter.player.video.IVideoView
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createView(videoControllerFactory:IVideoPlaybackControllerFactory):IVideoView;
}
	
}