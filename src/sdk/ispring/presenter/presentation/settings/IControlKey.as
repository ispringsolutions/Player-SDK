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
 * The IControlKey interface provides information about a playback action associated
 * with a keyboard key.
 * 
 * @see ispring.presenter.presentation.settings.IControlKeys
 * @see ispring.presenter.presentation.settings.IPlaybackAction
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IControlKey
{
	/**
	 * Specifies the key code.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/Keyboard.html flash.ui.Keyboard
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get keyCode():uint;
	
	/**
	 * Indicates the location of the key on the keyboard.
	 * See the <code>flash.ui.KeyLocation</code> constants for this property.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/KeyLocation.html flash.ui.KeyLocation
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get keyLocation():uint;
	
	/**
	 * Indicates whether Ctrl key is pressed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get ctrlKey():Boolean;
		
	/**
	 * Indicates whether Alt key is pressed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get altKey():Boolean;
		
	/**
	 * Indicates whether Shift key is pressed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get shiftKey():Boolean;
		
	/**
	 * The playback action associated with the key sequence defined by the <code>keyCode</code>, 
	 * <code>keyLocation</code>, <code>ctrlKey</code>, <code>altKey</code>, and the <code>shiftKey</code> properties.
	 * 
	 * @see #keyCode
	 * @see #keyLocation
	 * @see #ctrlKey
	 * @see #altKey
	 * @see #shiftKey
	 * @see ispring.presenter.presentation.settings.IPlaybackAction
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackAction():IPlaybackAction;
}
	
}
