package 
{
	/*--
	 * LEGEND OF ASHLEY
	 * 
	 * Steve Harvey (h_double) 2010
	 * 
	 * built using Flex SDK 4 and Flashpunk 1.5
	 * 
	 */
	
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
			
			// Globals.musicLoop = new Sfx(Assets.MUS_INTRO);
			// Globals.musicLoop.loop();				
		}
	}
	
}