/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.interaction 
{
import flash.events.IEventDispatcher;
import ispring.interaction.ui.IInteractionWindow;


/**
 * Dispatched when the interaction is initialized.
 * 
 * @eventType ispring.interaction.InteractionEvent.INIT
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * @productversion iSpring&nbsp;Kinetics 6.0.3
 */
[Event(name="interactionInitialized", type="ispring.interaction.InteractionEvent")]

	
/**
 * The IInteraction interface represents an iSpring Kinetics interaction.
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * @productversion iSpring&nbsp;Kinetics 6.0.3
 */
public interface IInteraction extends IEventDispatcher
{
	/**
	 * Returns the main window of the interaction.
	 * 
	 * @see ispring.interaction.ui.IInteractionWindow
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get window():IInteractionWindow;
	
	/**
	 * Indicates whether the interaction has been initialized.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function get initialized():Boolean;
	
	/**
	 * Activates the interaction. An activated interaction interacts with the user and plays multimedia content.
	 * 
	 * @see #deactivate()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function activate():void;
		
	/**
	 * Deactivates the interaction. A deactivated interaction does not interact with the user and doesn't play multimedia content.
	 * 
	 * @see #activate()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * @productversion iSpring&nbsp;Kinetics 6.0.3
	 */
	function deactivate():void;
}
	
}