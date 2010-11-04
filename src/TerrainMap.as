package  
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	
	public class TerrainMap extends Entity
	{
		[Embed(source = "assets/art/tilemap.png")] private const TERRAIN:Class;
		private var terrain:Tilemap = new Tilemap(TERRAIN, 576, 432, 72, 72);
				
		public function TerrainMap() 
		{
			this.graphic = terrain;
			x = 0;
			y = 0;
			type = "terrainmap";
		}
		
	}

}