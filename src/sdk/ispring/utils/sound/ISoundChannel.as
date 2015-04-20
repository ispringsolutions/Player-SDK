/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.utils.sound 
{
	
import flash.events.IEventDispatcher;
import flash.media.SoundTransform;

/**
 * Dispatched when a sound has finished playing.
 * 
 * @eventType flash.events.Event.SOUND_COMPLETE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="soundComplete", type="flash.events.Event")]


/**
 * The ISoundChannel interface is a wrapper for a SoundChannel object.
 * 
 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/media/SoundChannel.html flash.media.SoundChannel
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISoundChannel extends IEventDispatcher
{
	/**
	 * When the sound is playing, the <code>position</code> property indicates in milliseconds the current point that is being played in the sound file.
	 * When the sound is stopped or paused, the <code>position</code> property indicates the last point that was played in the sound file.
	 * 
	 * <p>A common use case is to save the value of the <code>position</code> property when the sound is stopped.
	 * You can resume the sound later by restarting it from that saved position. 
	 * </p>
	 * 
	 * <p>If the sound is looped, <code>position</code> is reset to 0 at the beginning of each loop.</p>
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get position():Number;
	
	/**
	 * The SoundTransform object assigned to the sound channel.
	 * A SoundTransform object includes properties for setting volume, panning, left speaker assignment, and right speaker assignment.
	 * 
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/media/SoundTransform.html flash.media.SoundTransform
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get soundTransform():SoundTransform;
	/**
	 * @private
	 */
	function set soundTransform(value:SoundTransform):void;
	
	/**
	 * Stops the sound playing in the channel.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function stop():void;
}
	
}