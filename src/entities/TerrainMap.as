package entities
{

	// this is eventually going to get turned into a generic map loader class,
	// now it is just a test implementation of a tilemap + collision grid
	
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
			
			hillTiles.setTile(2,2,1);
			
			this.mask = hillGrid;
			x = 0;
			y = 0;
			type = "terraingrid";
			
			hillGrid.setTile(2, 2, true);
			
		}
		
/*		public function setTile(column:uint, row:uint, index:uint):void
		{
			terrain.setTile(column, row, index);
		}
*/		
	
		
	}

}