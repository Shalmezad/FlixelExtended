package 
{
	import org.flixel.*; //Allows you to refer to flixel objects in your code
	[SWF(width="640", height="480", backgroundColor="#FFFFFF")] //Set the size and color of the Flash file
 
	public class Main extends FlxGame
	{
		public function Main()
		{
			super(160,120,PlayState,4); //Create a new FlxGame object at 320x240 with 2x pixels, then load PlayState
		}
	}
}