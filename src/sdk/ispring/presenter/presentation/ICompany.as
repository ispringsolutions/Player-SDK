/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation
{

import ispring.utils.assets.IGraphicAsset;

/**
 * The ICompany interface provides the company information associated with the presentation or a presenter.
 * 
 * <p>To obtain company information of the loaded presentation use the <code>company</code> property
 * on the IPresentation interface. To obtain company information of a particular presenter
 * use the <code>company</code> property on the IPresenter interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.IPresentation#company
 * @see ispring.presenter.presentation.IPresenter#company
 */
public interface ICompany
{
	/**
	 * Indicates whether the company has an associated company logo. To access the logo use the <code>logo</code> property.
	 * 
	 * @see #logo
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hasLogo():Boolean;
	
	/**
	 * Returns the IGraphicAsset interface providing access to the company logo.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the company has no logo. To determine whether the presentation
	 * has a logo use the <code>hasLogo</code> property.
	 * 
	 * @see #hasLogo
	 * @see ispring.utils.assets.IGraphicAsset
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get logo():IGraphicAsset;
	
	/**
	 * Returns the web site address of the company or an empty string if the web site information is not specified.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get webSite():String;
	
	/**
	 * Returns the target window name where the company web site is to be opened when a user clicks
	 * the company logo.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get webSiteTarget():String;
}
	
}
