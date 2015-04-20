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

import flash.display.MovieClip;
import flash.media.Video;
import ispring.presenter.player.media.IMediaPlaybackController;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
IVideoPlaybackControllerFactory2;

/**
 * The IVideoPlaybackControllerFactory interface is an abstract factory creating various types of video controllers.
 * 
 * <p>The IVideoPlaybackControllerFactory interface of the presentation player is accessible via the <code>videoPlaybackControllerFactory</code>
 * property on the IPresentationPlaybackCore interface.</p>
 * 
 * <p>This interface has been superseded by the IVideoPlaybackControllerFactory2 interface since iSpring Pro 6.1 and iSpring Platform 6.1.</p>
 * 
 * @see ispring.presenter.player.core.IPresentationPlaybackCore#videoPlaybackControllerFactory
 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IVideoPlaybackControllerFactory
{
	/**
	 * Creates a media playback controller for the MovieClip object with embedded SWF video.
	 * 
	 * @param target A MovieClip object with embedded SWF video.
	 * @param frameRate Frame rate of the video.
	 * @param loops The number of loops to play the video.
	 * @param trimStart A portion of video to cut at the beginning of the video in seconds.
	 * @param trimEnd A portion of video to cut at the end of the video in seconds.
	 * @return The IMediaPlaybackController interface controlling the video.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/MovieClip.html flash.display.MovieClip
	 * @see ispring.presenter.player.media.IMediaPlaybackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createEmbeddedVideoController(target:MovieClip, frameRate:Number, loops:uint, trimStart:Number, trimEnd:Number):IMediaPlaybackController;

	/**
	 * Creates a media playback controller for the FLV/MP4 video file.
	 * 
	 * @param video A Video object used to display the video.
	 * @param url A URL of the video file.
	 * @param loops The number of loops to play the video.
	 * @param trimStart A portion of video to cut at the beginning of the video in seconds.
	 * @param trimEnd A portion of video to cut at the end of the video in seconds.
	 * @return The IMediaPlaybackController interface controlling the video.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/media/Video.html flash.media.Video
	 * @see ispring.presenter.player.media.IMediaPlaybackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createExternalVideoController(video:Video, url:String, loops:uint, trimStart:Number, trimEnd:Number):IMediaPlaybackController;
}

}