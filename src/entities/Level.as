package entities
{

	// this is eventually going to get turned into a generic map loader class,
	// now it is just a test implementation of a tilemap + collision grid
	
	import flash.utils.ByteArray;
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	
	public class Level extends Entity
	{
		
		public var terrainTiles:Tilemap = new Tilemap(Assets.SPR_TERRAIN, 640, 480, 16, 16);
		public var terrainGrid:Grid = new Grid(640,480, 16, 16, 0, 0);
		
		public function Level(xml:Class):void 
		{
			this.graphic = terrainTiles;
			x = 0;
			y = 0;
			type = "terraintiles";
			
			this.mask = terrainGrid;
			x = 0;
			y = 0;
			type = "terraingrid";
			
			loadLevel(xml);
			
		}
		
		private function loadLevel(xml:Class):void 
		{
			var rawData:ByteArray = new xml;
			var dataString:String = rawData.readUTFBytes( rawData.length );
			var xmlData:XML = new XML(dataString);
			
			var dataList:XMLList;
			var dataElement:XML;

			// variables for placement of individual tiles + rectangles
			
			var xpos:int;
			var ypos:int;
			var rectW:int;
			var rectH:int;
			var tileIndex:int;
			
			dataList = xmlData.terrain.tile;
			
			// loop through individual tiles + place collision grid
			
			for each (dataElement in dataList)
			{
				xpos = int(dataElement.@x) / Constants.TILE_SIZE;
				ypos = int(dataElement.@y) / Constants.TILE_SIZE;
				tileIndex = int(dataElement.@tx) / Constants.TILE_SIZE;
				
				terrainTiles.setTile(xpos, ypos, tileIndex);
				terrainGrid.setTile(xpos, ypos);
			}
			
			// loop through rectangles
			
			dataList = xmlData.terrain.rect;
			
			for each (dataElement in dataList)
			{
				xpos = int(dataElement.@x) / Constants.TILE_SIZE;
				ypos = int(dataElement.@y) / Constants.TILE_SIZE;
				rectW = int(dataElement.@w) / Constants.TILE_SIZE;
				rectH = int(dataElement.@h) / Constants.TILE_SIZE;
				tileIndex = int(dataElement.@tx) / Constants.TILE_SIZE;
				
				terrainTiles.setRect(xpos, ypos, rectW, rectH, tileIndex);
				terrainGrid.setRect(xpos, ypos, rectW, rectH);
			}
			
		}
	}
}