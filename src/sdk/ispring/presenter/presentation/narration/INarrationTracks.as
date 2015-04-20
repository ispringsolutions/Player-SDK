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

/**
 * The INarrationTracks interface represents a generic collection of the narration tracks.
 * 
 * @see ispring.presenter.presentation.narration.IAudioTracks
 * @see ispring.presenter.presentation.narration.IVideoTracks
 * @see ispring.presenter.presentation.narration.INarrationTrack
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */	
public interface INarrationTracks
{
	/**
	 * Returns the number of tracks in the collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns a generic INarrationTrack interface of the narration track that exists at the specified index.
	 * 
	 * @param index The index of the narration track within the collection. The index value must be in the range from 0 to the number of narration tracks minus 1.
	 * 
	 * @return The narration track at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified index is out of range.
	 * 
	 * @see ispring.presenter.presentation.narration.INarrationTrack
	 * @see ispring.presenter.presentation.narration.IAudioTracks#getAudioTrack()
	 * @see ispring.presenter.presentation.narration.IVideoTracks#getVideoTrack()
	 * @see #count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getTrack(index:uint):INarrationTrack;
}
	
}