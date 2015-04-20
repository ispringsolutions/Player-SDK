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

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
ISlide4;


/**
 * The ISlide3 interface extends the ISlide2 interface providing additional information about
 * the presentation slide.
 * 
 * <p>The ISlide3 interface can be obtained from an existing ISlide or ISlide2 interface using type casting.</p>
 * 
 * @example The following example illustrates accessing extended slide information via the ISlide3 interface.
 * <listing version="3.0">
 * import ispring.presenter.presentation.slides.ISlide;
 * import ispring.presenter.presentation.slides.ISlide2;
 * import ispring.presenter.presentation.slides.ISlide3; 
 * 
 * var slide:ISlide;
 * ...
 * 
 * // Checking whether the extended slide information is available
 * var slide3:ISlide3 = slide as ISlide3;
 * if (slide3 != null)
 * {
 *     // Access the extended information about the slide
 *     var hasEmbeddedFlashClip:Boolean = slide3.hasEmbeddedFlashClip;
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
 * @see ispring.presenter.presentation.slides.ISlide2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * .1
 * @productversion iSpring&nbsp;Platform 6.1.1
 */
public interface ISlide3 extends ISlide2
{
	/**
	 * Indicates whether the slide has embedded Flash clips.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * .1
	 * @productversion iSpring&nbsp;Platform 6.1.1
	 */
	function get hasEmbeddedFlashClips():Boolean;
}

}