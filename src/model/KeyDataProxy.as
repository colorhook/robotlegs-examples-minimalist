package model 
{
	import events.KeyEvent;
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * ...
	 * @author colorhook
	 */
	public class KeyDataProxy extends Actor 
	{
		
		private var lastKeyPressed:uint = undefined;
 
 
        public function set key(charCode:uint):void {
            if (lastKeyPressed != charCode) {
                lastKeyPressed = charCode;
				var keyUpdateEvent:KeyEvent = new KeyEvent(KeyEvent.KEY_UPDATE);
				keyUpdateEvent.charCode = charCode;
                this.dispatch(keyUpdateEvent);
            }
        }
	
		
		public function get key():uint {
			return lastKeyPressed;
		}
		
	}
	
}