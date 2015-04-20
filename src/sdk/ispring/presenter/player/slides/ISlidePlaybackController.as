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
	
import flash.events.IEventDispatcher
import ispring.presenter.presentation.slides.IAnimationSteps;

/**
 * Dispatched when the current animation step index changes.
 * 
 * @eventType ispring.presenter.player.slides.SlidePlaybackEvent.STEP_CHANGE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.2
 */
[Event(name="stepChange", type="ispring.presenter.player.slides.SlidePlaybackEvent")]

/**
 * Dispatched when playback position has been changed.
 * 
 * @eventType ispring.presenter.player.slides.SlidePlaybackEvent.POSITION_CHANGE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.2
 */
[Event(name="positionChange", type="ispring.presenter.player.slides.SlidePlaybackEvent")]

/**
 * The ISlidePlaybackController interface provides slide playback control facilities.
 * 
 * <p>The ISlidePlaybackController interface can be obtained using the <code>playbackController</code>
 * property on the IPresentationSlideView interface.
 * </p>
 * 
 * @see ispring.presenter.player.slides.IPresentationSlideView
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlidePlaybackController extends IEventDispatcher
{
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
	 * Suspends the playback of the slide.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #playFromPosition()
	 * @see #play()
	 * @see #pauseAtPosition()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function pause():void;
	
	/**
	 * Resumes the playback of the presentation, sounds, and videos.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #pause()
	 * @see #playFromPosition()
	 * @see #pauseAtPosition()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function play():void;
	
	/**
	 * Pauses the slide at the specified position, in seconds.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #playFromPosition()
	 * @see #play()
	 * @see #pause()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function pauseAtPosition(position:Number):void;
	
	/**
	 * Resumes the slide from the specified position, in seconds.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #pause()
	 * @see #pauseAtPosition()
	 * @see #play()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function playFromPosition(position:Number):void;
	
	/**
	 * Starts playback from the next animation step of the slide. 
	 * 
	 * @see #gotoPreviousStep()
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoNextStep():void;
	
	/**
	 * Moves one animation step back and pauses. 
	 * 
	 * @see #gotoNextStep()
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoPreviousStep():void
	
	/**
	 * Resumes slide playback from the specified step.
	 * 
	 * @param stepIndex The index of the animation step to play the slide from.
	 * 
	 * @throws RangeError Throws if the <code>stepIndex</code> parameter is out of bounds.
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #pauseAtStepStart()
	 * @see #pauseAtStepEnd()
	 * @see #pauseAtEnd()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function playFromStep(stepIndex:uint):void;

	/**
	 * Pauses slide playback at the beginning of the specified step.
	 * 
	 * @param stepIndex The index of the animation step to pause the slide at.
	 * 
	 * @throws RangeError Throws if the <code>stepIndex</code> parameter is out of bounds.
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #playFromStep()
	 * @see #pauseAtStepEnd()
	 * @see #pauseAtEnd()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function pauseAtStepStart(stepIndex:uint):void;
	
	/**
	 * Pauses slide playback at the end of the specified step.
	 * 
	 * @param stepIndex The index of the animation step to pause the slide at.
	 * 
	 * @throws RangeError Throws if the <code>stepIndex</code> parameter is out of bounds.
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #playFromStep()
	 * @see #pauseAtStepStart()
	 * @see #pauseAtEnd()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function pauseAtStepEnd(stepIndex:uint):void;
	
	/**
	 * Pauses slide playback at the end of the slide.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #playFromStep()
	 * @see #pauseAtStepStart()
	 * @see #pauseAtStepEnd()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function pauseAtEnd():void;
	
	/**
	 * Returns the current animation step index.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #currentStepProgress
	 * @see #currentStepPosition
	 * @see #playbackProgress
	 * @see #playbackPosition
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentStepIndex():uint;
	
	/**
	 * Returns the progress of the current animation step in the range 0...1.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #currentStepIndex
	 * @see #currentStepPosition
	 * @see #playbackProgress
	 * @see #playbackPosition
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentStepProgress():Number;
	
	/**
	 * Returns an offset, in seconds, from the begining of the current animation step.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #currentStepProgress
	 * @see #currentStepIndex
	 * @see #playbackProgress
	 * @see #playbackPosition
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentStepPosition():Number;
	
	/**
	 * Returns the playback progress of the slide, in the range 0...1.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #currentStepProgress
	 * @see #currentStepPosition
	 * @see #currentStepIndex
	 * @see #playbackPosition
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackProgress():Number;
	
	/**
	 * Returns the slide playback position, in seconds.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the slide playback controller is inactive. The slide controller becomes inactive after switching to another slide of the presentation.
	 * 
	 * @see #currentStepProgress
	 * @see #currentStepPosition
	 * @see #playbackProgress
	 * @see #currentStepIndex
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackPosition():Number;
}

}
