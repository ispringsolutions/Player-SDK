/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin.sidePanel
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ispring.presenter.player.IPresentationView2;
	import sampleSkin.IComponentFactory;
	import sampleSkin.settings.IBuildSettings;
	import sampleSkin.settings.SkinSettings;
	import ispring.presenter.presentation.IPresentation;

	public class SidePanel extends Sprite
	{
		private static const VIDEO_PANEL_HEIGHT:int = 150;

		private var m_componentFactory:IComponentFactory;
		private var m_presentation:IPresentation;
		private var m_presentationView:IPresentationView2;
		private var m_skinSettings:SkinSettings;
		private var m_buildSettings:IBuildSettings;

		private var m_thumbnailsPanel:ThumbnailsPanel;
		private var m_videoPanel:VideoPanel;

		private var m_width:Number = 0;
		private var m_height:Number = 0;
		
		public function SidePanel(componentFactory:IComponentFactory,
			presentation:IPresentation,
			presentationView:IPresentationView2,
			settings:SkinSettings,
			buildSettings:IBuildSettings)
		{
			 if (componentFactory == null ||
				presentation == null ||
				presentationView == null ||
				settings == null ||
				buildSettings == null)
			{
				throw new ArgumentError();
			}

			m_componentFactory = componentFactory;
			m_presentation = presentation;
			m_skinSettings = settings;
			m_buildSettings = buildSettings;
			m_presentationView = presentationView;

			m_videoPanel = new VideoPanel(m_componentFactory, m_presentationView.videoNarrationPlayer);
			m_videoPanel.addEventListener(VideoPanel.HIDE_VIDEO_PANEL, onHideVideoPanel);
			m_videoPanel.addEventListener(VideoPanel.SHOW_VIDEO_PANEL, onShowVideoPanel);
			addChild(m_videoPanel);

			m_thumbnailsPanel = new ThumbnailsPanel(m_componentFactory, m_presentation, m_presentationView, m_skinSettings, m_buildSettings);
			addChild(m_thumbnailsPanel);

			m_videoPanel.visible = false;
		}

		private function onHideVideoPanel(e:Event):void
		{
			m_thumbnailsPanel.resize(m_width, m_height);
			m_thumbnailsPanel.y = 0;
			m_videoPanel.visible = false;
		}

		private function onShowVideoPanel(e:Event):void
		{
			m_thumbnailsPanel.resize(m_width, m_height - VIDEO_PANEL_HEIGHT);
			m_thumbnailsPanel.y = VIDEO_PANEL_HEIGHT;
			m_videoPanel.visible = true;
		}
		
		public function resize(w:Number, h:Number):void
		{
			m_width= w;
			m_videoPanel.resize(m_width, VIDEO_PANEL_HEIGHT);

			height = h;
		}

		override public function set height(h:Number):void
		{
			m_height = h;
			m_thumbnailsPanel.resize(m_width, m_videoPanel.visible ? h - VIDEO_PANEL_HEIGHT : h);
		}
	}
}
