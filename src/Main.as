package 
{
	import net.flashpunk.*;
	import entities.*;
	
	[SWF(width = "960", height = "720")]
	
	public class Main extends Engine
	{
		public function Main():void 
		{
			super(320, 240, 60, false);
			FP.screen.scale = 3;
			FP.world = new GameWorld;
		}
	}
	
}