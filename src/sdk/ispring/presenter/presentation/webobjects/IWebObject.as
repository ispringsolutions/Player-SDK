/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.webobjects
{

import ispring.presenter.presentation.ITimestamp;

/**
 * The IWebObject interface provides information about a Web Object associated with a slide of a presentation.
 * 
 * <p>A Web Object is an HTML page displayed in an iframe over the slide area or in a new browser window
 * when the corresponding slide is being viewed. Since the Adobe Flash Player is unable to show a web object by itself,
 * the presentation playback core notifies the containing HTML page via ExternalInterface to show an iframe or a popup
 * window with a Web Object content.</p>
 * 
 * <p>A Web Object can be inserted into a slide using iSpring Pro 6.1 or higher.</p>
 * 
 * <p>The IWebObject interface can be obtained using the <code>getWebObject()</code> method of the IWebObjects interface
 * and the <code>webObject</code> property of the WebObjectEvent class.</p>
 * 
 * @see ispring.presenter.presentation.webobjects.IWebObjects#getWebObject()
 * @see ispring.presenter.player.events.WebObjectEvent#webObject
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.1
 */
public interface IWebObject
{
	/**
	 * A unique identifier of the Web Object.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get id():String;

	/**
	 * The ITimestamp interface defining the moment within the presentation to show the Web Object at.
	 * 
	 * @see ispring.presenter.presentation.ITimestamp
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get timestamp():ITimestamp;

	/**
	 * The X coordinate of the left side of the Web Object, in slide coordinate units, relative to the upper left corner of the slide.
	 * 
	 * <p>One slide coordinate unit is equal to one screen pixel when the slide is displayed at 100% scale.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get x():Number;

	/**
	 * The Y coordinate of the top side of the Web Object, in slide coordinate units, relative to the upper left corner of the slide.
	 * 
	 * <p>One slide coordinate unit is equal to one screen pixel when the slide is displayed at 100% scale.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get y():Number;

	/**
	 * The Web Object width in slide coordinate units.
	 * 
	 * <p>One slide coordinate unit is equal to one screen pixel when the slide is displayed at 100% scale.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get width():Number;

	/**
	 * The Web Object height in slide coordinate units.
	 * 
	 * <p>One slide coordinate unit is equal to one screen pixel when the slide is displayed at 100% scale.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get height():Number;

	/**
	 * Indicates whether the Web Object is to be shown in a popup browser window.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get showInNewWindow():Boolean;

	/**
	 * A URL of the web page associated with the Web Object.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get url():String;

	/**
	 * Indicates whether the Web Object occupies the whole slide area or
	 * is displayed fullscreen (for Web Objects shown in a new window).
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.1
	 */
	function get fullScreen():Boolean;
}

}