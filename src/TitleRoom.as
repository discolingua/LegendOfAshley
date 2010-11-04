package  
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	
	public class TitleRoom extends World
	{
		
		[Embed(source = "assets/art/tilemap.png")] private const TERRAIN:Class;
		private var terrain:Tilemap = new Tilemap(TERRAIN, 576, 432, 72, 72);
		
		public function TitleRoom()
		{
			FP.screen.color = 0x444444;
			terrain.setTile(0,0,1);
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