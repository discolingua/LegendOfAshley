package  
{
	// this class is to consolidate all embed data (artwork, maps, sound)
	
	public class Assets 
	{
		// tiles and sprites
		
		[Embed(source = "assets/art/tiles16.png")] public static const SPR_TERRAIN:Class;
		[Embed(source = "assets/art/adventurer16.png")] public static const SPR_ADVENTURER:Class;
		
		
		// maps
		
		[Embed(source = "assets/maps/courtyard.oel", mimeType = "application/octet-stream")] 
		public static const COURTYARD_MAP:Class;
		[Embed(source = "assets/maps/house.oel", mimeType = "application/octet-stream")]
		public static const HOUSE_MAP:Class;
		
		
		// font
		
		//[Embed(source = "assets/nokiafc22.ttf", fontFamily = "visitor7pt")] public static const DEFAULT_FONT:Class;
		
	}

}