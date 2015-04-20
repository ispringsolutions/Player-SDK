/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin
{
	import ispring.presenter.player.IPresentationLoader;
	import ispring.presenter.player.IPresentationView;
	import ispring.presenter.player.skin.ISkin;
	import ispring.presenter.player.skin.ISkinFactory;
	import ispring.presenter.presentation.IPresentation;
	import flash.display.MovieClip;

	public class SamplePlaybackSkinFactory extends MovieClip implements ISkinFactory
	{
		public function createSkin(
			presentation:IPresentation,
			presentationView:IPresentationView,
			presentationLoader:IPresentationLoader,
			parameters:Object,
			settingsXml:XML = null):ISkin
		{
			return new SamplePlaybackSkin(presentation, presentationView, settingsXml);
		}
	}
}
