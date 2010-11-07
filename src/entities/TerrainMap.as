package entities
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	
	public class TerrainMap extends Entity
	{
		[Embed(source = "../assets/art/tilemap.png")] private const TERRAIN:Class;
		public var hillTiles:Tilemap = new Tilemap(TERRAIN, 576, 432, 72, 72);
		public var hillGrid:Grid = new Grid(576, 432, 72, 72, 0, 0);
		
		public function TerrainMap():void 
		{
			this.graphic = hillTiles;
			x = 0;
			y = 0;
			type = "terrainmap";
			
			hillTiles.setTile(0,0,1);
			
			this.mask = hillGrid;
			x = 0;
			y = 0;
			type = "terraingrid";
			
			hillGrid.setTile(0, 0, true);
			
		}
		
		public function TerrainGrid():void 
		{

		}
		
/*		public function setTile(column:uint, row:uint, index:uint):void
		{
			terrain.setTile(column, row, index);
		}
*/		
	
		
	}

}