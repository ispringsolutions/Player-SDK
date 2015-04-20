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
	
import ispring.presenter.presentation.ITimestamp;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
ISlides2;

/**
 * The ISlides interface represents a collection of presentation slides.
 * 
 * <p>The ISlides interface can be obtained using the <code>slides</code> property on the
 * IPresentation interface.
 * </p>
 * 
 * <p>Starting from iSpring Pro 6.1 and iSpring Plarform 6.1 the ISlides2 interface
 * with extended functionality has become available.</p>
 * 
 * @see ispring.presenter.presentation.IPresentation
 * @see ispring.presenter.presentation.ITimestamp
 * @see ispring.presenter.presentation.slides.ISlide
 * @see ispring.presenter.presentation.slides.ISlides2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlides
{
	/**
	 * Returns the number of slides within the collection including visible and hidden slides.
	 * 
	 * <p>The total number of the visible slides can be obtained using the <code>visibleSlidesCount</code>
	 * property on the ISlides interface.
	 * </p>
	 * 
	 * @see #visibleSlidesCount
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;

	/**
	 * Returns the ISlide interface of the slide at the specified index.
	 * 
	 * @param index The index of the slide within the presentation. The index value must be in the range from 0 to the number of slides minus 1.
	 * 
	 * @return The slide at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified slide index is out of range.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlide
	 * @see #getVisibleSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getSlide(index:uint):ISlide;
	
	/**
	 * Returns the number of slides not marked as "hidden".
	 * 
	 * <p>The total number of slides including visible and hidden can be obtained using
	 * the <code>count</code> property on the ISlides interface.
	 * </p>
	 * 
	 * @see #count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get visibleSlidesCount():uint;
	
	/**
	 * Returns the ISlide interface of the visible slide at the specified index. A visible slide is a slide that is not marked as hidden.
	 * 
	 * @param index The index of the slide within the presentation. The index value must be in the range from 0 to the number of visible slides minus 1.
	 * 
	 * @return The visible slide at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified visible slide index is out of range.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlide
	 * @see #getSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getVisibleSlide(index:uint):ISlide;
	
	/**
	 * Calculates the time offset from the beginning of the presentation to the specified presentation position.
	 * 
	 * @param timestamp             The position, represented by the ITimestamp interface, within the presentation to convert into time offset.
	 * @param considerTransitions   Indicates whether to include the slide transition duration when calculating the time offset.
	 * @param skipHiddenSlides      Indicates whether to skip the presentation hidden slides when calculating the time offset.
	 * 
	 * @return The time offset, in seconds, to the specified presentation position from the beginning of the presentation.
	 * 
	 * @throws ArgumentError Throws if the <code>timestamp</code> parameter is <code>null</code>.
	 * @throws RangeError if the <code>timestamp</code>is out of the presentation bounds.
	 * 
	 * @see ispring.presenter.presentation.ITimestamp
	 * @see #convertTimeToTimestamp()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function convertTimestampToTime(timestamp:ITimestamp, considerTransitions:Boolean = true, skipHiddenSlides:Boolean = true):Number;
	
	/**
	 * Returns the position within the presentation that corresponds to the specified time offset.
	 * 
	 * @param time                  The time offset, in seconds, from the beginning of the presentation.
	 * @param considerTransitions   Indicates whether to include the slide transition duration when calculating the timestamp.
	 * @param skipHiddenSlides      Indicates whether to skip the presentation hidden slides when calculating the timestamp.
	 * 
	 * @return The ITimestamp interface corresponding to the specified time offset.
	 * 
	 * @throws RangeError Throws if the <code>time</code> parameter is NaN, less than zero, or out of the presentation boundaries.
	 * 
	 * @see ispring.presenter.presentation.ITimestamp
	 * @see #convertTimestampToTime()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function convertTimeToTimestamp(time:Number, considerTransitions:Boolean = true, skipHiddenSlides:Boolean = true):ITimestamp;
	
	/**
	 * Returns the total duration of the presentation slides, in seconds. The slide duration is the sum of the slide animation steps and the transition effects duration.
	 * 
	 * @see #visibleSlidesDuration
	 * @see #visibleAnimationStepsDuration
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;
	
	/**
	 * Returns the total duration, in seconds, of the visible slides only.
	 * 
	 * @see #duration
	 * @see #visibleAnimationStepsDuration
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get visibleSlidesDuration():Number;
	
	/**
	 * Returns the total duration, in seconds, of the animation steps on the visible slides only. It does not include the slide transition effects duration.
	 * 
	 * @see #duration
	 * @see #visibleSlidesDuration
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get visibleAnimationStepsDuration():Number;
}

}