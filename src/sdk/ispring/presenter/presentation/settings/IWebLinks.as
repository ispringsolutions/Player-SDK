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
 * The IWebLinks interface provides information about the presentation web links.
 * 
 * <p>To obtain the IWebLinks interface use the <code>webLinks</code> property
 * on the ISettings interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.ISettings#webLinks
 * @see ispring.presenter.presentation.settings.IWebLink
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IWebLinks 
{
	/**
	 * Returns a web link which is opened when the user clicks the slide background so the presentation acts like a banner.
	 * If no web link is assigned to the slide background, the value of this property is <code>null</code>.
	 * 
	 * @see ispring.presenter.presentation.settings.IWebLink
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideAreaLink():IWebLink;
	
	/**
	 * Returns a web link which is opened when the presentation is finished.
	 * If no web link is associated with the end of the presentation, the value of this property is <code>null</code>.
	 * 
	 * @see ispring.presenter.presentation.settings.IWebLink
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presentationEndLink():IWebLink;
}
	
}