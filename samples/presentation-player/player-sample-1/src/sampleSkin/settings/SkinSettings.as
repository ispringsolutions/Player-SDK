/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package sampleSkin.settings
{
	public class SkinSettings
	{		
		private var m_sidePanelAtLeft:Boolean;

		public function SkinSettings()
		{
			
		}

		/**
		 * Indicates whether side panel is located on the left (true) or on the right (false)
		 */
		public function get sidePanelAtLeft():Boolean
		{
			return m_sidePanelAtLeft;
		}

		public function set sidePanelAtLeft(value:Boolean):void
		{
			m_sidePanelAtLeft = value;
		}
	}
}
