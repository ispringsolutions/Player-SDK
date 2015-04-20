/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter
{

import flash.events.IEventDispatcher;
import ispring.presenter.player.IStandaloneSlideView;
import ispring.presenter.presentation.slides.ISlide;

/**
 * The ISlidePlayer interface provides access to an iSpring generated standalone slide
 * and its view within the player.
 * 
 * <p>The ISlidePlayer interface extends the <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the ISlidePlayer interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.presenter.player.IStandaloneSlideView
 * @see ispring.presenter.presentation.slides.ISlide
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISlidePlayer extends IEventDispatcher
{
	/**
	 * The slide player version, for example, "6.0.0".
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get version():String;

	/**
	 * The loaded slide.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlide
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slide():ISlide;
	

	/**
	 * The view of the slide displayed by the slide player.
	 * 
	 * @see ispring.presenter.player.IStandaloneSlideView
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get view():IStandaloneSlideView;
}
	
}