package context 
{
	import controller.*;

	import events.KeyEvent;
	import flash.display.DisplayObjectContainer;
	import model.KeyDataProxy;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	import view.StageMediator;
	
	/**
	 * 
	 * @author colorhook
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
		override public function startup():void{	
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