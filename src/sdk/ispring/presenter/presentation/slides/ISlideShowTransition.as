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

//--------------------------------------------------------
// External dependencies
//--------------------------------------------------------
TransitionEffectType;

/**
 * The ISlideShowTransition interface provides information about the slide transition effect.
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlideShowTransition
{
	/**
	 * The transition effect type.
	 * See the <code>ispring.presenter.presentation.slides.TransitionEffectType</code> constants for this property values.
	 * 
	 * @see ispring.presenter.presentation.slides.TransitionEffectType
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get effectType():String;	

	/**
	 * The duration of the transition effect, in seconds.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get duration():Number;
}
	
}
