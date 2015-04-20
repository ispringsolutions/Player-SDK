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

/**
 * The IHyperlinkManager interface methods are invoked by the player core to
 * handle a user's click on a hyperlink on a slide.
 * 
 * <p>The standard hyperlink manager can be replaced with a custom one by creating a class
 * that implements the IHyperlinkManager interface and passing the instance of that class as
 * a value of the <code>hyperlinkManager</code> property on the IPresentationPlaybackCore interface.
 * </p>
 * 
 * @see ispring.presenter.player.core.IPresentationPlaybackCore#hyperlinkManager
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IHyperlinkManager
{
	/**
	 * Handles a hyperlink to a specific slide of the presentation.
	 * 
	 * @param slideIndex An index of the slide to hyperlink to.
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#gotoSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToSlide(slideIndex:uint):void;
	
	/**
	 * Handles a hyperlink to the last slide viewed.
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#gotoLastSlideViewed()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToLastSlideViewed():void;
	
	/**
	 * Handles a hyperlink to the first slide of the presentation
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#gotoFirstSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToFirstSlide():void;
	
	/**
	 * Handles a hyperlink to the last slide of the presentation.
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#gotoLastSlide()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToLastSlide():void;
	
	/**
	 * Handles a hyperlink to the next slide of the presentation.
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#gotoNextSlide()
	 * @see ispring.presenter.player.IPresentationPlaybackController#nextSlideIndex
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToNextSlide():void;
	
	/**
	 * Handles a hyperlink to the previous slide of the presentation.
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#gotoPreviousSlide()
	 * @see ispring.presenter.player.IPresentationPlaybackController#previousSlideIndex
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToPreviousSlide():void;
	
	/**
	 * Handles a hyperlink to a web page.
	 * 
	 * @param url A URL address of the hyperlink.
	 * @param target A target window name to open a hyperlink in.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function hyperlinkToURL(url:String, target:String):void;
	
	/**
	 * Hyperlink that starts a slide show with the specified name.
	 * 
	 * @param slideShowName The name of the slide show.
	 * @param showAndReturn Indicates whether to return to the current slide show as soon as soon as the started slide show ends.
	 * 
	 * @see ispring.presenter.presentation.ISlideShow
	 * @see ispring.presenter.player.IPresentationPlaybackController#startSlideShow()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function startSlideShow(slideShowName:String, showAndReturn:Boolean):void;
	
	/**
	 * Hyperlink that ends the currently playing slide show.
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController#endSlideShow()
	 * @see ispring.presenter.presentation.ISlideShow
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function endSlideShow():void;
}

}