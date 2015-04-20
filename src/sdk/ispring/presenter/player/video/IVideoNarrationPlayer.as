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
	
import flash.display.DisplayObject;
import flash.events.IEventDispatcher;
import ispring.presenter.presentation.narration.IVideoTrack;

/**
 * Dispatched to notify a listener that the current track has been changed.
 * 
 * @eventType ispring.presenter.player.video.events.VideoNarrationPlayerEvent.CURRENT_TRACK_CHANGED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="currentTrackChanged", type="ispring.presenter.player.video.events.VideoNarrationPlayerEvent")]

/**
 * The IVideoNarrationPlayer represents a video narration player providing
 * video narration visualization and control facilities.
 * 
 * <p>To obtain the IVideoNarrationPlayer interface associated with a presentation view use
 * the <code>videoNarrationPlayer</code> property on the IPresentationView interface.</p>
 * 
 * @see ispring.presenter.player.IPresentationView#videoNarrationPlayer
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IVideoNarrationPlayer extends IEventDispatcher
{
	/**
	 * The <code>flash.display.DisplayObject</code> object visualizing the video narration tracks.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/DisplayObject.html flash.display.DisplayObject
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get displayObject():DisplayObject;
	
	/**
	 * Changes the current resolution of the video track with the specified index. This method does nothing if the track is not a IStreamingVideoTrack.
	 * 
	 * @param videoTrackIndex The index of the video track in the video narration tracks collection. See the IVideoTracks interface for more details.
	 * @param resolutionIndex The index of the video resolution in the resolutions collection of a video track. Currently it must always be 0.
	 * 
	 * @throws RangeError Throws if the <code>videoTrackIndex</code> is out of range.
	 * @throws RangeError Throws if the <code>resolutionIndex</code> is out of range.
	 * 
	 * @see ispring.presenter.presentation.narration.IVideoTracks
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function changeVideoResolution(videoTrackIndex:uint, resolutionIndex:uint):void
	
	/**
	 * Returns an index of the currently playing video track. The <code>uint.MAX_VALUE</code> is returned if no video track is currently playing.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentTrackIndex():uint;
	
	/**
	 * Returns the IVideoTrack interface providing information about the current video track. The <code>null</code> value is returned if no video track is currently playing.
	 * 
	 * @see ispring.presenter.presentation.narration.IVideoTrack
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentTrack():IVideoTrack;
	
	/**
	 * Returns the IVideoResolution interface providing information about the current video track resolution. The <code>null</code> is returned if no video track is currently playing.
	 * 
	 * @see ispring.presenter.player.video.IVideoResolution
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentTrackResolution():IVideoResolution;

	/**
	 * Resizes the narration player.
	 * 
	 * @param width A new width of the narration player in pixels.
	 * @param height A new height of the narration player in pixels.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function resize(width:Number, height:Number):void;
}
	
}