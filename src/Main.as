package 
{
	import net.flashpunk.*;
	import entities.*;
	
	[SWF(width = "576", height = "432")]
	
	public class Main extends Engine
	{
		public function Main():void 
		{
			super(576, 432, 60, false);
			FP.world = new TitleRoom;
		}
	}
	
}