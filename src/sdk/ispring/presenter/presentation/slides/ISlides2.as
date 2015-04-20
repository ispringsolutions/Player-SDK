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

/**
 * The ISlides2 interface provides additional information about the presentation slides collection extending the ISlides interface.
 * 
 * <p>The ISlides2 interface can be obtained from the ISlides interface using type casting.</p>
 * 
 * @example The following example illustrates accessing the extended slides collection information via the ISlides2 interface.
 * <listing version="3.0">
 * import ispring.presenter.presentation.slides.ISlides;
 * import ispring.presenter.presentation.slides.ISlides2;
 * 
 * var slides:ISlides;
 * ...
 * 
 * var slides2:ISlides2 = slides as ISlides2;
 * if (slides2 != null)
 * {
 *     // Access the ISlides2 interface properties and methods through the slide2 object
 * }
 * else
 * {
 *     // Extended information is not available because the presentation was
 *     // created with an earlier version of iSpring Pro or iSpring Platform
 * }
 * </listing>
 * 
 * @see ispring.presenter.presentation.slides.ISlides
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface ISlides2 extends ISlides
{
	/**
	 * Returns the index of the specified slide among the visible slides of the presentation.
	 * 
	 * @param index The index of the slide within the presentation..
	 * @return The value of the <code>visibleIndex</code> property of the slide specified by the <code>index</code> parameter.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide with the specified <code>index</code> is not visible.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlide#visibleIndex
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function getVisibleSlideIndex(index:uint):uint;
}

}