package  
{
	import entities.*;
	
	public class Globals 
	{
		public static const locations:Object =
		{
			courtyard: Assets.COURTYARD_MAP,
			house: Assets.HOUSE_MAP,
			eastroad: Assets.EASTROAD_MAP
		};
		
		public static var level:Level;
		public static var adventurer:Adventurer;
		
		public function Globals() 
		{
			
		}
		
	}

}