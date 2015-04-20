/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.audio
{
	
import ispring.presenter.player.media.IMediaPlaybackController;
import ispring.utils.assets.ISoundAsset;

/**
 * The IAudioPlaybackControllerFactory interface is an abstract factory creating audio controllers.
 * 
 * <p>The IAudioPlaybackControllerFactory interface of the presentation player is accessible via the <code>audioPlaybackControllerFactory</code>
 * property on the IPresentationPlaybackCore interface.</p>
 * 
 * @see ispring.presenter.player.core.IPresentationPlaybackCore#audioPlaybackControllerFactory
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IAudioPlaybackControllerFactory
{
	/**
	 * Creates a media playback controller for the audio asset.
	 * 
	 * @param asset A sound asset object used to play the audio.
	 * @param loops The number of loops to play the audio.
	 * @param trimStart A portion of an audio to cut at the beginning of the audio in seconds.
	 * @param trimEnd A portion of an audio to cut at the end of the audio in seconds.
	 * @return The IMediaPlaybackController interface controlling the audio.
	 * 
	 * @see ispring.presenter.player.media.IMediaPlaybackController
	 * @see ispring.utils.assets.ISoundAsset
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function createAudioController(asset:ISoundAsset, loops:uint, trimStart:Number, trimEnd:Number):IMediaPlaybackController;
}
	
}
