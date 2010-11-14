package entities
{
	// This is a class for the room the player starts in.

	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class GameWorld extends World
	{
		
		public function GameWorld():void
		{
			
		}
		
		override public function begin():void
		{
			FP.screen.color = 0x00C322;
			
			Globals.adventurer = new Adventurer;
			add(Globals.adventurer);
			
			Globals.level = new Level(Assets.COURTYARD_MAP);
			add(Globals.level);
			
			add(new TextPopup("oh yes that's right"));
		}
		
		override public function update():void 
		{
			super.update();
		}
		
		override public function render():void
		{
			super.render();
		}
	}
}