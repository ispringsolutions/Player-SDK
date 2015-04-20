/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player
{

/**
 * The IPresentationView2 interface extends the IPresentationView interface providing additional
 * functionality of the presentation view.
 * 
 * <p>The IPresentationView2 interface has become available since iSpring Pro 6.2 and iSpring Platform 6.2.
 * It can be obtained from an existing IPresentationView interface using type casting.</p>
 * 
 * @example The following example illustrates accessing extended presentation view functionality via the IPresentationView2 interface.
 * <listing version="3.0">
 * import ispring.presenter.player.IPresentationView;
 * import ispring.presenter.player.IPresentationView2;
 * 
 * var presentationView:IPresentationView;
 * ...
 * 
 * // Checking whether extended IPresentationView2 interface is supported by the presentation view
 * var presentationView2:IPresentationView2 = presentationView as IPresentationView2;
 * if (presentationView2 != null)
 * {
 *     // Access the extended presentation view functionality
 *     ...
 * }
 * else
 * {
 *     // The IPresentationView interface is not supported by the presentation view
 *     // because the presentation was created with the earlier version of iSpring Pro or iSpring Platform
 * }
 * </listing>
 * 
 * @see ispring.presenter.player.IPresentationView
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.2
 */
public interface IPresentationView2 extends IPresentationView
{
	/**
	 * Indicates whether slide web objects are visible.
	 * 
	 * <p>Setting this property to <code>false</code> hides all currently displayed web objects. 
	 * The web objects are not displayed until the property is set to <code>true</code>.
	 * Setting this property to <code>true</code> shows the web objects which are to be displayed at the moment.
	 * </p>
	 * 
	 * <p>This property is useful when the application or the skin needs to show some information over the slide area.
	 * Web objects embedded into slide are always displayed in an &lt;iframe&gt; covering the Flash Player area and may hide this information.
	 * The application may temporary hide web objects to make sure that the the information is not covered by web objects.</p>
	 * 
	 * @default true
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.2
	 */
	function get webObjectsAreVisible():Boolean;
	/**
	 * @private
	 */
	function set webObjectsAreVisible(value:Boolean):void;
}

}