package  
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	
	public class TitleRoom extends World
	{
		private var terrain:TerrainMap = new TerrainMap;

		public function TitleRoom()
		{
			FP.screen.color = 0x444444;
			
			add(terrain);
			add(new Adventurer);
			
			terrain.setTile(0, 0, 1);
			
			
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