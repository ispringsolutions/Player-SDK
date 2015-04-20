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
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import ispring.presenter.player.events.TooltipEvent;
	import ispring.presenter.player.IPresentationView;
	import ispring.presenter.player.IPresentationView2;
	import ispring.presenter.presentation.IPresentation;
	import sampleSkin.common.Tooltip;
	import sampleSkin.navigation.NavigationPanel;
	import sampleSkin.settings.IBuildSettings;
	import sampleSkin.settings.SkinSettings;
	import sampleSkin.sidePanel.SidePanel;

	public class SampleSkinUI extends Sprite
	{
		private static const SKIN_WIDTH:Number = 1000;
		private static const SKIN_HEIGHT:Number = 650;

		private static const MIN_SKIN_WIDTH:Number = 820;
		private static const MIN_SKIN_HEIGHT:Number = 480;

		private static const SIDE_PANEL_WIDTH:Number = 280;
		private static const TITLE_PANEL_HEIGHT:Number = 50;

		private static const NAVIGATION_PANEL_HEIGHT:Number = 60;

		private var m_presentation:IPresentation;
		private var m_presentationView:IPresentationView2;
		private var m_skinSettings:SkinSettings;
		private var m_buildSettings:IBuildSettings;

		private var m_titlePanel:TitlePanel;
		private var m_navigationPanel:NavigationPanel;
		private var m_sidePanel:SidePanel;

		private var m_componentFactory:IComponentFactory;

		private var m_tooltip:Tooltip;

		private var m_width:Number;
		private var m_height:Number;

		public function SampleSkinUI(presentation:IPresentation, presentationView:IPresentationView, skinSettings:SkinSettings, buildSettings:IBuildSettings)
		{
			if (presentation == null ||
				presentationView == null ||
				skinSettings == null ||
				buildSettings == null)
			{
				throw new ArgumentError();
			}
			
			m_presentation = presentation;
			m_skinSettings = skinSettings;
			m_buildSettings = buildSettings;
			m_presentationView = presentationView as IPresentationView2;
			m_componentFactory = new ComponentFactory();
					
			m_presentationView.addEventListener(TooltipEvent.SHOW_TOOLTIP, onPresentationViewShowTooltip, false, 0, true);
			m_presentationView.addEventListener(TooltipEvent.HIDE_TOOLTIP, onPresentationViewHideTooltip, false, 0, true);
			addChild(m_presentationView.displayObject);
			
			m_titlePanel = new TitlePanel(m_componentFactory, m_presentation.title);
			addChild(m_titlePanel);

			m_navigationPanel = new NavigationPanel(m_componentFactory, m_presentation, m_presentationView, m_skinSettings, m_buildSettings);
			addChild(m_navigationPanel);

			m_sidePanel = new SidePanel(m_componentFactory, m_presentation, m_presentationView, m_skinSettings, m_buildSettings);
			addChild(m_sidePanel);

			m_tooltip = new Tooltip(m_componentFactory);
			addChild(m_tooltip);
			
			if (stage != null)
			{
				onAddedToStage();
			}
			else
			{
				addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			}
		}

		private function onAddedToStage(e:Event = null):void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			if (e != null && e.currentTarget != e.target)
			{
				return;
			}

			m_titlePanel.resize(SKIN_WIDTH, TITLE_PANEL_HEIGHT);

			if (m_skinSettings.sidePanelAtLeft)
			{
				m_presentationView.displayObject.x = SIDE_PANEL_WIDTH;
				m_navigationPanel.x = SIDE_PANEL_WIDTH;
			}
			else
			{
				m_sidePanel.x = SKIN_WIDTH - SIDE_PANEL_WIDTH;
			}
			
			m_presentationView.displayObject.y = TITLE_PANEL_HEIGHT;
			
			m_navigationPanel.y = m_presentationView.displayObject.height + TITLE_PANEL_HEIGHT;
			m_navigationPanel.resize(SKIN_WIDTH - SIDE_PANEL_WIDTH, NAVIGATION_PANEL_HEIGHT);

			m_sidePanel.y = TITLE_PANEL_HEIGHT;
			m_sidePanel.resize(SIDE_PANEL_WIDTH, SKIN_HEIGHT - TITLE_PANEL_HEIGHT);
		}

		// Shows hyperlink tooltip on Presentation View request
		private function onPresentationViewShowTooltip(e:TooltipEvent):void
		{
			m_tooltip.show(e.text, mouseX, mouseY);
		}
		
		// Hides hyperlink tooltip on Presentation View request
		private function onPresentationViewHideTooltip(e:TooltipEvent):void
		{
			m_tooltip.hide();
		}
		

		override public function set width(newWidth:Number):void
		{ 
			if (m_width == newWidth)
				return;

			m_width = newWidth;

			var hScale:Number = (newWidth < MIN_SKIN_WIDTH) ? newWidth / MIN_SKIN_WIDTH : 1; 
			var vScale:Number = (m_height < MIN_SKIN_HEIGHT) ? m_height / MIN_SKIN_HEIGHT : 1; 

			scaleView(Math.min(hScale, vScale));	
		}

		override public function set height(newHeight:Number):void
		{
			if (m_height == newHeight)
				return;

			m_height = newHeight;

			var vScale:Number = (newHeight < MIN_SKIN_HEIGHT) ? newHeight / MIN_SKIN_HEIGHT : 1; 
			var hScale:Number = (m_width < MIN_SKIN_WIDTH) ? m_width / MIN_SKIN_WIDTH : 1; 

			scaleView(Math.min(hScale, vScale));	
		}

		private function scaleView(scale:Number):void
		{
			m_titlePanel.scaleX = m_titlePanel.scaleY = scale;
			m_sidePanel.scaleX = m_sidePanel.scaleY = scale;
			m_navigationPanel.scaleX = m_navigationPanel.scaleY = scale;

			m_sidePanel.height = (m_height - m_titlePanel.height) / scale;

			m_navigationPanel.resize((m_width - m_sidePanel.width) / scale, m_navigationPanel.height);

			m_titlePanel.resize(m_width / scale, m_titlePanel.height / scale);

			m_navigationPanel.x = m_sidePanel.width; 
			m_navigationPanel.y = m_height - m_navigationPanel.height * scale;

			m_presentationView.displayObject.x = m_sidePanel.width; 
			m_presentationView.displayObject.y = m_sidePanel.y = m_titlePanel.height;

			m_presentationView.displayObject.width = m_width - m_sidePanel.width;
			m_presentationView.displayObject.height = m_navigationPanel.y - m_presentationView.displayObject.y;
		}

	}
}
