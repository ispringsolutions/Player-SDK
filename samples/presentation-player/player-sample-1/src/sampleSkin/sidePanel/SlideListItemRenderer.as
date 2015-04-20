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
	import fl.controls.listClasses.CellRenderer;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import ispring.utils.assets.AssetEvent;
	import ispring.utils.assets.AssetState;
	import ispring.utils.assets.IGraphicAsset;
	import sampleSkin.ComponentFactory;

	/**
	 * The CellRenderer class renders the slide list item extending the standard fl.controls.listClasses.CellRenderer class
	 */
	public class SlideListItemRenderer extends CellRenderer
	{
		public static const THUMBNAIL_OFFSET:Number = 10;
		public static const THUMBNAIL_WIDTH:Number = 100;
		public static const THUMBNAIL_HEIGHT:Number = 75;
		public static const LABEL_WIDTH:Number = 150;

		private var m_label:TextField;
		private var m_thumbnailFrame:Sprite;

		public function SlideListItemRenderer()
		{
			init();
		}

		/**
		 * Initializes item renderer appearance
		 */
		private function init():void
		{
			m_thumbnailFrame = new Sprite();
			m_thumbnailFrame.graphics.lineStyle(1, 0xE6E6E6);
			m_thumbnailFrame.graphics.drawRect(0, 0, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT);
			m_thumbnailFrame.x = THUMBNAIL_OFFSET;
			m_thumbnailFrame.y = THUMBNAIL_OFFSET;

			m_label = new TextField();
			m_label.wordWrap = true; 
			m_label.multiline = true; 
			m_label.width = LABEL_WIDTH;
			m_label.height = THUMBNAIL_HEIGHT;
			m_label.x = m_thumbnailFrame.x + m_thumbnailFrame.width;
			m_label.y = THUMBNAIL_OFFSET;
			m_label.embedFonts = true;

			addChild(m_thumbnailFrame);
			addChild(m_label);

			m_label.defaultTextFormat = new TextFormat(ComponentFactory.FONT_NAME, 12);
		}

		/**
		 * Extracts text and slide from the associated data object
		 */
		override public function set data(value:Object):void
		{
			m_label.text = (value.slide.visibleIndex + 1) + ". " + value.slide.title;

			if (value.slide.hasThumbnail)
			{
				 var thumbnail:IGraphicAsset = value.slide.thumbnail;
				var thumbnailState:String = thumbnail.state;

				if (thumbnailState != AssetState.LOADED)
				{
					thumbnail.addEventListener(AssetEvent.LOADING_COMPLETE, onThumbnailLoadingComplete, false, 0, true);
				}
				else
				{
					setThumbnail(thumbnail);
				}
			}

			truncateText();
		}
		   

		private function onThumbnailLoadingComplete(e:Event):void
		{
			var thumbnail:IGraphicAsset = e.target as IGraphicAsset;
			setThumbnail(thumbnail);
		}

		/**
		 * Attaches slide thumbnail to the content
		 */
		private function setThumbnail(thumbnail:IGraphicAsset):void
		{			
			if (!thumbnail.isLoaded)
			{
				throw new ArgumentError();
			}
			
			var instance:DisplayObject = thumbnail.createInstance();

			var scale:Number = Math.min(THUMBNAIL_WIDTH / instance.width, THUMBNAIL_HEIGHT / instance.height);
			instance.scaleX = scale
			instance.scaleY = scale;
			instance.x = Math.round((THUMBNAIL_WIDTH - instance.width) / 2);
			instance.y = Math.round((THUMBNAIL_HEIGHT - instance.height) / 2);
			m_thumbnailFrame.addChild(instance);
		}

		private function truncateText():void
		{
			while (m_label.maxScrollH || m_label.maxScrollV > 1)
			{
				var text:String = m_label.text;
				m_label.text = text.substr(0, text.length - 2) + "…";

				if (m_label.text.length <= 1)
					return;
			}			
		}
		
	}
}