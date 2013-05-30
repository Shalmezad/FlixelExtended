package  
{
	import org.flixel.*;
	public class Player extends FlxSprite
	{
		public function Player()
		{
			makeGraphic(10, 12, 0xffaa1111);
			
			maxVelocity.x = 80;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
			x = 50;
			y = 50;
		}
		
		public function setGraphic(graphic:Class):void
		{
			loadGraphic(graphic);
		}
		
		override public function update():void
		{
			super.update();
			
			acceleration.x = 0;
			if (FlxG.keys.A) {
				acceleration.x = -maxVelocity.x*4;
			}
			else if (FlxG.keys.D) {
				acceleration.x = maxVelocity.x*4;
			}
			if (FlxG.keys.W && isTouching(FlxObject.FLOOR)){
				velocity.y = -maxVelocity.y/2;
			}
		}
	}

}