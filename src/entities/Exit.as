package entities 
{

	public class Exit 
	{
		public var destRoom:String;
		
		public function Exit() 
		{
			graphic = new(Image(Assets.SPR_EXIT));
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "exit";
		}
		
	}

}