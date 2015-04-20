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
 * The ISlideShow interface provides information about the slide show.
 * A slide show is a named sequence of slides in a presentation.
 * 
 * @see ispring.presenter.presentation.ISlideShows
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlideShow
{
	/**
	 * A name of the slide show.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get name():String;
	
	/**
	 * Returns an array of <code>uint</code> slide indices in the slide show.
	 * 
	 * <p>Though the slide index array modification affects the slide sequence in the current implementation
	 * of the ISlideShow interface, it is not recommended to rely on such behavior since it can be changed
	 * in future versions of the API. 
	 * </p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideIndices():Array;
}
	
}
