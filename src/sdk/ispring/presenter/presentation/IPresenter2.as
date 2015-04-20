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

/**
 * The IPresenter2 interface extends the IPresenter interface providing
 * the extended presenter information.
 * 
 * <p>The IPresenter2 interface can be obtained from an existing
 * IPresentation interface using type casting.</p>
 * 
 * @example The following example illustrates accessing extended presenter information via the IPresenter2 interface.
 * <listing version="3.0">
 * var presenter:IPresenter;
 * ...
 * 
 * var phone:String = "";
 * var presenter2:IPresenter2 = presenter as IPresenter2;
 * 
 * // Checking whether the extended presenter information is available
 * if (presenter2 != null) 
 * {
 *     // Access the extended information of the presenter
 *     phone = presenter2.phone;
 * }
 * else
 * {
 *     // extended presenter information is not available
 * }
 * </listing>
 * 
 * @see ispring.presenter.presentation.IPresenter
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface IPresenter2 extends IPresenter
{
	/**
	 * The phone number of the presenter.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get phone():String;
}

}