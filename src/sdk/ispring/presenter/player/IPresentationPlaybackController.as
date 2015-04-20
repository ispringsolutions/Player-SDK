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
import ispring.presenter.player.clock.IPresentationClock;
import ispring.presenter.player.slides.ISlideView;
import ispring.presenter.player.transitions.ISlideTransitionController;
import ispring.presenter.presentation.slides.ISlide;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
PresentationPlaybackState;
IPresentationPlaybackController2;


/**
 * Dispatched when the slide show is over and the presentation is about to close.
 * 
 * @eventType ispring.presenter.player.events.PresentationPlaybackEvent.CLOSE_REQUEST
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="closeRequest", type="ispring.presenter.player.events.PresentationPlaybackEvent")]

/**
 * Dispatched when the presentation playback controller is requesting the change of the current slide.
 * The <code>requestedSlideIndex</code> property stores the index of the requested slide.
 * 
 * @eventType ispring.presenter.player.events.PresentationPlaybackEvent.SLIDE_CHANGE_REQUEST
 * @see #requestedSlideIndex
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="slideChangeRequest", type="ispring.presenter.player.events.PresentationPlaybackEvent")]

/**
 * Dispatched when the current slide changes.
 * 
 * @eventType ispring.presenter.player.events.PresentationPlaybackEvent.SLIDE_CHANGE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="slideChange", type="ispring.presenter.player.events.PresentationPlaybackEvent")]

/**
 * Dispatched when the current playback state changes.
 * 
 * @eventType ispring.presenter.player.events.PresentationPlaybackEvent.PLAYBACK_STATE_CHANGE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="playbackStateChange", type="ispring.presenter.player.events.PresentationPlaybackEvent")]

/**
 * Dispatched when video and audio within the presentation is to be synchronized with slide animations.
 * 
 * @private
 * 
 * @eventType ispring.presenter.player.events.PresentationPlaybackEvent.RESYNC
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="resync", type="ispring.presenter.player.events.PresentationPlaybackEvent")]

/**
 * Dispatched when the presentation playback is complete.
 * 
 * @eventType ispring.presenter.player.events.PresentationPlaybackEvent.PLAYBACK_COMPLETE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="playbackComplete", type="ispring.presenter.player.events.PresentationPlaybackEvent")]

/**
 * Dispatched by the resticted version of the presentation playback controller
 * when slide switching is not allowed.
 * 
 * @eventType ispring.presenter.player.events.RestrictedPresentationPlaybackEvent2.SLIDE_CHANGE_NOT_ALLOWED
 * 
 * @see ispring.presenter.player.IPresentationView#restrictedPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
[Event(name="slideChangeNotAllowed", type="ispring.presenter.player.events.RestrictedPresentationPlaybackEvent2")]

/**
 * Dispatched by the resticted version of the presentation playback controller
 * when slide switching is not allowed.
 * 
 * <p>This event provides more detailed information about slide change restriction.</p>
 * 
 * @eventType ispring.presenter.player.events.RestrictedPresentationPlaybackEvent3.SLIDE_CHANGE_NOT_ALLOWED_3
 * 
 * @see ispring.presenter.player.IPresentationView#restrictedPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.2.1
 */
[Event(name="slideChangeNotAllowed_3", type="ispring.presenter.player.events.RestrictedPresentationPlaybackEvent3")]

/**
 * Dispatched when the presentation is about to start allowing the default presentation startup behavior overriding.
 * 
 * @eventType ispring.presenter.player.events.PresentationStartupEvent.PRESENTATION_STARTUP
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="presentationStartup", type="ispring.presenter.player.events.PresentationStartupEvent")]

/**
 * Dispatched when a slide is being viewed for the first time.
 * 
 * @eventType ispring.presenter.player.events.SlideViewedEvent.SLIDE_VIEWED
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="slideViewed", type="ispring.presenter.player.events.SlideViewedEvent")]


/**
 * The IPresentationPlaybackController interface provides presentation
 * playback and navigation control facilities.
 * 
 * <p>To obtain the IPresentationPlaybackController interface use the 
 * <code>playbackController</code> and the <code>restrictedPlaybackController</code>
 * properties on the IPresentationView interface.
 * </p>
 * 
 * <p>This interface has been superseded by the IPresentationPlaybackController2 interface
 * since iSpring Pro 6.1 and iSpring Platform 6.1</p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController2
 * @see ispring.presenter.player.IPresentationView#playbackController
 * @see ispring.presenter.player.IPresentationView#restrictedPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationPlaybackController extends IEventDispatcher
{
	/**
	 * Returns the current slide index. If the current slide is undefined, for example, when user input is required
	 * to define the starting slide of the presentation, the <code>uint.MAX_VALUE</code> is returned.
	 * 
	 * @see #currentSlide
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentSlideIndex():uint;
	
	/**
	 * Returns the ISlide interface of the current slide.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlide
	 * @see #currentSlideIndex
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the current slide index is undefined (the value of the <code>currentSlideIndex</code> property equals to <code>uint.MAX_VALUE</code>).
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentSlide():ISlide;
	
	/**
	 * The presentation playback state.
	 * See the <code>ispring.presenter.player.PresentationPlaybackState</code> constants for more details.
	 * 
	 * @see ispring.presenter.player.PresentationPlaybackState
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackState():String;
	
	/**
	 * Returns the next slide index taking hidden slides, custom slide shows, and slide branching settings
	 * into account.
	 *
	 * <p>The <code>uint.MAX_VALUE</code> is returned if the next slide is not available, for example, 
	 * if the current slide is the last slide of the presentation, or if the current slide is undefined
	 * (the value of the <code>currentSlideIndex</code> property equals to <code>uint.MAX_VALUE</code>).
	 * </p>
	 * 
	 * @see #previousSlideIndex
	 * @see #currentSlideIndex
	 * @see #gotoNextSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get nextSlideIndex():uint;
	
	/**
	 * Returns the previous slide index taking hidden slides, custom slide shows, and slide branching settings
	 * into account.
	 * 
	 * <p>The <code>uint.MAX_VALUE</code> is returned if the previous slide is not available, for example, 
	 * if the current slide is the first slide of the presentation, or if the current slide is undefined
	 * (the value of the <code>currentSlideIndex</code> property equals to <code>uint.MAX_VALUE</code>).
	 * </p>
	 * 
	 * @see #nextSlideIndex
	 * @see #currentSlideIndex
	 * @see #gotoPreviousSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get previousSlideIndex():uint;

	/**
	 * The index of the last slide viewed.
	 * 
	 * <p>The value of this property is equal to <code>uint.MAX_VALUE</code> if the last slide viewed has not been defined yet,
	 * e.g. the user has viewed only one slide.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get lastSlideViewedIndex():uint;

	/**
	 * The index of the requested slide.
	 * 
	 * <p>The requested slide is a slide which the player is about to switch to after the slide data is loaded.</p>
	 * 
	 * <p>The presentation playback controller dispatches the <code>slideChangeRequest</code> event 
	 * to notify its listeners about the requested slide change. The <code>requestedSlideIndex</code> property
	 * stores the index of the requested slide.</p>
	 * 
	 * <p>The value of this property is equal to <code>uint.MAX_VALUE</code> in the following cases:</p>
	 * <ul>
	 *	<li>No slide is requested at the moment, for example, if the current slide has just been changed.</li>
	 *	<li>The default behavior of the <code>slideChangeRequest</code> event has been prevented in an event listener.</li>
	 * </ul>
	 * 
	 * @see #events:slideChangeRequest
	 * @default uint.MAX_VALUE
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function get requestedSlideIndex():uint;

	/**
	 * Returns the slide transition controller which provides information about the slide transition state.
	 * 
	 * @see ispring.presenter.player.transitions.ISlideTransitionController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideTransitionController():ISlideTransitionController;
	
	/**
	 * Returns the ISlideView interface providing information about the current slide view.
	 *
	 * @see ispring.presenter.player.slides.ISlideView
	 *  
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get currentSlideView():ISlideView;
	
	/**
	 * Switches to the next slide taking hidden slides and
	 * custom slide shows into account.
	 * 
	 * @param autoStart Indicates whether to start the next slide playback automatically.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if current slide is undefined (the value of the <code>currentSlideIndex</code> property equals to <code>uint.MAX_VALUE</code>).
	 *
	 * @see #currentSlideIndex
	 * @see #nextSlide 
	 * @see #gotoPreviousSlide()
	 * @see #gotoSlide()
	 * @see #gotoLastSlideViewed()
	 * @see #gotoFirstSlide()
	 * @see #gotoLastSlide()
	 *
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoNextSlide(autoStart:Boolean = true):void;
	
	/**
	 * Switches to the previous slide taking hidden slides and
	 * custom slide shows into account.
	 *
	 * @param autoStart Indicates whether to start the previous slide playback automatically.
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if current slide is undefined (the value of the <code>currentSlideIndex</code> property equals to <code>uint.MAX_VALUE</code>).
	 *
	 * @see #previousSlide 
	 * @see #gotoNextSlide()
	 * @see #gotoSlide()
	 * @see #gotoLastSlideViewed()
	 * @see #gotoFirstSlide()
	 * @see #gotoLastSlide()
	 *
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoPreviousSlide(autoStart:Boolean = true):void;
	
	/**
	 * Switches to the last slide viewed.
	 *
	 * @param autoStart Indicates whether to start the last slide viewed playback automatically.
	 * 
	 * @see #gotoNextSlide()
	 * @see #gotoSlide()
	 * @see #gotoPreviousSlide()
	 * @see #gotoFirstSlide()
	 * @see #gotoLastSlide()
	 * @see #lastSlideViewedIndex
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoLastSlideViewed(autoStart:Boolean = true):void;
	
	/**
	 * Switches to the specified slide of the presentation.
	 * 
	 * @param slideIndex A slide index to switch to.
	 * @param autoStart Indicates whether to start the slide playback automatically.
	 * 
	 * @see #gotoNextSlide()
	 * @see #gotoLastSlideViewed()
	 * @see #gotoPreviousSlide()
	 * @see #gotoFirstSlide()
	 * @see #gotoLastSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoSlide(slideIndex:uint, autoStart:Boolean = true):void;
	
	/**
	 * Moves to the beginning of the first slide of the presentation.
	 * 
	 * @param autoStart Indicates whether to start the first slide playback automatically.
	 * @param considerHiddenSlides Indicates whether hidden slides should be taken into account. An <code>undefined</code> value indicates that hidden slides should be handled the way they are handled in PowerPoint.
	 * 
	 * @see #gotoSlide()
	 * @see #gotoNextSlide()
	 * @see #gotoLastSlideViewed()
	 * @see #gotoPreviousSlide()
	 * @see #gotoLastSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoFirstSlide(autoStart:Boolean, considerHiddenSlides:* = undefined):void;
	
	/**
	 * Moves to the beginning of the last slide of the presentation.
	 * 
	 * @param autoStart Indicates whether to start the last slide playback automatically.
	 * @param considerHiddenSlides Indicates whether hidden slides should be taken into account. An <code>undefined</code> value indicates that hidden slides should be handled the way they are handled in PowerPoint.
	 * 
	 * @see #gotoSlide()
	 * @see #gotoNextSlide()
	 * @see #gotoLastSlideViewed()
	 * @see #gotoPreviousSlide()
	 * @see #gotoFirstSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoLastSlide(autoStart:Boolean, considerHiddenSlides:* = undefined):void;
	
	/**
	 * Starts a slide show with the specified name.
	 * 
	 * @param slideShowName The name of the slide show.
	 * @param showAndReturn Indicates whether to return to the current slide show as soon as the started slide show ends.
	 *
	 * @see ispring.presenter.presentation.ISlideShow 
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function startSlideShow(slideShowName:String, showAndReturn:Boolean):void;
	
	/**
	 * Ends the currently playing slide show.
	 * 
	 * @see #startSlideShow()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function endSlideShow():void;
	
	/**
	 * Moves to the specified position within the presentation.
	 * 
	 * @param slideIndex The index of the target slide within the presentation.
	 * @param stepIndex The index of the target animation step within the target slide.
	 * @param timeOffset Time offset from the beginning of the target animation step, in seconds.
	 * @param autoStart Indicates whether to start playback automatically.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoTimestamp(slideIndex:uint, stepIndex:int, timeOffset:Number, autoStart:Boolean = false):void;
	
	/**
	 * Starts playback from the next animation step of the presentation. 
	 * 
	 * @see #gotoPreviousStep()
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
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function gotoPreviousStep():void;
	
	/**
	 * Suspends the playback of the presentation, sounds, and videos.
	 * 
	 * @see #play()
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
	 * @see #pause()
	 * @see #currentSlideIndex
	 * @see #firstSlideIndex
	 *
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function play():void;
	
	/**
	 * Determines whether a slide with the specified index has been viewed.
	 * 
	 * @param slideIndex The index of the slide.
	 * @return <code>true</code> if the slide has been viewed; <code>false</code> otherwise.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function slideIsViewed(slideIndex:uint):Boolean;
	
	/**
	 * Returns the presentation clock that provides information about current playback state and position.
	 * 
	 * @see ispring.presenter.player.clock.IPresentationClock
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get clock():IPresentationClock;
}
	
}