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
 * The ISlideShows interface represents a collection of the custom slide shows.
 * A slide show is a named sequence of slides in a presentation.
 * 
 * <p>The ISlideShows interface can be obtained using the <code>slideShows</code> property on the
 * IPresentation interface.</p>
 * 
 * @see ispring.presenter.presentation.ISlideShow
 * @see ispring.presenter.presentation.IPresentation
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlideShows
{
	/**
	 * Returns the number of slide slows within the collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns the slide show that exists at the specified index.
	 * 
	 * @param index The index of the slide show. The index value must be in the range from 0 to the number of slide shows minus 1.
	 * 
	 * @return The slide show at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified slide show index is out of range.
	 * 
	 * @see ispring.presenter.presentation.ISlideShow
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getSlideShow(index:uint):ISlideShow;
	
	/**
	 * Returns the slide show with the specified name.
	 * 
	 * @param slideShowName The name of the slide show.
	 * 
	 * @return The slide show with the specified name or <code>null</code> if the slide shown does not exist in the collection.
	 * 
	 * @see ispring.presenter.presentation.ISlideShow
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getSlideShowByName(slideShowName:String):ISlideShow;
}
	
}
