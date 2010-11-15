package  
{
	// this class is to consolidate all embed data (artwork, maps, sound)
	
	public class Assets 
	{
		// tiles and sprites
				
		[Embed(source = "assets/art/tiles16.png")] public static const SPR_TERRAIN:Class;
		[Embed(source = "assets/art/adventurer16.png")] public static const SPR_ADVENTURER:Class;
		
		// the exit sprite is not visible to the player
		
		[Embed(source = "assets/art/exit.png")] public static const SPR_EXIT:Class;
		
		
		// maps
		
		[Embed(source = "assets/maps/courtyard.oel", mimeType = "application/octet-stream")] 
		public static const MAP_COURTYARD:Class;
		[Embed(source = "assets/maps/house.oel", mimeType = "application/octet-stream")]
		public static const MAP_HOUSE:Class;
		[Embed(source = "assets/maps/eastroad.oel", mimeType = "application/octet-stream")]
		public static const MAP_EASTROAD:Class;
		
		// font
		
		//[Embed(source = "assets/nokiafc22.ttf", fontFamily = "visitor7pt")] public static const DEFAULT_FONT:Class;
		
	}

}