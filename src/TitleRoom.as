package  
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	
	public class TitleRoom extends World
	{
		

		public function TitleRoom()
		{
			FP.screen.color = 0x444444;
			add(new TerrainMap);
			TerrainMap.setTile(0, 0, 1);
			
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