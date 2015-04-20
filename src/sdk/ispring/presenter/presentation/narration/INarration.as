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
 * The INarration interface provides access to the presentation audio and video narration.
 * 
 * <p>To obtain the INarration interface use the <code>narration</code> property on the IPresentation interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.IPresentation#narration
 * @see ispring.presenter.presentation.narration.IAudioTracks
 * @see ispring.presenter.presentation.narration.IVideoTracks
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface INarration
{
	/**
	 * Returns the presentation audio tracks collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get audioTracks():IAudioTracks;
	
	/**
	 * Returns the presentation video tracks collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get videoTracks():IVideoTracks;
}
	
}
