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
			width = 72;
			height = 72;
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
			var mySpeed:Number = speed * FP.elapsed;
			
			// move the player + keycheck loop
			
			if (Input.check(Key.RIGHT))
			{
				newX = x + mySpeed;
				if (!colliding(new Point(newX, y)))
				{
					x += mySpeed;
				}
			}
			else if (Input.check(Key.LEFT) )
			{
				newX = x - mySpeed;
				if (!colliding(new Point(newX, y)))
				{
					x -= mySpeed;
				}
			}
			else if (Input.check(Key.UP))
			{
				newY = y - mySpeed;
				if (!colliding(new Point(x, newY)))
				{
					y -= mySpeed;
				}		
			}
			else if (Input.check(Key.DOWN))
			{
				newY = y + mySpeed;
				if (!colliding(new Point(x, newY)))
				{
					y += mySpeed;
				}
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