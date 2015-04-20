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

//--------------------------------------------------------
// External dependencies to include in ASDOC
//--------------------------------------------------------
SlideChangeRestrictionType;

/**
 * The ISlideChangeRestriction interface provides information about the reason for restricting the switching
 * to a slide by the restricted version of the presentation playback controller.
 * 
 * <p>To obtain the ISlideChangeRestriction interface use the <code>restriction</code> property of the
 * RestrictedPresentationPlaybackEvent2 class.</p>
 * 
 * @see ispring.presenter.player.IPresentationPlaybackController
 * @see ispring.presenter.player.events.RestrictedPresentationPlaybackEvent2#restriction
 * @see ispring.presenter.player.IPresentationView#restrictedPlaybackController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface ISlideChangeRestriction
{
	/**
	 * The type of the restriction that informs why switching to a specified slide was restricted.
	 * See the <code>ispring.presenter.player.restriction.SlideChangeRestrictionType</code> constants for this property.
	 * 
	 * <p>The <code>relatedSlideIndex</code> property stores the index of the target slide.</p>
	 * 
	 * @see #relatedSlideIndex
	 * @see ispring.presenter.player.restriction.SlideChangeRestrictionType
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get type():String;

	/**
	 * The index of the target slide the presentation player restricted the switching to.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get relatedSlideIndex():uint;
}

}
