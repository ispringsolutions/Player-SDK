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

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
	
/**
 * The IMouseSettings interface provides access to the mouse navigation settings.
 * 
 * <p>To obtain the mouse navigation settings use the <code>mouse</code> property
 * on the INavigationSettings interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.INavigationSettings#mouse
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IMouseSettings
{
	/**
	 * Indicates whether the navigation using slide background mouse clicks is enabled.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get enabled():Boolean;
	
	/**
	 * Returns the playback action associated with the mouse click on the slide background area.
	 * The associated playback action is executed only if the <code>enabled</code> property is set to <code>true</code>.
	 * 
	 * @see #enabled
	 * @see ispring.presenter.presentation.settings.IPlaybackAction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get mouseClickAction():IPlaybackAction;
}

}