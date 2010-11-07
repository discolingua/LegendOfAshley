package entities
{
	import flash.geom.Point;
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;
		
	public class Adventurer extends Entity
	{
		[Embed(source = "../assets/art/adventurer72.png")] private var spr_adventurer:Class;
		
		private var speed:Number = 200;
		
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
			var newX:Number;
			var newY:Number;
			
			// move the player + keycheck loop
			
			if (Input.check(Key.RIGHT))
			{
				x += speed * FP.elapsed;
			}
			else if (Input.check(Key.LEFT) )
			{
				newX = x - speed;
				if (!colliding(new Point(newX, y)))
				{
					x -= speed * FP.elapsed;
				}
			}
			else if (Input.check(Key.UP))
			{
				newY = y - speed;
				if (!colliding(new Point(x, newY)))
				{
					y -= speed * FP.elapsed;
				}		
			}
			else if (Input.check(Key.DOWN))
			{
				y += speed * FP.elapsed;
			}
		}
		
		private function colliding(position:Point):Boolean 
		{
	if (collide("terraingrid", position.x, position.y))
			{
				trace("ffffffffffff");
				return true;
			}
			else return false;
		}
	}

}