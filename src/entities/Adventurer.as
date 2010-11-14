package entities
{
	import flash.geom.Point;
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;
		
	public class Adventurer extends Entity
	{
		private var speed:Number = 150;
		private var facing:String = "up";
		
		public function Adventurer():void 
		{
			// constructor to set properties of the object
			
			graphic = new Image(Assets.SPR_ADVENTURER);
			x = 40;
			y = 40;
			width = Constants.TILE_SIZE * 0.5;
			height = Constants.TILE_SIZE;
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
				facing = "right";
				if (!colliding(new Point(newX, y)))
				{
					x += mySpeed;
				}
			}
			else if (Input.check(Key.LEFT) )
			{
				newX = x - mySpeed;
				facing = "left";
				if (!colliding(new Point(newX, y)))
				{
					x -= mySpeed;
				}
			}
			else if (Input.check(Key.UP))
			{
				newY = y - mySpeed;
				facing = "up";
				if (!colliding(new Point(x, newY)))
				{
					y -= mySpeed;
				}		
			}
			else if (Input.check(Key.DOWN))
			{
				newY = y + mySpeed;
				facing = "down";
				if (!colliding(new Point(x, newY)))
				{
					y += mySpeed;
				}
			}
		}
		
		private function colliding(position:Point):Boolean 
		{
			var levelList:Array = [];
			
			if (collide("exit", position.x, position.y))
			{
				trace("***");
				
				world.getClass(Level, levelList);
				for each(var l:Level in levelList)
				{
					trace("^^^");
					
				}
			}
			
			if (collide("terraingrid", position.x, position.y))
			{
				// give wall collisions a bit of bounce
				
				switch (facing)
				{
					case "up":
					y += Math.floor(y / 16);
					break;
					case "down":
					y -= Math.ceil(y / 16);	
					break;
					case "left":
					x += Math.floor(x / 16);
					break;
					case "right":
					x -= Math.ceil(x / 16);
					break;
				}
				
				return true;
			}
			
			// add collisions with enemies/objects/doors/etc.
			
			else return false;
		}
	}

}