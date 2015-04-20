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

import flash.media.Video;
import flash.utils.ByteArray;
import ispring.presenter.player.media.IMediaPlaybackController;

/**
 * The IVideoPlaybackControllerFactory2 interface is an extended version of an abstract factory creating various types of video controllers.
 * It allows creation of the media playback controller associated with an FLV file embedded in a ByteArray.
 * 
 * <p>The IVideoPlaybackControllerFactory2 interface has superseded the IVideoPlaybackControllerFactory interface
 * since iSpring Pro 6.1 and iSpring Platform 6.1.</p>
 * 
 * <p>The <code>videoPlaybackControllerFactory</code> property setter of the IPresentationPlaybackCore interface accepts
 * both the new IVideoPlaybackControllerFactory2 and the legacy IVideoPlaybackControllerFactory interfaces to maintain compatibility 
 * with the legacy SDK. In case a custom video playback controller factory implementing only the legacy IVideoPlaybackControllerFactory interface
 * is passed as a value of the the <code>IPresentationPlaybackCore.videoPlaybackControllerFactory</code> property setter,
 * the built-in video playback controller factory is used to create a media playback controller for an FLV file within a ByteArray.</p>
 * 
 * <p>The <code>IPresentationPlaybackCore.videoPlaybackControllerFactory</code> property getter returns the IVideoIVideoPlaybackControllerFactory interface
 * to maintain compatibility with the code compiled with the legacy SDK. The IVideoIVideoPlaybackControllerFactory2 interface can be 
 * obtained from the IVideoIVideoPlaybackControllerFactory interface using type casting.</p>
 * 
 * @see ispring.presenter.player.core.IPresentationPlaybackCore#videoPlaybackControllerFactory
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface IVideoPlaybackControllerFactory2 extends IVideoPlaybackControllerFactory
{
	/**
	 * Creates a media playback controller for the FLV/MP4 video file.
	 * 
	 * @param video A Video object used to display the video.
	 * @param data A ByteArray containing the FLV file data.
	 * @param loops The number of loops to play the video.
	 * @param trimStart A portion of video to cut at the beginning of the video in seconds.
	 * @param trimEnd A portion of video to cut at the end of the video in seconds.
	 * @return The IMediaPlaybackController interface controlling the video.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/media/Video.html flash.media.Video
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/utils/ByteArray.html flash.utils.ByteArray
	 * @see ispring.presenter.player.media.IMediaPlaybackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function createByteArrayVideoController(video:Video, data:ByteArray, loops:uint, trimStart:Number, trimEnd:Number):IMediaPlaybackController;
}

}