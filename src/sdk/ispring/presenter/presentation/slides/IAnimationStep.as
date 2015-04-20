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
 * The IAnimationStep interface provides information about the slide animation step.
 * 
 * <p>An animation step is an animation sequence of the slide shapes playing automatically
 * (no need for mouse clicks). Each animation step consists of the animation and pause phases.
 * Slide shapes are animated during the animation phase. The pause phase begins after
 * the animation phase and provides a delay between subsequent animation steps.
 * </p>
 * 
 * <p>The IAnimationStep interface can be obtained using the <code>getStep()</code>
 * method on the IAnimationSteps interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.slides.IAnimationSteps
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IAnimationStep
{
	/**
	 * The animation phase duration in seconds.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get animationDuration():Number;
		
	/**
	 * The pause phase duration in seconds.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get pauseDuration():Number;
		
	/**
	 * The animation step start time relatively to the beginning of the slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get startTime():Number;
		
	/**
	 * The total duration of the animation and pause phases.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;
		
	/**
	 * Indicates whether the next animation step is started automatically
	 * after the pause phase of the current animation step.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get automaticAdvance():Boolean;
}
	
}
