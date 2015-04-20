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
 * The IWebLink interface represents a web link associated with the presentation.
 * 
 * <p>To obtain the IWebLink interface use the <code>slideAreaLink</code> and
 * the <code>presentationEndLink</code> properties of the IWebLinks interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.settings.IWebLinks#slideAreaLink
 * @see ispring.presenter.presentation.settings.IWebLinks#presentationEndLink
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IWebLink 
{
	/**
	 * The web link URL.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get url():String;
	
	/**
	 * The browser window or HTML frame that displays the document indicated by the <code>url</code> parameter.
	 * It can be the name of a specific window or use one of the following values:
	 * <ul>
	 * <li><code>"_blank"</code> specifies the current frame in the current window.</li>
	 * <li><code>"_self"</code> specifies a new window.</li>
	 * <li><code>"_parent"</code> specifies the parent of the current frame.</li>
	 * <li><code>"_top"</code> specifies the top-level frame in the current window.</li>
	 * </ul>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get target():String;
}
	
}