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
 * The IPresenters interface is a collection of the presentation presenters.
 * 
 * <p>The IPresenters interface of the loaded presentation can be obtained using
 * the <code>presenters</code> property on the IPresentation interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.IPresenter
 * @see ispring.presenter.presentation.IPresentation
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresenters
{
	/**
	 * Returns the number of presenters within the collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns the <code>IPresenter</code> interface of the presenter that exists at the specified index.
	 * 
	 * @param index The index of the presenter within the collection. The index value must be in the range from 0 to the number of presenters minus 1.
	 * 
	 * @return The presenter at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified presenter index is out of range.
	 * 
	 * @see ispring.presenter.presentation.IPresenter
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getPresenter(index:uint):IPresenter;
}
	
}