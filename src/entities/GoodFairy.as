package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class GoodFairy extends Entity
	{
		private var speed:Number = 20;
		
		public function GoodFairy() 
		{
			graphic = new Image(Assets.SPR_GOODFAIRY);
			x = 200;
			y = 170;
			width = 32;
			height = 32;
			type = "ally";
		}
		
		override public function update():void 
		{
			// drift slowly to the right (speed 20 is good)
			
			var mySpeed:Number = FP.elapsed * speed;
			x += mySpeed;
		}
		
	}

}