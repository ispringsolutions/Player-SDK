/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.core
{
	
import ispring.presenter.player.audio.IAudioPlaybackControllerFactory;
import ispring.presenter.player.video.IVideoPlaybackControllerFactory;

/**
 * The IPresentationPlaybackCore interface provides access to the player core components.
 * This interface allows overriding the standard functionality of the player with the custom one.
 * 
 * <p>The IPresentationPlaybackCore interface of the iSpring generated presentation
 * can be obtained using the <code>core</code> property on the IPresentationView interface.
 * The <code>core</code> property of the IStandaloneSlideView interface provides access to the
 * IPresentationPlaybackCore interface of the iSpring generated standalone slides.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationView
 * @see ispring.presenter.player.IStandaloneSlideView
 * @see ispring.presenter.player.core.IHyperlinkManager
 * @see ispring.presenter.player.audio.IAudioPlaybackControllerFactory
 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationPlaybackCore
{
	/**
	 * The hyperlink manager handling mouse clicks on hyperlinks within a slide.
	 *
	 * <p>To override the standard hyperlink manager functionality you need to create
	 * an instance of the class implementing the IHyperlinkManager interface.
	 * It should be passed as a value of the <code>hyperlinkManager</code> property. The custom hyperlink manager
	 * will then handle hyperlink clicks.
	 * </p>
	 * 
	 * @see ispring.presenter.player.core.IHyperlinkManager
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get hyperlinkManager():IHyperlinkManager;	
	/**
	 * @private
	 */
	function set hyperlinkManager(value:IHyperlinkManager):void;
	
	/**
	 * The factory object used by the player core to create video playback controllers.
	 * 
	 * <p>Since iSpring Pro 6.1 and iSpring Platform 6.1 the <code>videoPlaybackControllerFactory</code> property setter
	 * accepts both the legacy IVideoPlaybackControllerFactory and the new IVideoPlaybackControllerFactory2 interfaces.</p>
	 * 
	 * <p>To maintain compatibility with the code compiled with the legacy SDK, the <code>videoPlaybackControllerFactory</code>
	 * property getter returns the IVideoPlaybackControllerFactory interface. To obtain the IVideoPlaybackControllerFactory2 interface
	 * from the existing IVideoPlaybackControllerFactory interface use the type casting.</p>
	 * 
	 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory
	 * @see ispring.presenter.player.video.IVideoPlaybackControllerFactory2
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get videoPlaybackControllerFactory():IVideoPlaybackControllerFactory;
	/**
	 * @private
	 */
	function set videoPlaybackControllerFactory(value:IVideoPlaybackControllerFactory):void;
	
	/**
	 * The factory object used by the player core to create audio playback controllers.
	 * 
	 * @see ispring.presenter.player.audio.IAudioPlaybackControllerFactory
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get audioPlaybackControllerFactory():IAudioPlaybackControllerFactory;
	/**
	 * @private
	 */
	function set audioPlaybackControllerFactory(value:IAudioPlaybackControllerFactory):void;
	
}
	
}