package context 
{
	
	import flash.display.DisplayObjectContainer;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	import events.KeyEvent;
	import controller.*;
	import model.KeyDataProxy;
	import view.StageMediator;
	
	/**
	 * The context provides a central event bus and takes care of its own startup and shutdown.
	 */
	public class ApplicationContext extends Context
	{
		
		public function ApplicationContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true) 
		{
			super(contextView, autoStartup);
		}
		
		/**
		 * The Startup Hook
		 * in this hook, initialize Model, Service, Controller and View
		 * follow the MVCS Design Pattern.
		 * 
		 * Broadcast the STARTUP Event.
		 */ 
		override public function startup():void
		{	
			initializeController();
			dispatchEvent(new ContextEvent(ContextEvent.STARTUP));
		}

		// Register Commands with the Controller
		protected function initializeController():void
		{
			commandMap.mapEvent(ContextEvent.STARTUP, StartupCommand, ContextEvent, true);
			commandMap.mapEvent(KeyEvent.KEY_DOWN, KeyDownCommand);
		}
		
	}
}