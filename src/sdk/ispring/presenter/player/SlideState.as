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

/**
 * The SlideState class is an enumeration class that provides values for
 * the <code>getSlideState()</code> method of the IPresentationLoader interface.
 * 
 * @see ispring.presenter.player.IPresentationLoader
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class SlideState 
{
	/**
	 * Indicates that the slide has not been loaded yet.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const NOT_LOADED:String = "notLoaded";
	
	/**
	 * Indicates that the slide is being loaded.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const LOADING:String = "loading";
	
	/**
	 * Indicates that the slide has been loaded.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const LOADED:String = "loaded";
}

}