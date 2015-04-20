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
	
import flash.events.IEventDispatcher;
import ispring.presenter.player.clock.IPresentationClock;
import ispring.presenter.player.core.IPresentationPlaybackCore;
import ispring.presenter.player.slides.IPresentationSlideView;
import ispring.presenter.player.sound.ISoundController;

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
 * Dispatched to notify a listener to show a hyperlink tooltip.
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
 * Dispatched to notify a listener to hide the previously shown tooltip.
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
 * The IStandaloneSlideView interface represents the slide view 
 * providing access to the related slide control interfaces.
 * 
 * <p>The IStandaloneSlideView interface of the standalone slide can be obtained using the
 * <code>view</code> property of the ISlidePlayer interface.</p>
 * 
 * @see ispring.presenter.ISlidePlayer
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IStandaloneSlideView extends IPresentationSlideView, IEventDispatcher
{
	/**
	 * Returns the IPresentationPlaybackCore interface providing access
	 * to the low-level components of the player.
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
	 * The presentation clock.
	 * 
	 * @see ispring.presenter.player.clock.IPresentationClock
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get clock():IPresentationClock;

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
}

}
