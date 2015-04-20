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
	import flash.text.TextField;
	import flash.text.TextFormat;
	import ispring.presenter.player.video.events.VideoNarrationPlayerEvent;
	import ispring.presenter.player.video.IVideoNarrationPlayer;
	import sampleSkin.ComponentFactory;
	import sampleSkin.IComponentFactory;

	public class VideoPanel extends Sprite
	{
		public static const HIDE_VIDEO_PANEL:String = "HideVideoPanel";
		public static const SHOW_VIDEO_PANEL:String = "ShowVideoPanel";

		private var m_bg:Sprite;

		private var m_player:IVideoNarrationPlayer;
		private var m_noVideoOverlay:Sprite;
		private var m_noVideoLabel:TextField;
		
		public function VideoPanel(componentFactory:IComponentFactory, player:IVideoNarrationPlayer)
		{
			if (componentFactory == null ||
				player == null)
			{
				throw new ArgumentError();
			}

			m_bg = componentFactory.createSprite(0x00);
			addChild(m_bg);

			m_noVideoOverlay = componentFactory.createSprite(0x808080);
			addChild(m_noVideoOverlay);

			m_noVideoLabel = componentFactory.createLabel();
			m_noVideoLabel.text = "No video available";
			m_noVideoLabel.setTextFormat(new TextFormat(ComponentFactory.FONT_NAME, 28, 0x404040));

			addChild(m_noVideoLabel);
			
			m_player = player;
			m_player.addEventListener(VideoNarrationPlayerEvent.CURRENT_TRACK_CHANGED, onVideoChanged, false, 0, true);
			addChild(m_player.displayObject);

			onVideoChanged();
		}

		/**
		 * Update video player visibility when the video track changes
		 */
		private function onVideoChanged(e:Event = null):void
		{
			if (m_player.currentTrackIndex != uint.MAX_VALUE)
			{
				m_noVideoOverlay.visible = false;
				m_noVideoLabel.visible = false;
				dispatchEvent(new Event(SHOW_VIDEO_PANEL));
			}
			else
			{
				hideVideoPanel();  
			}
		}

		/**
		 * Notify listeners when that the video is not available
		 */
		private function hideVideoPanel():void
		{
			m_noVideoOverlay.visible = true;
			m_noVideoLabel.visible = true;
			dispatchEvent(new Event(HIDE_VIDEO_PANEL));
		}

		public function resize(w:Number, h:Number):void
		{
			m_noVideoLabel.x = Math.floor((w - m_noVideoLabel.width)/ 2);
			m_noVideoLabel.y = Math.floor((h - m_noVideoLabel.height)/ 2);

			m_bg.width = m_noVideoOverlay.width = w;
			m_bg.height = m_noVideoOverlay.height = h;

			m_player.resize(w, h);
		}
	}
}
