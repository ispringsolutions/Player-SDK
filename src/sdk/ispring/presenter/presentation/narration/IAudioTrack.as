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
	
import ispring.presenter.player.audio.IAudioPlaybackControllerFactory;
import ispring.presenter.player.media.IMediaPlaybackController;

/**
 * The IAudioTrack interface represents an audio track.
 * 
 * @see ispring.presenter.presentation.narration.INarrationTrack
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IAudioTrack extends INarrationTrack
{
	/**
	 * Creates a media playback controller associated with the audio track.
	 * 
	 * @param factory A factory object implementing the IAudioPlaybackControllerFactory interface which creates a media playback controller associated with the audio track.
	 * 
	 * @return A media playback controller which controls the playback of the sound asset associated with the audio track.
	 * 
	 * @see ispring.presenter.player.media.IMediaPlaybackController
	 * @see ispring.presenter.player.audio.IAudioPlaybackControllerFactory
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createPlaybackController(factory:IAudioPlaybackControllerFactory):IMediaPlaybackController;
}
	
}
