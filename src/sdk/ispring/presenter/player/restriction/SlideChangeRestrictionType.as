/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.restriction
{

/**
 * The SlideChangeRestrictionType class is an enumeration class that provides values for
 * the <code>type</code> property of the ISlideChangeRestriction interface.
 * 
 * @see ispring.presenter.player.restriction.ISlideChangeRestriction#type
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public class SlideChangeRestrictionType
{
	/**
	 * Indicates that the switching to a slide is not allowed because the interaction on the current slide has not been completed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const INTERACTION_NOT_COMPLETED:String = "interactionNotCompleted";

	/**
	 * Indicates that the switching to a slide is not allowed because a quiz on one of the slides preceding the target slide has not been passed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const PRECEDING_QUIZ_NOT_PASSED:String = "precedingQuizNotPassed";

	/**
	 * Indicates that the switching to a slide is not allowed because a quiz on one of the slides preceding the target slide has not been completed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	public static const PRECEDING_QUIZ_NOT_COMPLETED:String = "precedingQuizNotCompleted";
}

}