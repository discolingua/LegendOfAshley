package entities
{
	// GameWorld.as is the top-level class under Main, it contains all other instances and is destroyed & recreated
	// whenever a room exit is touched
	
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
			
			// add
			
			Globals.adventurer = new Adventurer;
			add(Globals.adventurer);
			
			Globals.level = new Level(Constants.locations[mapName]);
			add(Globals.level);
			
			
			checkSpecialRooms(mapName);
		}
		
		override public function update():void 
		{
			super.update();
		}
		
		override public function render():void
		{
			super.render();
		}
		
		private function checkSpecialRooms(myMap:String):void
		{
			switch (myMap) 
			{
				case "intro1":
				var musicLoop:Sfx;
				musicLoop = new Sfx(Assets.MUS_INTRO);
				musicLoop.loop();
				add(new GoodFairy);
				break;
				default:
					// do nothing
				break;
			}
		}
		
	}
}