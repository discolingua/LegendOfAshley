package entities
{
	// This is a class for the room the player starts in.

	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
		
	public class GameWorld extends World
	{
		public var mapName:String;
		
		public function GameWorld(newMap:String):void
		{
			mapName = newMap;
		}
		
		override public function begin():void
		{
			FP.screen.color = 0x00C322;
			
			Globals.adventurer = new Adventurer;
			add(Globals.adventurer);
			
			
			
			Globals.level = new Level(Constants.locations[mapName]);
			add(Globals.level);
			

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