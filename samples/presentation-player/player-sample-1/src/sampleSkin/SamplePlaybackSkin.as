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
	import flash.events.EventDispatcher;
	import ispring.presenter.player.IPresentationView;
	import ispring.presenter.player.skin.ISkin;
	import ispring.presenter.player.skin.ui.ISkinWindow;
	import ispring.presenter.presentation.IPresentation;
	import sampleSkin.common.SkinWindow;
	import sampleSkin.settings.BuildSettings;
	import sampleSkin.settings.IBuildSettings;
	import sampleSkin.settings.SkinSettings;

	/**
	 * The SamplePlaybackSkin class is a player skin class used by the player core
	 */
	public class SamplePlaybackSkin extends EventDispatcher implements ISkin
	{		
		private var m_window:ISkinWindow;

		public function SamplePlaybackSkin(presentation:IPresentation, presentationView:IPresentationView, settingsXml:XML)
		{
			var skinSettings:SkinSettings = loadSkinSettings(settingsXml);
			var buildSettings:IBuildSettings = new BuildSettings();

			var skinUI:SampleSkinUI = new SampleSkinUI(presentation, presentationView, skinSettings, buildSettings);

			m_window = new SkinWindow(skinUI);
			m_window.maximized = true;
		}

		public function get window():ISkinWindow 
		{
			return m_window;
		}

		// Loads skin configuration settings from XML file
		private function loadSkinSettings(node:XML):SkinSettings
		{
			if (node == null)
			{
				throw new ArgumentError(node);
			}
			
			var settings:SkinSettings = new SkinSettings();
			
			var sidePanelSettings:XMLList = node.sidePanelSettings;
			settings.sidePanelAtLeft = sidePanelSettings.sidePanelAtLeft == "true";
			return settings;
		}
	}
}
