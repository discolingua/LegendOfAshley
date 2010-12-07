package entities 
{
	import flash.display.Graphics;
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class BadFairySpawn extends Entity
	{
		public var health:int = 5;
		public var fairy:BadFairy;
		
		public function BadFairySpawn() 
		{
			graphic = new Image(Assets.SPR_BADFAIRYSPAWN);
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "spawn";
		}
		
		override public function update():void 
		{
			// x% chance to spawn new bad fairy every frame
			
			if (Math.random() < 0.01 + Globals.emThreatLevel)
			{
				fairy = new BadFairy();
				(FP.world as GameWorld).add(fairy);
				fairy.x = this.x;
				fairy.y = this.y;
			}
			
			// check for hit
			
			if (collide("bullet", this.x, this.y))
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