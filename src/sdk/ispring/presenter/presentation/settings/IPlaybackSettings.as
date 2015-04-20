/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.settings 
{
	
/**
 * The IPlaybackSettings interface provides access to the presentation playback settings.
 * 
 * <p>To obtain the playback settings use the <code>playback</code> property
 * on the ISettings interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.ISettings#playback
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPlaybackSettings
{
	/**
	 * Indicates whether the presentation should start automatically.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get autoStart():Boolean;
	
	/**
	 * Indicates whether to resume presentation playback from the last slide viewed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get resumePresentationPlayback():Boolean;
	
	/**
	 * Indicates whether the presentation is looped.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get loopPresentation():Boolean;
}
	
}