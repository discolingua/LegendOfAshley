package entities
{

	// Map loader class, populate the level with terrain grid + objects
	// from an (XML) OGMO Editor level
	
	import flash.utils.ByteArray;
	import net.flashpunk.*;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	
	public class Level extends Entity
	{
		
		public var terrainTiles:Tilemap = new Tilemap(Assets.SPR_TERRAIN, 320, 240, 16, 16);
		public var terrainGrid:Grid = new Grid(320, 240, 16, 16, 0, 0);
		public var exit:Exit;

		public function Level(xmlLevel:Class):void 
		{
			this.graphic = terrainTiles;
			x = 0;
			y = 0;
			type = "terraintiles";
			
			this.mask = terrainGrid;
			x = 0;
			y = 0;
			type = "terraingrid";
			
			loadLevel(xmlLevel);
			
		}
		
		private function loadLevel(xmlLevel:Class):void 
		{
			// this function is the big money heavy hitter which loads in the tilemap / objects for each room
			// I thought about splitting it into separate functions for loadExits, loadTilemap etc. 
			// but for the moment I am only calling the whole thing top down once per room
			
			// the xml file (embedded in Assets.as) is converted from a byteArray to a String
			// and then finally cast as an XML object
			
			var rawData:ByteArray = new xmlLevel;
			var dataString:String = rawData.readUTFBytes( rawData.length );
			var xmlData:XML = new XML(dataString);
			
			var dataList:XMLList;
			var dataElement:XML;
			
			// level name
			
			var levelName:String;
			

			// variables for placement of individual objects + rectangles **********************************
			
			var xpos:int;
			var ypos:int;
			var rectW:int;
			var rectH:int;
			var tileIndex:int;

			// get room description etc. *******************************************************************

			Globals.textBlock = xmlData.@description.split('|');
			trace(Globals.textBlock[0]);

			
			// set player start location *******************************************************************
			
			dataList = xmlData.objects.playerStart;
			
			for each (dataElement in dataList) 
			{
				Globals.adventurer.x = int(dataElement.@x);
				Globals.adventurer.y = int(dataElement.@y);
			}
			
			
			// loop through individual tiles + place collision grid ****************************************
			
			dataList = xmlData.terrain.tile;
			
			for each (dataElement in dataList)
			{
				xpos = int(dataElement.@x) / Constants.TILE_SIZE;
				ypos = int(dataElement.@y) / Constants.TILE_SIZE;
				tileIndex = int(dataElement.@id);
				
				terrainTiles.setTile(xpos, ypos, tileIndex);
				terrainGrid.setTile(xpos, ypos);
			}
			
			// loop through rectangles ******************************************************************
			
			dataList = xmlData.terrain.rect;
			
			for each (dataElement in dataList)
			{
				xpos = int(dataElement.@x) / Constants.TILE_SIZE;
				ypos = int(dataElement.@y) / Constants.TILE_SIZE;
				rectW = int(dataElement.@w) / Constants.TILE_SIZE;
				rectH = int(dataElement.@h) / Constants.TILE_SIZE;
				tileIndex = int(dataElement.@id);
				
				terrainTiles.setRect(xpos, ypos, rectW, rectH, tileIndex);
				terrainGrid.setRect(xpos, ypos, rectW, rectH);
			}
			
			// load exits *******************************************************************************
			
			dataList = xmlData.objects.exit;
			
			for each (dataElement in dataList)
			{
				exit = new Exit;
				(FP.world as GameWorld).add(exit);
				exit.x = int(dataElement.@x);
				exit.y = int(dataElement.@y);
				exit.graphic.visible = false;
				exit.destRoom = String(dataElement.@destRoom);
			}
			
			
		}
	}
}