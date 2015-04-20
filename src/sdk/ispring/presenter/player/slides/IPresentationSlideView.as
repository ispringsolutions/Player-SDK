/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.slides 
{


/**
 * The IPresentationSlideView represents a view of a presentation slide.
 * It extends the ISlideView interface and provides access to the slide playback controller.
 * 
 * <p>The IPresentationSlideView interface can be obtained from an existing 
 * ISlideView interface of the presentation slide using type casting.</p>
 * 
 * @example The following example illustrates obtaining the IPresentationSlideView interface.
 * 
 * <listing version="3.0">
 * var slideView:ISlideView;
 * ...
 * var presentationSlideView:IPresentationSlideView = slideView as IPresentationSlideView;
 * if (presentationSlideView != null)	// Is it really an IPresentationSlideView object?
 * {
 *		// Now we can use properties of the presentationSlideView object
 * }
 * </listing>
 * 
 * @see ispring.presenter.presentation.slides.SlideType
 * @see ispring.presenter.player.slides.ISlideView
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationSlideView extends ISlideView
{
	/**
	 * The ISlidePlaybackController interface providing slide playback control facilities.
	 * 
	 * @see ispring.presenter.player.slides.ISlidePlaybackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackController():ISlidePlaybackController;
}
	
}