package 
{
	import net.flashpunk.*;
	import entities.*;
	
	[SWF(width = "640", height = "480")]
	
	public class Main extends Engine
	{
		public function Main():void 
		{
			super(320, 240, 60, false);
			FP.screen.scale = 2;
			FP.world = new GameWorld("courtyard");
		}
	}
	
}