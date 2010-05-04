package controller 
{
	import events.KeyEvent;
	import model.KeyDataProxy;
	import org.robotlegs.mvcs.Command;
	
	public class KeyDownCommand extends Command
	{
		[Inject]public var keyEvent:KeyEvent;
		[Inject]public var keyDataProxy:KeyDataProxy;
		
		// Set the char code of the key pressed in KeyDataProxy
		override public function execute():void
		{
			keyDataProxy.key = keyEvent.charCode;
		}
		
	}
}