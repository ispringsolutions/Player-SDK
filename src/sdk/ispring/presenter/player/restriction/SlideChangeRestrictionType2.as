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
 * The SlideChangeRestrictionType2 class is an enumeration class that provides values for
 * the <code>type</code> property of the ISlideChangeRestriction2 interface.
 * 
 * @see ispring.presenter.player.restriction.ISlideChangeRestriction2#type
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.2.1
 */
public class SlideChangeRestrictionType2
{
	/**
	 * Indicates that the switching to a slide is not allowed because the interaction on the current slide has not been completed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public static const INTERACTION_NOT_COMPLETED:String = "interactionNotCompleted";

	/**
	 * Indicates that the switching to a slide is not allowed because a quiz on one of the slides preceding the target slide has not been passed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public static const PRECEDING_QUIZ_NOT_PASSED:String = "precedingQuizNotPassed";

	/**
	 * Indicates that the switching to a slide is not allowed because a quiz on one of the slides preceding the target slide has not been completed.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public static const PRECEDING_QUIZ_NOT_COMPLETED:String = "precedingQuizNotCompleted";

	/**
	 * Indicates that the switching to a slide is not allowed because a quiz on one of the slides preceding
	 * the target slide has been failed (there are no attempts to pass it).
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public static const PRECEDING_QUIZ_FAILED:String = "precedingQuizFailed";

	/**
	 * Indicates that the switching to a slide is not allowed for some other reason.
	 * 
	 * <p>This constant is reserved for compatibility with future versions of the player core which may introduce additional restriction types.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2.1
	 */
	public static const UNKNOWN:String = "unknown";

}

}