package  
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;
		
	public class Adventurer extends Entity
	{
		[Embed(source = "assets/art/adventurer72.png")] private var spr_adventurer:Class;
		
		private var speed:Number = 250;
		
		public function Adventurer():void 
		{
			// constructor to set properties of the object
			
			graphic = new Image(spr_adventurer);
			x = 304;
			y = 224;
			width = 32;
			height = 32;
			type = "adventurer";
		}
		
		override public function update():void
		{
			move();
		}
		
		private function move():void
		{
			// move the player + keycheck loop
			
			if (Input.check(Key.RIGHT))
			{
				x += speed * FP.elapsed;
			}
			else if (Input.check(Key.LEFT))
			{
				x -= speed * FP.elapsed;				
			}
			else if (Input.check(Key.UP))
			{
				y -= speed * FP.elapsed;				
			}
			else if (Input.check(Key.DOWN))
			{
				y += speed * FP.elapsed;
			}
		}
		
	}

}