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
import ispring.presenter.player.IPresentationLoader;
import ispring.presenter.player.IPresentationView;
import ispring.presenter.player.skin.ISkin;
import ispring.presenter.presentation.IPresentation;

/**
 * The IPresentationPlayer interface provides access to the
 * presentation, the presentation view, the player user interface (the skin), 
 * and to the presentation loader.
 * 
 * <p>The IPresentationPlayer interface is obtained by accessing 
 * the <code>player</code> property of the <code>IPresentationPlayerContainer</code>
 * interface.</p>
 * 
 * <p>The IPresentationPlayer interface extends the
 * <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the IPresentationPlayer interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.presenter.IPresentationPlayerContainer
 * @see ispring.presenter.player.skin.ISkin
 * @see ispring.presenter.presentation.IPresentation
 * @see ispring.presenter.player.IPresentationView
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */	
public interface IPresentationPlayer extends IEventDispatcher
{
	/**
	 * The presentation player version, for example, "6.0.0".
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get version():String;
	
	/**
	 * The loaded presentation.
	 * 
	 * @see ispring.presenter.presentation.IPresentation
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presentation():IPresentation;
	
	/**
	 * The player skin.
	 * 
	 * @see ispring.presenter.player.skin.ISkin
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get skin():ISkin;

	/**
	 * The presentation view.
	 * 
	 * @see ispring.presenter.player.IPresentationView
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presentationView():IPresentationView;
	
	/**
	 * The IPresentationLoader interface allowing retrieving the
	 * presentation loading progress.
	 * 
	 * @see ispring.presenter.player.IPresentationLoader
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presentationLoader():IPresentationLoader;
}
}
