/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player
{
	
import flash.display.DisplayObject;
import flash.events.IEventDispatcher;
import flash.geom.Rectangle;
import ispring.presenter.player.core.IPresentationPlaybackCore;
import ispring.presenter.player.sound.ISoundController;
import ispring.presenter.player.video.IVideoNarrationPlayer;

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
IPresentationView2;

/**
 * Dispatched to notify a listener to execute a meta command. A meta command can be
 * associated with a slide or a hyperlink on a slide.
 * 
 * @eventType ispring.presenter.player.events.MetaCommandEvent.EXECUTE_META_COMMAND
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="executeMetaCommand", type="ispring.presenter.player.events.MetaCommandEvent")]

/**
 * Dispatched to notify the skin to show a hyperlink tooltip.
 * 
 * @eventType ispring.presenter.player.events.TooltipEvent.SHOW_TOOLTIP
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="showTooltip", type="ispring.presenter.player.events.TooltipEvent")]

/**
 * Dispatched to notify the skin to hide the previously shown tooltip.
 * 
 * @eventType ispring.presenter.player.events.TooltipEvent.HIDE_TOOLTIP
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="hideTooltip", type="ispring.presenter.player.events.TooltipEvent")]

/**
 * Dispatched to notify listeners that a slide web object is to be shown.
 * 
 * @eventType ispring.presenter.player.events.WebObjectEvent.SHOW_WEB_OBJECT
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
[Event(name="showWebObject", type="ispring.presenter.player.events.WebObjectEvent")]

/**
 * Dispatched to notify listeners that a slide web object is to be hidden.
 * 
 * @eventType ispring.presenter.player.events.WebObjectEvent.HIDE_WEB_OBJECT
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
[Event(name="hideWebObject", type="ispring.presenter.player.events.WebObjectEvent")]

/**
 * The IPresentationView interface represents the presentation view 
 * providing access to the related presentation control interfaces.
 * 
 * <p>The IPresentationView interface of the presentation can be obtained using the
 * <code>presentationView</code> property of the IPresentationPlayer interface.</p>
 * 
 * <p>The IPresentationView2 interface providing additional functionality
 * has become available since iSpring Pro 6.2 and iSpring Platform 6.2.</p>
 * 
 * @see ispring.presenter.IPresentationPlayer
 * @see ispring.presenter.player.IPresentationView2
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IPresentationView extends IEventDispatcher
{
	/**
	 * The <code>flash.display.DisplayObject</code> object visualizing the presentation slides.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/DisplayObject.html flash.display.DisplayObject
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get displayObject():DisplayObject;
	
	/**
	 * The extent of the presentation slide within the presentation view.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Rectangle.html flash.geom.Rectangle
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get presentationSlideExtent():Rectangle;
	
	/**
	 * Returns the IPresentationPlaybackController interface providing
	 * unrestricted presentation playback control facilities.
	 * 
	 * <p>The unrestricted playback controller properties and methods ignore
	 * the playback and navigation restrictions (such as branching rules) 
	 * defined for the presentation.
	 * To obtain the IPresentationPlaybackController interface which
	 * takes such restrictions into account, use the 
	 * <code>restrictedPlaybackController</code> property.
	 * </p>
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController
	 * @see #restrictedPlaybackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get playbackController():IPresentationPlaybackController;
	
	/**
	 * Returns the IPresentationPlaybackController interface providing
	 * restricted presentation playback control facilities.
	 * 
	 * <p>The restricted playback controller methods and properties take the playback 
	 * and navigation restrictions (such as branching rules) into consideration.
	 * To obtain the IPresentationPlaybackController interface which
	 * ignores such restrictions, use the <code>playbackController</code> property.</p>
	 * 
	 * @see ispring.presenter.player.IPresentationPlaybackController
	 * @see #playbackController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get restrictedPlaybackController():IPresentationPlaybackController;
	
	/**
	 * Returns the IPresentationPlaybackCore interface providing access
	 * to the low-level components of the presentation player.
	 * 
	 * @see ispring.presenter.player.core.IPresentationPlaybackCore
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get core():IPresentationPlaybackCore;
	
	/**
	 * Returns the IVideoNarrationPlayer interface representing 
	 * the video narration player.
	 * 
	 * @see ispring.presenter.player.video.IVideoNarrationPlayer
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get videoNarrationPlayer():IVideoNarrationPlayer;
	
	/**
	 * Returns the IKeyboardController interface
	 * which controls the presentation navigation using keyboard.
	 * 
	 * @see ispring.presenter.player.IKeyboardController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get keyboardController():IKeyboardController;
	
	/**
	 * Returns the IFullScreenManager interface that allows
	 * switching the player between normal and full screen modes.
	 *
	 * @see ispring.presenter.player.IFullScreenManager
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get fullScreenManager():IFullScreenManager;
	
	/**
	 * Returns the ISoundController interface allowing sound volume control.
	 * 
	 * @see ispring.presenter.player.sound.ISoundController
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get soundController():ISoundController;

	/**
	 * Defines the color (0xRRGGBB) that fills the unoccupied area of the presentation view.
	 * 
	 * @default 0x000000
	 * @see #backdropAlpha
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get backdropColor():uint
	/**
	 * @private
	 */
	function set backdropColor(value:uint):void;
	
	/**
	 * Defines the alpha transparency value of the the unoccupied area of the presentation view.
	 * Valid values are 0 (fully transparent) to 1 (fully opaque).
	 * 
	 * @see #backdropColor
	 * @default 1
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get backdropAlpha():Number;
	/**
	 * @private
	 */
	function set backdropAlpha(value:Number):void;
	
	/**
	 * Resizes the presentation view display object.
	 * 
	 * <p>The slides within the presentation view are resized to inscribe
	 * the presentation view preserving their original aspect ratio.
	 * If the presentation view aspect ratio
	 * differs from the slide aspect ratio, the unoccupied
	 * area of the presentation view is filled with the backdrop color
	 * defined by the <code>backdropColor</code> and <code>backdropAlpha</code> properties.
	 * </p>
	 * 
	 * @param width A new width of the presentation view, in pixels.
	 * @param height A new height of the presentation view, in pixels.
	 * 
	 * @see #backdropColor
	 * @see #backdropAlpha
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function resize(width:Number, height:Number):void;
}

}