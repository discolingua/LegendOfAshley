package entities
{
	// This is a class for the room the player starts in.
	// It might get merged with TerrainMap
	
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class TitleRoom extends World
	{
		static public var terrain:TerrainMap = new TerrainMap;

		public function TitleRoom()
		{
			
		}
		
		override public function begin():void
		{
			FP.screen.color = 0x444444;
			
			add(terrain);
			add(new Adventurer);
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