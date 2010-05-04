package events 
{
	import flash.events.Event;
	
	public class KeyEvent extends Event 
	{
		public static const KEY_DOWN:String = "keyDown";
		public static const KEY_UPDATE:String = "keyUpdate";
		
		public var charCode:uint;
		
		public function KeyEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			var event:KeyEvent = new KeyEvent(this.type, this.bubbles, this.cancelable);
			event.charCode = this.charCode;
			return event;
		}
	}
	
}