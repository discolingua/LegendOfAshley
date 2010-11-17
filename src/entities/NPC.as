package entities 
{
	import net.flashpunk.*
	import net.flashpunk.graphics.*;
	
	public class NPC extends Entity
	{
		public var spokenText:String;
		
		public function NPC() 
		{
			graphic = new Image(Assets.SPR_BYSTANDER);
			width = 8;
			height = 16;
			type = "npc";
		}
		
	}

}