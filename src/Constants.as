package  
{
	public class Constants 
	{
		
		// dimension (in pixels) of the basic tile grid
		
		public static const TILE_SIZE:Number = 16;
		
		// field delimiter ("|") for multiline text fields
		
		public static const DELIMITER:RegExp = /\|/g;
		
		// 'locations' is a simple data dictionary between room name and map name
		
		public static const locations:Object =
		{
			intro0: Assets.MAP_INTRO0,
			intro1: Assets.MAP_INTRO1,
			intro2: Assets.MAP_INTRO2,
			intro3: Assets.MAP_INTRO3,
			intro4: Assets.MAP_INTRO4,
			courtyard: Assets.MAP_COURTYARD,
			tavern: Assets.MAP_TAVERN,
			house: Assets.MAP_HOUSE,
			eastroad: Assets.MAP_EASTROAD,
			outsidehut: Assets.MAP_OUTSIDEHUT,
			insidehut: Assets.MAP_INSIDEHUT
		};
		
	}

}