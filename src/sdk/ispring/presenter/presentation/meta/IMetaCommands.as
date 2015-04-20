/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.meta 
{
	
/**
 * The IMetaCommands interface represents a collection of meta commands.
 * 
 * <p>The IMetaCommands interface can be obtained using the <code>metaCommands</code> property on the
 * ISlide interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.slides.ISlide#metaCommands
 * @see ispring.presenter.presentation.meta.IMetaCommand
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IMetaCommands 
{
	/**
	 * Returns the number of meta commands in the collection.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get count():uint;
	
	/**
	 * Returns the IMetaCommand interface of the meta command that exists at the specified index.
	 * 
	 * @param index The index of the meta within the collection. The index value must be in the range from 0 to the number of meta commands minus 1.
	 * 
	 * @return The meta command at the specified index position.
	 * 
	 * @throws RangeError Throws if the specified meta command index is out of range.
	 * 
	 * @see ispring.presenter.presentation.meta.IMetaCommand
	 * @see #count
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getMetaCommand(index:uint):IMetaCommand;
}
	
}