package util 
{
	import flash.media.Sound;
	import flash.events.SampleDataEvent;
	import net.flashpunk.*;
	
	public class SoundwaveTools 
	{
		
		public function SoundwaveTools extends Entity
		{
			var mySound:Sound = new Sound(); 
			mySound.addEventListener(SampleDataEvent.SAMPLE_DATA, sineWaveGenerator); 
			mySound.play(); 
		}
		
		public function sineWaveGenerator(event:SampleDataEvent):void 
		{		 
			for (var i:int = 0; i < 8192; i++) 
			{ 
				var ampMultiplier:Number = .15;
				
				var n:Number = Math.sin((i + event.position) / Math.PI / 4); 
				event.data.writeFloat(n * ampMultiplier); 
				event.data.writeFloat(n * ampMultiplier); 
			} 
		}		
	}

}