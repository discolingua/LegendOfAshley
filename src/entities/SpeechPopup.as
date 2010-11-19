package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class SpeechPopup extends Entity
	{
		
		// This is a class for displaying text pop-ups. With the Visitor1 font at size 24, it looks good
		// with about 20 chars per line
				
		// This Embed statemement should go in Assets
		
		[Embed(source = "../assets/visitor1.ttf", embedAsCFF="false", fontFamily = "visitor1")] private static const myfont:Class;

		private var t:Text;
		private var rect:Image;
		private var display:Graphiclist;
		private var myText:Array = [];
		private var myLine:int = 0;
		
		public function SpeechPopup(myTextString:String):void 
		{
			Text.font = "visitor1";
			Text.size = 18;

			layer = 100;
			
			t = new Text(myTextString,20,20);
			t.color = 0x000000;
			display = new Graphiclist(t);
			
			layer = 80;
			
			// background rectangle behind text ***********************************************
			
			rect = Image.createRect(300, 180, 0xffffff);
			rect.x = 10;
			rect.y = 10;
			
			
			display.add(rect); // add rectangle to graphiclist
			
			graphic = display;   // display graphiclist
		}
		
	}

}