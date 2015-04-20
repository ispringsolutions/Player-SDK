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
import flash.events.IEventDispatcher;

/**
 * The IKeyboardController interface is used to enable or disable keyboard navigation within the presentation.
 * 
 * <p>To obtain the IKeyboardController interface use the <code>keyboardController</code> property on 
 * the IPresentatonView interface.</p>
 * 
 * <p>Keyboard control is enabled if the <code>keyboardEnabled</code> property is <code>true</code> AND no active lock is applied
 * to the keyboard controller.</p>
 * 
 * <p>The IKeyboardController interface extends the <code>flash.events.IEventDispatcher</code> interface.
 * The current implementation of the IKeyboardController interface
 * does not displatch any event. This functionality is reserved for future versions.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationView
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IEventDispatcher.html flash.events.IEventDispatcher
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface IKeyboardController extends IEventDispatcher
{
	/**
	 * Indicates whether keyboard is enabled.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get keyboardEnabled():Boolean;
		
	/**
	 * @private
	 */
	function set keyboardEnabled(value:Boolean):void;
		
	/**
	 * Locks the specified lock of the keyboard controller.
	 * 
	 * @param lockName A name of the lock to lock.
	 * 
	 * @see #unlock()
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function lock(lockName:String = ""):void;
		
	/**
	 * Determines whether a lock with the specified name is in the locked state.
	 * 
	 * @param lockName specifies a name of the lock to check.
	 * 
	 * @return A Boolean value indicating whether the specified lock is locked.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function isLocked(lockName:String = ""):Boolean;
		
	/**
	 * Returns an array of names of the active locks of the keyboard controller.
	 * 
	 * @return An array of names of the active locks of the keyboard controller.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function getActiveLockNames():Array;
		
	/**
	 * Unlocks the specified lock of the keyboard controller.
	 * 
	 * @param lockName is a name of the lock to be unlocked.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function unlock(lockName:String = ""):void;
		
	/**
	 * Unlocks all active locks.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function unlockAll():void
}

}