package  
{
	import entities.*;
	import net.flashpunk.*;
	
	public class Globals 
	{
		
		// only one music loop needed, set e.g. in GameWorld.checkSpecialRooms
		
		public static var musicLoop:Sfx;
		public static var myFrequency:Number = 440;
		
		// the main objects for player + map + text panel
		
		public static var level:Level;
		public static var adventurer:Adventurer;
		public static var textBlock:Array;
		
		
		// flag to let the player read the text panel
		
		public static var isTalking:Boolean;

		
		public function Globals() 
		{
			
		}
		
	}

}