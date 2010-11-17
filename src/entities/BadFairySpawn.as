package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class BadFairySpawn extends Entity
	{
		public var health:int = 5;
		
		public function BadFairySpawn() 
		{
			graphic = new Image(Assets.SPR_BADFAIRYSPAWN);
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "spawn";
		}
		
	}

}