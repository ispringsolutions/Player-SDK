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
 * The IAnimationSteps interface represents a collection of the slide animation steps.
 * 
 * <p>An animation step is an animation sequence of the slide shapes playing automatically
 * (no need for mouse clicks).</p>
 * 
 * <p>The IAnimationSteps interface can be obtained using the <code>animationSteps</code>
 * property on the ISlide interface or the <code>animationSteps</code> property
 * on the ISlidePlaybackController interface.
 * </p>
 * 
 * @see ispring.presenter.player.slides.ISlidePlaybackController
 * @see ispring.presenter.presentation.slides.IAnimationStep
 * @see ispring.presenter.presentation.slides.ISlide
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IAnimationSteps
{
	/**
	 * Returns the number of animation steps in the collection.
	 * 
	 * <p>Each slide contains at least one animation step.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns the IAnimationStep interface of the animation that exists at the specified index.
	 * 
	 * @param index The index position of the animation step.
	 * 
	 * @return The animated step at the specified index position.
	 * 
	 * @throws RangeError Throws if the index does not exist in the collection.
	 * 
	 * @see ispring.presenter.presentation.slides.IAnimationStep
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getStep(index:uint):IAnimationStep;
	
	/**
	 * Returns total duration, in seconds, of all animation steps in the collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;
	
	/**
	 * Indicates whether manual animation step advance on slide background mouse click is enabled.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get advanceOnClick():Boolean;
}
	
}