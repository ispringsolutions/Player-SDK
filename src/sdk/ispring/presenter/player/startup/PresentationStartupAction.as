/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.startup 
{

/**
 * The PresentationStartupAction class is an enumeration class that provides values for
 * the <code>action</code> property of the IPresentationStartup interface.
 * 
 * @see ispring.presenter.player.startup.IPresentationStartup
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class PresentationStartupAction 
{
	/**
	 * The <code>PresentationStartupAction.RESUME_PLAYBACK</code> constant defines the 
	 * value of the <code>action</code> property of the <code>resumePlayback</code> action.
	 * The default behavior of this action starts the presentation from the slide specified
	 * by the the <code>slideIndex</code> property of the IPresentationStartup interface.
	 * 
	 * @see ispring.presenter.player.startup.IPresentationStartup
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	public static const GOTO_SLIDE:String = "gotoSlide";

	/**
	 * The <code>PresentationStartupAction.RESUME_PLAYBACK</code> constant defines the 
	 * value of the <code>action</code> property of the <code>resumePlayback</code> action.
	 * The default behavior of this action resumes the presentation from the last
	 * slide viewed specified by the <code>slideIndex</code> property of the IPresentationStartup
	 * interface.
	 * 
	 * @see ispring.presenter.player.startup.IPresentationStartup
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */		
	public static const RESUME_PLAYBACK:String = "resumePlayback";
}

}