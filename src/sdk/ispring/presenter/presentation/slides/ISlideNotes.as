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
 * The ISlideNotes interface provides information about the slide notes.
 * 
 * <p>The ISlideNotes interface can be obtained using the <code>slideNotes</code>
 * property on the ISlide interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.slides.ISlide
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlideNotes
{
	/**
	 * Returns plain text representation of the slide notes.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get text():String;
	
	/**
	 * Returns HTML representation of the slide notes.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get html():String;
}
	
}
