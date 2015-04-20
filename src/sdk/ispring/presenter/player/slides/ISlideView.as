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
	
import flash.display.DisplayObject;
import flash.events.IEventDispatcher;
import ispring.presenter.presentation.slides.SlideType;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
SlideType;
IPresentationSlideView;

/**
 * The ISlideView interface represents a generic slide view.
 * It provides information about the display object of the slide and a type of the slide.
 * 
 * <p>To obtain the ISlideView interface of the currently playing slide use the <code>currentSlideView</code> property
 * on the IPresentationPlaybackController interface.</p>
 * 
 * <p>The ISlideView interface extends the <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the ISlideView interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.slides.IPresentationSlideView
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlideView extends IEventDispatcher
{
	/**
	 * The <code>flash.display.DisplayObject</code> object visualizing the slides.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/DisplayObject.html flash.display.DisplayObject
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get displayObject():DisplayObject;
	
	/**
	 * The type of the slide view.
	 * See the <code>ispring.presenter.presentation.slides.SlideType</code> constants for this property. 
	 * 
	 * @see ispring.presenter.presentation.slides.SlideType
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get type():String;
}
	
}