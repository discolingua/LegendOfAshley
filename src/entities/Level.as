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
			
			terrainTiles.setTile(1,1,2);
			
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
			trace(xmlData);
			
		}
	}
}