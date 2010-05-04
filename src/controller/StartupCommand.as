package controller 
{
	import org.robotlegs.mvcs.Command;
	import model.KeyDataProxy;
	import view.StageMediator;
	
	public class StartupCommand extends Command
	{
		 // Map the Proxies and Mediators
		override public function execute():void 
		{
			injector.mapSingleton(KeyDataProxy);
			mediatorMap.mapView(Main, StageMediator);
		}
		
	}
}