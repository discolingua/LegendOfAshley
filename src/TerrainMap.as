package  
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	
	public class TerrainMap extends Entity
	{
		[Embed(source = "assets/art/tilemap.png")] private const TERRAIN:Class;
		public var hillTiles:Tilemap = new Tilemap(TERRAIN, 576, 432, 72, 72);
				
		public function TerrainMap():void 
		{
			this.graphic = hillTiles;
			x = 0;
			y = 0;
			type = "terrainmap";
			
			hillTiles.setTile(0, 0, 1);
			
		}
		
/*		public function setTile(column:uint, row:uint, index:uint):void
		{
			terrain.setTile(column, row, index);
		}
*/		
	
		
	}

}