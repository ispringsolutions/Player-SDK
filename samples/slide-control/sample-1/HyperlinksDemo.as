/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package
{

import flash.display.Loader;
import flash.display.Sprite;
import flash.events.Event;
import flash.net.URLRequest;
import flash.net.navigateToURL;
import flash.system.ApplicationDomain;
import flash.system.LoaderContext;
import flash.system.fscommand;
import ispring.presenter.ISlidePlayerContainer;
import ispring.presenter.player.core.IHyperlinkManager;

public class HyperlinksDemo extends Sprite implements IHyperlinkManager
{
	private static const SLIDES_COUNT:uint = 3;
	private static const SLIDES_PREFIX:String = "slide";
	private static const SLIDES_FOLDER:String = "presentation";
	
	private var m_loader:Loader;
	
	private var m_lastSlideIndex:int = -1;
	private var m_currentSlideIndex:int = -1;
	
	public function HyperlinksDemo()
	{
		loadSlide(0);
	}
	
	public function loadSlide(index:int):void
	{
		if((index < 0)||(index >= SLIDES_COUNT))
		{
			throw new ArgumentError("incorrect slide index");
		}
		
		m_lastSlideIndex = m_currentSlideIndex;
		m_currentSlideIndex = index;
		
		if(numChildren > 0)
		{
			removeChildAt(0);
		}
		
		m_loader = new Loader();
		var context:LoaderContext = new LoaderContext(false, new ApplicationDomain(ApplicationDomain.currentDomain));
		m_loader.contentLoaderInfo.addEventListener(Event.INIT, onSlideInit);
		
		var filename:String = SLIDES_FOLDER + "/" + SLIDES_PREFIX + (index + 1).toString() + ".swf";
		m_loader.load(new URLRequest(filename), context);
	}

	private function onSlideInit(e:Event):void
	{
		m_loader.contentLoaderInfo.removeEventListener(Event.INIT, onSlideInit);
		var container:ISlidePlayerContainer = m_loader.content as ISlidePlayerContainer;
		
		container.player.view.core.hyperlinkManager = this;
		
		addChildAt(container.player.view.displayObject, 0);
		
		//don't even try to do it :) you will get a lot of bugs
		//addChildAt(m_loader, 0);
	}
	
	public function hyperlinkToSlide(slideIndex:uint):void
	{
		loadSlide(slideIndex);
	}
	
	public function hyperlinkToLastSlideViewed():void
	{
		loadSlide(m_lastSlideIndex);
	}
	
	public function hyperlinkToFirstSlide():void
	{
		loadSlide(0);
	}
	
	public function hyperlinkToLastSlide():void
	{
		loadSlide(SLIDES_COUNT - 1);
	}
	
	public function hyperlinkToNextSlide():void
	{
		var nextSlideIndex:int = m_currentSlideIndex + 1;
		if (nextSlideIndex < SLIDES_COUNT) 
		{
			loadSlide(nextSlideIndex);
		}
	}

	public function hyperlinkToPreviousSlide():void
	{
		if (m_currentSlideIndex > 0)
		{
			loadSlide(m_currentSlideIndex - 1);
		}
	}
	
	public function hyperlinkToURL(url:String, target:String):void
	{
		try
		{
			navigateToURL(new URLRequest(url)/*, target*/);
		}
		catch (e:Error)
		{
			// handle error here
			trace(e);
		}
	}
	
	public function startSlideShow(slideShowName:String, showAndReturn:Boolean):void
	{
		trace("startSlideShow", slideShowName, showAndReturn);
	}
	
	public function endSlideShow():void
	{
		try
		{
			fscommand("quit");
		}
		catch (e:Error)
		{
			trace(e);
		}
	}
}

}