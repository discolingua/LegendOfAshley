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
			insidehut: Assets.MAP_INSIDEHUT,
			forest1: Assets.MAP_FOREST1,
			forest2: Assets.MAP_FOREST2,
			forest3: Assets.MAP_FOREST3,
			forest4: Assets.MAP_FOREST4,
			forest5: Assets.MAP_FOREST5,
			forest6: Assets.MAP_FOREST6,
			forest7: Assets.MAP_FOREST7,
			forest8: Assets.MAP_FOREST8,
			forest9: Assets.MAP_FOREST9
		};
		
	}

}