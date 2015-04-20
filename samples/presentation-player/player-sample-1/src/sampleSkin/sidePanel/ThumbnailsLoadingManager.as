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
	import ispring.utils.assets.AssetEvent;
	import ispring.utils.assets.AssetState;
	import ispring.utils.assets.IGraphicAsset;

	public class ThumbnailsLoadingManager
	{
		private var m_thumbnails:Array;

		public function ThumbnailsLoadingManager(thumbnails:Array)
		{
			if (thumbnails == null)
			{
				throw new ArgumentError();
			}
			
			m_thumbnails = thumbnails;
			
			loadNextThumbnail();
		}

		/**
		 * Loads next slide thumbnail
		 */
		private function loadNextThumbnail():void
		{
			while (m_thumbnails.length > 0)
			{
				var nextThumbnail:IGraphicAsset = m_thumbnails.shift();
				if (nextThumbnail.state == AssetState.NOT_LOADED)
				{
					nextThumbnail.addEventListener(AssetEvent.LOADING_COMPLETE, onThumbnailLoadingComplete, false, 0, true);
					nextThumbnail.addEventListener(AssetEvent.LOADING_FAILURE, onThumbnailLoadingFailure, false, 0, true);
					nextThumbnail.load();
					return;
				}
			}
		}

		private function onThumbnailLoadingComplete(e:AssetEvent):void
		{
			var thumbnail:IGraphicAsset = e.target as IGraphicAsset;
			thumbnail.removeEventListener(AssetEvent.LOADING_COMPLETE, onThumbnailLoadingComplete);
			
			loadNextThumbnail();
		}
		
		private function onThumbnailLoadingFailure(e:AssetEvent):void
		{
			var thumbnail:IGraphicAsset = e.target as IGraphicAsset;
			thumbnail.removeEventListener(AssetEvent.LOADING_FAILURE, onThumbnailLoadingFailure);
			
			loadNextThumbnail();
		}
	}
}
