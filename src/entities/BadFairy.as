package entities 
{

	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class BadFairy extends Entity
	{
		private var speed:Number = 80;
		private var mySpeed:Number = speed * FP.elapsed;
		
		public function BadFairy() 
		{
			graphic = new Image(Assets.SPR_BADFAIRY);
			width = 8;
			height = 12;
			type = "enemy";
		}
		
		override public function update():void 
		{
			mySpeed = speed * FP.elapsed;
			x -= mySpeed;
		}
		
	}

}