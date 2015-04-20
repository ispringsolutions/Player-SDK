/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.slides
{

import ispring.presenter.presentation.webobjects.IWebObjects;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
ISlide3;


/**
 * The ISlide2 interface extends the ISlide interface providing additional information about
 * the presentation slide.
 * 
 * <p>The ISlide2 interface can be obtained from an existing ISlide interface using type casting.</p>
 * 
 * <p>The ISlide3 interface providing additional information has become available since iSpring Pro 6.1.1 and iSpring Platform 6.1.1.</p>
 * 
 * @example The following example illustrates accessing extended slide information via the ISlide2 interface.
 * <listing version="3.0">
 * import ispring.presenter.presentation.slides.ISlide;
 * import ispring.presenter.presentation.slides.ISlide2;
 * import ispring.presenter.presentation.webobjects.IWebObjects;
 * 
 * var slide:ISlide;
 * ...
 * 
 * // Checking whether the extended slide information is available
 * var slide2:ISlide2 = slide as ISlide2;
 * if (slide2 != null)
 * {
 *     // Access the extended information about the slide
 *     var webObjects:IWebObjects = slide2.webObjects;
 *     ...
 * }
 * else
 * {
 *     // Extended slide information is not available because the presentation
 *     // was created with an earlier version of iSpring Pro or iSpring Platform
 * }
 * </listing>
 * 
 * @see ispring.presenter.presentation.slides.ISlide
 * @see ispring.presenter.presentation.slides.ISlide3
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface ISlide2 extends ISlide
{
	/**
	 * The collection of the slide web objects.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get webObjects():IWebObjects;
}

}