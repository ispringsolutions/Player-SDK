/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation
{
	
import flash.events.IEventDispatcher;
import ispring.presenter.presentation.narration.INarration;
import ispring.presenter.presentation.resources.IResources;
import ispring.presenter.presentation.settings.ISettings;
import ispring.presenter.presentation.slides.ISlides;

/**
 * The IPresentation interface provides the presentation information.
 * 
 * <p>To obtain the IPresentation interface use the <code>presentation</code> property
 * on the IPresentationPlayer interface.</p>
 * 
 * <p>The IPresentation interface extends the 
 * <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the IPresentation interface does not 
 * displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.presenter.IPresentationPlayer#presentation
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentation extends IEventDispatcher
{
	/**
	 * The title of the presentation.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get title():String;
	
	/**
	 * The ISlides interface representing the collection
	 * of the presentation slides.
	 * 
	 * @see ispring.presenter.presentation.slides.ISlides
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slides():ISlides;
	
	/**
	 * The ISlideShows interface representing the collection 
	 * of the presentation slide shows.
	 * 
	 * @see ispring.presenter.presentation.ISlideShows
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideShows():ISlideShows;
	
	/**
	 * The width of the presentation slides, in pixels.
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideWidth():Number;
	
	/**
	 * The height of the presentation slides, in pixels.
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get slideHeight():Number;
	
	/**
	 * A unique identifier of the presentation.
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get uniqueId():String;
	
	/**
	 * Returns the IResources interface providing the presentation
	 * resources information.
	 * 
	 * @see ispring.presenter.presentation.resources.IResources
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get resources():IResources;
	
	/**
	 * The IPresenters interface representing the presentation
	 * presenters collection.
	 * 
	 * @see ispring.presenter.presentation.IPresenters
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presenters():IPresenters;
	
	/**
	 * Indicates whether the presentation has the company information associated. 
	 * To access the company information use the <code>company</code> property.
	 * 
	 * @see #company
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hasCompany():Boolean;
	
	/**
	 * The ICompany interface representing the presentation
	 * associated company information.
	 * 
	 * <p>The <code>flash.errors.IllegalOperationError</code> exception is thrown
	 * when accessing this property the presentation that does not contain
	 * company information. To determine whether the presentation contains company
	 * information use the <code>hasCompany</code> property.
	 * </p>
	 * 
	 * @throws flash.errors.IllegalOperationError Throws if the presentation contains no company information (the <code>hasCompany</code> property value is <code>false</code>).
	 * 
	 * @see #hasCompany
	 * @see ispring.presenter.presentation.ICompany
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get company():ICompany;

	/**
	 * The INarration interface representing the presentation 
	 * narration.
	 * 
	 * @see ispring.presenter.presentation.narration.INarration
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get narration():INarration;

	/**
	 * The ISettings interface representing the presentation
	 * settings.
	 * 
	 * @see ispring.presenter.presentation.settings.ISettings
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get settings():ISettings;
}
	
}
