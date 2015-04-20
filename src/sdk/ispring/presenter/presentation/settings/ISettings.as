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
 * The ISettings interface provides access to the presentation settings.
 * 
 * <p>To obtain the presentation settings use the <code>settings</code> property
 * on the IPresentation interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.IPresentation#settings 
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISettings
{
	/**
	 * Indicates whether the presentation should start in full screen mode.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get fullScreen():Boolean;
	
	/**
	 * Returns the navigation settings of the presentation.
	 * 
	 * @see ispring.presenter.presentation.settings.INavigationSettings
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get navigation():INavigationSettings;
	
	/**
	 * Returns the presentation playback settings.
	 * 
	 * @see ispring.presenter.presentation.settings.IPlaybackSettings
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get playback():IPlaybackSettings;
	
	/**
	 * Returns the presentation web links.
	 * 
	 * @see ispring.presenter.presentation.settings.IWebLinks
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get webLinks():IWebLinks;
}
	
}