package view 
{
	import events.KeyEvent;
	import flash.events.KeyboardEvent;
	import model.KeyDataProxy;
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * ...
	 * @author colorhook
	 */
	public class StageMediator extends Mediator
	{
		
		[Inject]public var main:Main;
		[Inject]public var keyDataProxy:KeyDataProxy;
		
		override public function onRegister():void 
		{
			this.addContextListener(KeyEvent.KEY_UPDATE, onKeyUpdateEvent);
			main.stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDownEvent);
        }
 
        // Key down event handler
        private function onKeyDownEvent(event:KeyboardEvent):void 
		{
			var keyEvent:KeyEvent = new KeyEvent(KeyEvent.KEY_DOWN);
			keyEvent.charCode = event.charCode;
            this.dispatch(keyEvent);
        }
		
		private function onKeyUpdateEvent(event:KeyEvent):void 
		{
			var charCode:uint = keyDataProxy.key;
			trace(charCode);
		}

		
		
	}
	
}