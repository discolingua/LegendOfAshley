package entities
{
	// This is a class for the room the player starts in.
	// It might get merged with TerrainMap
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class GameWorld extends World
	{
		public function Gameworld():void
		{
			
		}
		
		override public function begin():void
		{
			FP.screen.color = 0x00C322;
			
//			add(new Level(Assets.TEST_MAP));
			add(new Adventurer);
			
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