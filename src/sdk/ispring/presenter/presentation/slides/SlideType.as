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
 * The SlideType class is an enumeration class that provides values for
 * the <code>type</code> property of the ISlide interface.
 * 
 * @see ispring.presenter.presentation.slides.ISlide#type
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class SlideType 
{
	/**
	 * Indicates that the slide is an ordinary presentation slide.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const PRESENTATION_SLIDE:String = "slide";

	/**
	 * Indicates that the slide is an iSpring Visuals interaction.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const INTERACTION_SLIDE:String = "interaction";

	/**
	 * Indicates that the slide is an iSpring QuizMaker quiz.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const QUIZ_INTERACTION_SLIDE:String = "quiz";
	
	/**
	 * Indicates whether the specified slide type is an interaction slide type.
	 * 
	 * <p>The <code>SlideType.INTERACTION_SLIDE</code> and <code>SlideType.QUIZ_INTERACTION_SLIDE</code> constants
	 * are considered to be interaction slide types.
	 * </p>
	 * 
	 * @param type The slide type.
	 * @return <code>true</code> if the slide is an interaction or a quiz, <code>false</code> otherwise.
	 * 
	 * @see #QUIZ_INTERACTION_SLIDE
	 * @see #INTERACTION_SLIDE
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static function isInteraction(type:String):Boolean
	{
		return (type == INTERACTION_SLIDE) || (type == QUIZ_INTERACTION_SLIDE);
	}
}

}