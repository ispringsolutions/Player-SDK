/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.skin
{
	import ispring.i18n.II18n;
	import ispring.presenter.player.IPresentationLoader;
	import ispring.presenter.player.IPresentationView;
	import ispring.presenter.presentation.IPresentation;




/**
 * The ISkinFactory2 interface represents a skin factory which is used by the player core
 * for skin module creation. A class implementing the ISkinFactory2 interface is exposed
 * by the skin .swc library.
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 7.0
 */
public interface ISkinFactory2
{
	/**
	 * Creates a skin module.
	 * 
	 * @param presentation			Provides the presentation information.
	 * @param presentationView		Provides access to the presentation view.
	 * @param presentationLoader	Provides presentation loading progress intformation.
	 * @param parameters			An Object holding the URL request parameters passed by the presentation SWF file.
	 * @param settingsXml			The skin settings XML defined by the skin_settings.xml file.
	 * @param i18n					The skin settings XML defined by the skin_settings.xml file.
	 * @return						The ISkin interface of the created skin.
	 * 
	 * @see ispring.presenter.player.skin.ISkin
	 * @see ispring.i18n.II18n
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Pro 7.0
	 * @productversion iSpring&nbsp;Platform 7.0
	 */
	function createSkin(
		presentation:IPresentation,
		presentationView:IPresentationView,
		presentationLoader:IPresentationLoader,
		parameters:Object,
		settingsXml:XML = null,
		i18n:II18n = null
		):ISkin;
}

}
