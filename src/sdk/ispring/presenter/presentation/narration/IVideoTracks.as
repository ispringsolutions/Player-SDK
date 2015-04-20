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
 * The IVideoTracks interface represents a collection of video narration tracks.
 * 
 * @see ispring.presenter.presentation.narration.INarrationTracks
 * @see ispring.presenter.presentation.narration.IVideoTrack
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */	
public interface IVideoTracks extends INarrationTracks
{
	/**
	 * Returns the IVideoTrack interface of the video narration track that exists at the specified index.
	 * 
	 * @param index The index of the video narration track within the collection. The index value must be in the range from 0 to the number of video narration tracks minus 1.
	 * 
	 * @return The video narration track at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified index is out of range.
	 * 
	 * @see ispring.presenter.presentation.narration.IVideoTrack
	 * @see ispring.presenter.presentation.narration.INarrationTracks#count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getVideoTrack(index:uint):IVideoTrack;
}
	
}
