﻿package {
	
	import flash.display.MovieClip;
	
	import org.robotlegs.core.IContext;
	import context.ApplicationContext;
 
	/**
	* Main Class
	* @purpose Document class for movie
	* 
	* The example was developed using FlashDevelop and basically listens for user key presses, 
	* stores the last key pressed, and trace the key. It's a Robotlegs version of the MVC example
	* <a href='http://www.as3dp.com/2007/12/27/minimalist-mvc-example-using-the-puremvc-framework/'>Minimalist MVC example using the PureMVC Framework</a>
	* created by Chandima Cumaranatunge
	* 
	* @author colorhook
	* @see http://www.as3dp.com/2007/12/27/minimalist-mvc-example-using-the-puremvc-framework/
	*/
	public class Main extends MovieClip {
		
		protected var context:IContext;
		
		// setup the robotlegs framework.
		public function Main() {
			context=new ApplicationContext(this);
		}
		
	}
}