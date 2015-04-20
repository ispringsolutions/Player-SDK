/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.media
{

import flash.events.IEventDispatcher;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
PlaybackState;

/**
 * Dispatched when the state of the media playback controller is changed.
 * 
 * @eventType ispring.presenter.player.media.MediaPlaybackEvent2.PLAYBACK_STATE_CHANGED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
[Event(name="mediaPlaybackStateChanged", type="ispring.presenter.player.media.MediaPlaybackEvent2")]


/**
 * The IMediaPlaybackController allows controlling audio and video playback.
 * 
 * <p>To create a media playback controller for an existing sound asset, use the <code>createAudioController()</code>
 * method on the IAudioPlaybackControllerFactory interface. To create a media playback controller for an existing
 * audio narration track, use the <code>createPlaybackController()</code> method on the IAudioTrack interface.</p>
 * 
 * <p>To create a media playback controller for an existing MovieClip, use the <code>createEmbeddedVideoController()</code>
 * method on the IVideoPlaybackControllerFactory interface. To create a media playback controller for an FLV/MP4 video, use the
 * <code>createExternalVideoController()</code> method on the IVideoPlaybackControllerFactory interface.
 * </p>
 * 
 * <p>To obtain a media playback controller from an existing video view use the <code>controller</code> property on
 * the IVideoView interface.</p>
 *  
 * @see ispring.presenter.player.audio.IAudioPlaybackControllerFactory#createAudioController()
 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory#createEmbeddedVideoController()
 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory#createExternalVideoController()
 * @see ispring.presenter.player.video.IVideoView#controller
 * @see ispring.utils.assets.ISoundAsset
 * @see ispring.presenter.presentation.narration.IAudioTrack#createPlaybackController()
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/MovieClip.html flash.display.MovieClip
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IMediaPlaybackController extends IEventDispatcher
{
	/**
	 * Resumes multimedia playback.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function play():void;

	/**
	 * Resumes multimedia playback from the specified position.
	 *
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function playFrom(position:Number):void;

	/**
	 * Suspends multimedia playback.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function pause():void;
	
	/**
	 * Performs seeking to the specified time.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function seek(time:Number):void;
	
	/**
	 * The current playback state of the controller.
	 * See the <code>ispring.presenter.player.media.PlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.media.PlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackState():String;
	
	/**
	 * Stops multimedia playback.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function stop():void;
	
	/**
	 * Returns the current playback position of the media.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get position():Number;
	
	/**
	 * Returns the total duration of the media including all loops.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;

	/**
	 * The position within the current loop.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get loopPosition():Number;

	/**
	 * The duration of the current loop.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get loopDuration():Number;

	/**
	 * The current level of the sound volume.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get volume():Number;
	/**
	 * @private
	 */
	function set volume(value:Number):void;
}
	
}