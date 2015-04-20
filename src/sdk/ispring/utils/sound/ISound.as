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
import flash.media.ID3Info;
import flash.media.SoundTransform;


/**
 * Dispatched when the loading progress of the sound object is updated.
 * 
 * @eventType flash.events.ProgressEvent.PROGRESS
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="progress", type="flash.events.ProgressEvent")]

/**
 * Dispatched when I/O error occurs during loading of the sound object.
 * 
 * @eventType flash.events.IOErrorEvent.IO_ERROR
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="ioError", type="flash.events.IOErrorEvent")]

/**
 * Dispatchen when the sound is loaded completely.
 * 
 * @eventType flash.events.Event.COMPLETE
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="complete", type="flash.events.Event")]

/**
 * Dispatched when ID3 data is available for an mp3 sound.
 * 
 * @eventType flash.events.Event.ID3
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
[Event(name="id3", type="flash.events.Event")]

/**
 * The ISound interface represents a sound object.
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public interface ISound extends IEventDispatcher
{
	/**
	 * Returns the number of loaded bytes of the sound object.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get bytesLoaded():uint;
	
	/**
	 * Returns the total number of bytes of the sound object.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get bytesTotal():int;
	
	/**
	 * Indicates whether the sound is buffering.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get isBuffering():Boolean;
	
	/**
	 * Returns the length of the sound object in milliseconds.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get length():Number;
	
	/**
	 * Provides access to the metadata that is a part of an MP3 file.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function get id3():ID3Info;

	/**
	 * Closes the stream causing any download of data to cease.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */	
	function close():void;
	
	/**
	 * Generates a new sound channel object to play back the sound.
	 * 
	 * @param startTime The initial position in milliseconds at which playback should start.
	 * @param loops Defines the number of times a sound loops back to the <code>startTime</code> value before the sound channel stops playback.
	 * @param sndTransform The initial SoundTransform object assigned to the sound channel.
	 * 
	 * @return A ISoundChannel object which you use to control the sound.
	 * 
	 * @see ispring.utils.sound.ISoundChannel
	 * @see http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/media/SoundTransform.html flash.media.SoundTransform
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.1
	 * 
	 * @productversion iSpring&nbsp;Platform 6.0
	 */
	function play(startTime:Number = 0, loops:int = 0, sndTransform:SoundTransform = null):ISoundChannel;
}
	
}