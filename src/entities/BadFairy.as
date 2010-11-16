package entities 
{

	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class BadFairy extends Entity
	{
		public function BadFairy() 
		{
			graphic = new Image(Assets.SPR_BADFAIRY);
			x = 40;
			y = 40;
			width = 8;
			height = 12;
			type = "enemy";
		}
		
	}

}