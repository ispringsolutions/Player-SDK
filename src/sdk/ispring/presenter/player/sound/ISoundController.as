/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.player.sound
{

import flash.events.IEventDispatcher;

/**
 * Dispatched when the sound volume level is changed.
 * 
 * @eventType ispring.presenter.player.sound.SoundControllerEvent.VOLUME_CHANGED
 * 
 * @see #volume
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="volumeChanged", type="ispring.presenter.player.sound.SoundControllerEvent")]

/**
 * Dispatched when the real sound volume level is changed.
 * 
 * @eventType ispring.presenter.player.sound.SoundControllerEvent.REAL_VOLUME_CHANGED
 * 
 * @see #realVolume
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="realVolumeChanged", type="ispring.presenter.player.sound.SoundControllerEvent")]

/**
 * Dispatched when the mute state of the sound controller is toggled.
 * 
 * @eventType ispring.presenter.player.sound.SoundControllerEvent.MUTE_STATE_TOGGLED
 * 
 * @see #mute
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="muteStateToggled", type="ispring.presenter.player.sound.SoundControllerEvent")]

/**
 * The ISoundController interface is used to control the sound volume level of the presentation.
 * 
 * <p>To obtain the ISoundController interface from the presentation view use the 
 * <code>soundController</code> property on the IPresentationView interface.
 * To obtain the ISoundController interface from the standalone slide view use the
 * <code>soundController</code> property on the IStandaloneSlideView interface.
 * </p>
 * 
 * @see ispring.presenter.player.IPresentationView#soundController
 * @see ispring.presenter.player.IStandaloneSlideView#soundController
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISoundController extends IEventDispatcher
{
	/**
	 * The volume, ranging from 0 (silence) to 1 (full volume).
	 * 
	 * @see #realVolume
	 * @see #mute
	 * @throws RangeError Setter throws the <code>RangeError</code> exception if a new volume is out of range [0...1].
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get volume():Number;
	/**
	 * @private
	 */
	function set volume(value:Number):void;
	
	/**
	 * Indicates whether the sound is muted.
	 * 
	 * @see #volume
	 * @see #realVolume
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get mute():Boolean;
	function set mute(value:Boolean):void;
	
	/**
	 * Returns the real sound volume taking the mute state into account.
	 * 
	 * <p>If the sound is muted, the <code>realVolume</code> property returns 0.
	 * Otherwise the value of the <code>volume</code> property is returned.
	 * </p>
	 * 
	 * @see #mute
	 * @see #volume
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get realVolume():Number;
}

}