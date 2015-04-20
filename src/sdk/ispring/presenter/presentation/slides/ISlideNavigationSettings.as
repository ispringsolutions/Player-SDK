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

public interface ISlideNavigationSettings
{
	/**
	 * Indicates whether switching to next slide are enabled
	 */
	function get switchingToNextSlideIsEnabled():Boolean;

	/**
	 * Indicates whether gotoPreviousSlide method is enabled
	 */
	function get switchingToPreviousSlideIsEnabled():Boolean;

	/**
	 * Indicates whether gotoLastSlide/gotoSlide/gotoFirstSlide/gotoLastSlideViewed methods are enabled
	 */
	function get arbitrarySlideSwitchingIsEnabled():Boolean;

	/**
	 * Indicates whether startSlideShow/endSlideShow methods are enabled
	 */
	function get slideShowControlIsEnabled():Boolean

	/**
	 * Indicates whether gotoNextStep method is enabled
	 */
	function get switchingToNextStepIsEnabled():Boolean;

	/**
	 * Indicates whether gotoPreviousStep method is enabled
	 */
	function get switchingToPreviousStepIsEnabled():Boolean;

	/**
	 * Indicates whether play/pause methods are enabled
	 */
	function get playPauseControlIsEnabled():Boolean;

	/**
	 * Indicates whether gotoTimestamp with timestamp outside current slide boundaries is enabled
	 */
	function get presentationSeekingIsEnabled():Boolean;

	/**
	 * Indicates whether gotoTimestamp with timestamp within current slide boundaries is enabled
	 */
	function get slideSeekingIsEnabled():Boolean;
}



}
