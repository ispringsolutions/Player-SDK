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
 * The INavigationSettings interface provides access to the presentation navigation settings.
 * 
 * <p>To obtain the navigation settings use the <code>navigation</code> property
 * on the ISettings interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.ISettings#navigation
 * @see ispring.presenter.presentation.settings.IKeyboardSettings
 * @see ispring.presenter.presentation.settings.IMouseSettings
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface INavigationSettings
{
	/**
	 * Returns the keyboard navigation settings.
	 * 
	 * @see ispring.presenter.presentation.settings.IKeyboardSettings
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get keyboard():IKeyboardSettings;
		
	/**
	 * Returns the mouse navigation settings.
	 * 
	 * @see ispring.presenter.presentation.settings.IMouseSettings
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get mouse():IMouseSettings;
}
	
}
