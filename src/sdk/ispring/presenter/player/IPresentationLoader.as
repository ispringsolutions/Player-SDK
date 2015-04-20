/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player 
{

import flash.events.IEventDispatcher;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
SlideState;

/**
 * Dispatched when a slide of the presentation is loaded.
 * 
 * @eventType ispring.presenter.player.events.PresentationLoaderEvent.SLIDE_LOADED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="slideLoaded", type="ispring.presenter.player.events.PresentationLoaderEvent")]

/**
 * Dispatched when a slide loading progress is updated.
 * 
 * @eventType ispring.presenter.player.events.PresentationLoaderEvent.PROGRESS
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="slideLoadingProgress", type="ispring.presenter.player.events.PresentationLoaderEvent")]

/**
 * The IPresentationLoader interface provides information about the presentation
 * loading progress and the state of the presentation slides.
 * 
 * <p>The IPresentationLoader interface can be obtained via
 * the <code>presentationLoader</code> property of the <code>IPresentationPlayer</code>
 * interface.</p> 
 * 
 * @see ispring.presenter.IPresentationPlayer
 * @see ispring.presenter.player.SlideState
 * @see ispring.presenter.player.events.PresentationLoaderEvent
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationLoader extends IEventDispatcher
{
	/**
	 * The presentation loading progress in the range 0...1.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presentationLoadingProgress():Number;
	
	/**
	 * The total number of slides in the presentation.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slidesCount():uint;
	
	/**
	 * Returns the state of the specified slide. 
	 * See the <code>ispring.presenter.player.SlideState</code> constants for more details.
	 * 
	 * @param index The index of the slide within the presentation.
	 * 
	 * @return The state of the specified slide.
	 * 
	 * @throws RangeError Throws if the specified slide index is out of range.
	 * 
	 * @see ispring.presenter.player.SlideState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getSlideState(index:uint):String;
	
	/**
	 * Returns the loading progress of the specified slide.
	 * 
	 * @param index The index of the slide within the presentation.
	 * 
	 * @return The loading progress of the specified slide in the range 0...1.
	 * 
	 * @throws RangeError Throws if the specified slide index is out of range.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getSlideLoadingProgress(index:uint):Number; 
}
	
}