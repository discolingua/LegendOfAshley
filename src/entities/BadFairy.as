package entities 
{

	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class BadFairy extends Entity
	{
		private var speed:Number = 40;
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
			
			if (collide("bullet", this.x, this.y))
			{
				Globals.emThreatLevel += 0.001;
				destroy();
			}
			
			mySpeed = speed * FP.elapsed;
			
			if (x < Globals.adventurer.x)
			{
				x += mySpeed;
			}
			else
			{
				x -= mySpeed;
			}
			
			if (y < Globals.adventurer.y)
			{
				y += mySpeed;
			}
			else
			{
				y -= mySpeed;
			}
			
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
		
	}

}