/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.sequencing.actions
{
	import flash.net.URLRequest;
	import ispring.sequencing.actions.IAction;

	public interface INavigateToUrlAction extends IAction
	{
		function get urlRequest():URLRequest;
		function get target():String;
	}
}
