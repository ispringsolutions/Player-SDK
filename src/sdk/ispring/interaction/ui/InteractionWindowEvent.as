/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.interaction.ui 
{
import flash.events.Event;

public class InteractionWindowEvent extends Event
{
	public static const EXIT_BUTTON_CLICK:String = "exitButtonClick"; 
	public static const EXIT_BUTTON_AVAILABILITY_CHANGED:String = "exitButtonAvailabilityChanged"; 
		
	public function InteractionWindowEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
	{ 
		super(type, bubbles, cancelable);
	} 
		
	public override function clone():Event 
	{ 
		return new InteractionWindowEvent(type, bubbles, cancelable);
	} 
		
	public override function toString():String 
	{ 
		return formatToString("InteractionWindowEvent", "type", "bubbles", "cancelable"); 
	}
			
}

}