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
ActionType;

/**
 * The IPlaybackAction interface provides information about the playback action.
 * 
 * @see ispring.presenter.presentation.settings.IKeyboardSettings#getPlaybackAction()
 * @see ispring.presenter.presentation.settings.IControlKey#playbackAction
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPlaybackAction
{
	/**
	 * The action to perform.
	 * See the <code>ispring.presenter.presentation.settings.ActionType</code> constants for this property. 
	 * 
	 * @see ispring.presenter.presentation.settings.ActionType
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get type():String;
}
	
}
