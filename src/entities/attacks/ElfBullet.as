package entities.attacks

{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	
	public class ElfBullet extends Entity
	{
		private var speed:Number = 1000;
		
		
		public function ElfBullet(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			graphic = Image.createRect(16, 8, 0x5FA92A);  // rectangle for bullet
			type = "bullet";
		}
		
		override public function update():void
		{
			x += speed * FP.elapsed + 2;   // +2 to track w/camera movement
			if (x > FP.screen.width + FP.camera.length)
			{
				destroy();
			}
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
	}

}