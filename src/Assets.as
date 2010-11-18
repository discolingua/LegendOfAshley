package  
{
	// this class is to consolidate all embed data (artwork, maps, sound)
	
	public class Assets 
	{
		// tilemaps
		
		[Embed(source = "assets/art/tiles16.png")] public static const SPR_TERRAIN:Class;
		
		// individual sprites
		
		[Embed(source = "assets/art/adventurer16.png")] public static const SPR_ADVENTURER:Class;
		[Embed(source = "assets/art/bystander816.png")] public static const SPR_BYSTANDER:Class;
		[Embed(source = "assets/art/badfairy8x12.png")] public static const SPR_BADFAIRY:Class;
		[Embed(source = "assets/art/badfairyspawn.png")] public static const SPR_BADFAIRYSPAWN:Class;
		[Embed(source = "assets/art/fgss32.png")] public static const SPR_GOODFAIRY:Class;
		
		// the exit sprite is set visible=false by the Level.loadLevel function
		
		[Embed(source = "assets/art/exit.png")] public static const SPR_EXIT:Class;
		
		
		
		
		// Maps! Each map also should have a data dictionary entry in Constants.as
		
		[Embed(source = "assets/maps/intro/intro0.oel", mimeType = "application/octet-stream")]
		public static const MAP_INTRO0:Class;
		[Embed(source = "assets/maps/intro/intro1.oel", mimeType = "application/octet-stream")]
		public static const MAP_INTRO1:Class;
		[Embed(source = "assets/maps/intro/intro2.oel", mimeType = "application/octet-stream")]
		public static const MAP_INTRO2:Class;
		[Embed(source = "assets/maps/intro/intro3.oel", mimeType = "application/octet-stream")]
		public static const MAP_INTRO3:Class;		
		[Embed(source = "assets/maps/intro/intro4.oel", mimeType = "application/octet-stream")]
		public static const MAP_INTRO4:Class;				
		
		[Embed(source = "assets/maps/courtyard.oel", mimeType = "application/octet-stream")] 
		public static const MAP_COURTYARD:Class;
		[Embed(source = "assets/maps/house.oel", mimeType = "application/octet-stream")]
		public static const MAP_HOUSE:Class;
		[Embed(source = "assets/maps/tavern.oel", mimeType = "application/octet-stream")]
		public static const MAP_TAVERN:Class;
		[Embed(source = "assets/maps/eastroad.oel", mimeType = "application/octet-stream")]
		public static const MAP_EASTROAD:Class;
		[Embed (source = "assets/maps/forest/outsidehut.oel", mimeType = "application/octet-stream")]
		public static const MAP_OUTSIDEHUT:Class;
		[Embed (source = "assets/maps/forest/insidehut.oel", mimeType = "application/octet-stream")]
		public static const MAP_INSIDEHUT:Class;
		
		// music
		
		[Embed(source = "assets/music/mus_intro.mp3")] public static const MUS_INTRO:Class;
		[Embed(source = "assets/music/mus_woods.mp3")] public static const MUS_WOODS:Class;
		
		
		
		// font
		
		//[Embed(source = "assets/nokiafc22.ttf", fontFamily = "visitor7pt")] public static const DEFAULT_FONT:Class;
		
	}

}