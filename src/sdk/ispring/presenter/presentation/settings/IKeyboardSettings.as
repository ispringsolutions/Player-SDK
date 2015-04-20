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
 * The IKeyboardSettings interface provides access to the keyboard navigation settings.
 * 
 * <p>To obtain the keyboard navigation settings use the <code>keyboard</code> property
 * on the INavigationSettings interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.INavigationSettings#keyboard
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IKeyboardSettings
{
	/**
	 * Indicates whether keyboard navigation is enabled.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get enabled():Boolean;
	
	
	/**
	 * Returns the IControls interface represeting the presentation control keys collection.
	 * 
	 * @see ispring.presenter.presentation.settings.IControlKeys
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get controlKeys():IControlKeys;

	/**
	 * Returns the playback action associated with the specified key sequence.
	 * 
	 * @param keyCode Specifies the key code.
	 * @param ctrlKey Specifies whether Ctrl key is pressed.
	 * @param shiftKey Specifies whether Shift key is pressed.
	 * @param altKey Specifies whether Alt key is pressed.
	 * 
	 * @return The playback action to perform when the specified key is pressed or <code>null</code> if no action is associated with the specified key sequence.
	 * 
	 * @see ispring.presenter.presentation.settings.IPlaybackAction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getPlaybackAction(keyCode:uint, ctrlKey:Boolean = false, shiftKey:Boolean = false, altKey:Boolean = false):IPlaybackAction;
}
	
}
