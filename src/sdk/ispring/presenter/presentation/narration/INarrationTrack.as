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

import ispring.presenter.presentation.ITimestamp;

/**
 * The INarrationTrack interface represents a generic narration track.
 * 
 * @see ispring.presenter.presentation.narration.IAudioTrack
 * @see ispring.presenter.presentation.narration.IVideoTrack
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface INarrationTrack
{
	/**
	 * Returns the presentation position to start the track at.
	 * 
	 * @see ispring.presenter.presentation.ITimestamp
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get startTimestamp():ITimestamp;
		
	/**
	 * Returns the presentation position to finish the track at.
	 * 
	 * @see ispring.presenter.presentation.ITimestamp
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get endTimestamp():ITimestamp;
}
	
}