package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class GoodFairy extends Entity
	{
		
		public function GoodFairy() 
		{
			graphic = new Image(Assets.SPR_GOODFAIRY);
			x = 200;
			y = 170;
			width = 32;
			height = 32;
			type = "ally";
		}
		
	}

}