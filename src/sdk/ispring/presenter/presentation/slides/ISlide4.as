/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.slides
{
import ispring.presenter.presentation.ITimestamp;

public interface ISlide4 extends ISlide3
{
	function get navigationSettings():ISlideNavigationSettings;

	function convertTimeToTimestamp(time:Number, considerTransitions:Boolean = true):ITimestamp;
}

}
