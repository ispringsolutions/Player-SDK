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
import ispring.presenter.player.media.IMediaPlaybackController;

/**
 * The IVideoView interface represents a video view providing access to the display object of 
 * the video view and the related video control interfaces.
 * 
 * <p>A view of the video narration track can be created with the <code>createView()</code>
 * method on the IVideoTrack interface.
 * </p>
 * 
 * <p>The IVideoView interface extends the <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the IVideoView interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * @see ispring.presenter.presentation.narration.IVideoTrack#createView()
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */	
public interface IVideoView extends IEventDispatcher
{
	/**
	 * The <code>flash.display.DisplayObject</code> object visualizing the video.
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
	 * Returns the IMediaPlaybackController interface providing video control facilities.
	 * 
	 * @see ispring.presenter.player.media.IMediaPlaybackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get controller():IMediaPlaybackController;
	
	/**
	 * Returns the IVideoResolution interface providing information about the video resolution.
	 * 
	 * @see ispring.presenter.player.video.IVideoResolution
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get resolution():IVideoResolution;
}

}
