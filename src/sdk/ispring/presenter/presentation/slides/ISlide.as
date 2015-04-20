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
	
import flash.events.IEventDispatcher;
import ispring.presenter.presentation.IPresenter;
import ispring.presenter.presentation.meta.IMetaCommands;
import ispring.utils.assets.IGraphicAsset;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
SlideType;
ISlide2;

/**
 * The ISlide interface provides information about the presentation slide.
 * 
 * <p>To access a presentation slide use the <code>getSlide()</code> and <code>getVisibleSlide()</code> methods
 * on the ISlides interface.
 * </p>
 * 
 * <p>The ISlide interface of the currently playing slide within the presentation
 * can be obtained using the <code>currentSlide</code> property on the
 * IPresentationPlaybackController interface.
 * </p>
 * 
 * <p>The ISlide interface of the standalone slide can be accessed
 * using the <code>slide</code> property on the ISlidePlayer interface.
 * </p>
 * 
 * <p>The ISlide interface extends the <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the ISlide interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * <p>The ISlide2 interface providing additional information about the slide
 * has become available since iSpring Pro 6.1 and iSpring Platform 6.1.</p>
 * 
 * <p>The ISlide3 interface providing additional information about the slide
 * has become available since iSpring Pro 6.1.1 and iSpring Platform 6.1.1.</p>
 * 
 * @see ispring.presenter.ISlidePlayer
 * @see ispring.presenter.presentation.slides.ISlide2
 * @see ispring.presenter.presentation.slides.ISlide3
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlide extends IEventDispatcher
{
	/**
	 * The type of the slide.
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
	
	/**
	 * The title of the slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get title():String;
	
	/**
	 * The index of the slide within the presentation.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get index():uint;
	
	/**
	 * The index of the slide among the visible slides of the presentation.
	 * 
	 * @throws flash.errors.IllegalOperationError if the slide is not visible
	 * @see ispring.presenter.presentation.slides.ISlides#getVisibleSlide()
	 * @see #visible
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get visibleIndex():uint;
	
	/**
	 * Indicates whether the slide content has been loaded completely.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get isLoaded():Boolean;

	/**
	 * Indicates whether the slide is hidden.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get visible():Boolean;
	
	/**
	 * The nesting level of the slide within the presentation outline.
	 * 
	 * <p>The slide nesting level can be defined using the Presentation Explorer window of iSpring Pro.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get nestingLevel():uint;
	
	/**
	 * The slide notes information.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlideNotes
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideNotes():ISlideNotes;

	/**
	 * Slide start time, within the presentation, in seconds.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get startTime():Number;

	/**
	 * The duration of the slide in seconds.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;
	
	/**
	 * The animation steps collection of the slide.
	 * 
	 * @see ispring.presenter.presentation.slides.IAnimationSteps
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get animationSteps():IAnimationSteps;
	
	/**
	 * The width of the slide in pixels.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get width():Number;
	
	/**
	 * The height of the slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get height():Number;
	
	/**
	 * Indicates whether the slide has a thumbnail image accessible via the <code>thumbnail</code> property.
	 * 
	 * @see #thumbnail
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hasThumbnail():Boolean;
	
	/**
	 * The thumbnail image of the slide.
	 * 
	 * @see ispring.utils.assets.IGraphicAsset
	 * @see #hasThumbnail
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get thumbnail():IGraphicAsset;
	
	/**
	 * The slide show transition effect information of the slide.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlideShowTransition
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideShowTransition():ISlideShowTransition;
	
	/**
	 * The text of the slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get text():String;
	
	/**
	 * Indicates whether the slide has the associated presenter information.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hasPresenter():Boolean;
	
	/**
	 * The presenter information associated with the slide.
	 * 
	 * @see ispring.presenter.presentation.IPresenter
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presenter():IPresenter;
	
	/**
	 * The collection of the meta commands associated with the slide.
	 * 
	 * @see ispring.presenter.presentation.meta.IMetaCommands
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get metaCommands():IMetaCommands;
}

}