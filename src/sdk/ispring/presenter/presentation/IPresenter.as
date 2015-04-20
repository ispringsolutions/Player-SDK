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


//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
IPresenter2;

/**
 * The IPresenter interface provides information about the author of the presentation.
 * 
 * <p>The presentation can contain multiple presenters associated with different slides.
 * The <code>IPresenters</code> interface provides access to the presenters collection.
 * </p>
 * 
 * <p>To obtain the presenter information of a particular presentation slide use the
 * <code>presenter</code> property on the ISlide interface.
 * </p>
 * 
 * <p>The IPresenter2 interface provides extended presenter information 
 * and is available since iSpring Pro 6.1 and iSpring Platform 6.1.</p>
 * 
 * @see ispring.presenter.presentation.IPresenter2
 * @see ispring.presenter.presentation.IPresenters
 * @see ispring.presenter.presentation.slides.ISlide#presenter
 * @see ispring.presenter.presentation.ICompany
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresenter
{
	/**
	 * The name of the presenter.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get name():String;

	/**
	 * The job title of the presenter.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get title():String;

	/**
	 * The biography of the presenter.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get biography():String;
	
	/**
	 * The presenter's web site address.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get webSite():String;

	/**
	 * The email address of the presenter.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get email():String;
	
	/**
	 * Indicates whether the presenter has associated company information.
	 * 
	 * @see #company
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hasCompanyInfo():Boolean;

	/**
	 * Returns the ICompany interface providing the company information of the presenter. To determine
	 * whether the presenter has associated company information use the <code>hasCompanyInfo</code> property.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the presenter has no associated company information.
	 * 
	 * @see ispring.presenter.presentation.ICompany
	 * @see #hasCompanyInfo
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get company():ICompany;
	
	/**
	 * Indicates whether the presenter has a photo. The photo can be accessed using the <code>photo</code> property.
	 * 
	 * @see #photo
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hasPhoto():Boolean;

	/**
	 * Returns the IGraphicAsset interface providing access to the presenter's photo. To determine whether the presenter
	 * has a photo use the <code>hasPhoto</code> property
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the presenter has no photo.
	 * 
	 * @see ispring.utils.assets.IGraphicAsset
	 * @see #hasPhoto
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get photo():IGraphicAsset;
}
	
}