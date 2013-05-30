package
{
	import org.flixel.*;
 
	public class PlayState extends PlatformerLevel
	{
		[Embed(source = "../assets/player.png")] 					
		private	var G_PLAYER:Class;
		
		[Embed(source = "../assets/background.png")] 					
		private	var G_BACKGROUND:Class;
		
		[Embed(source = "../assets/sampleLevel.csv", mimeType = "application/octet-stream")] 
		private var M_MAP:Class;		
		
		override public function create():void
		{
			super.create();
			FlxG.bgColor = 0xffaaaaaa;
			_player.setGraphic(G_PLAYER);
			_background.loadGraphic(G_BACKGROUND);
			loadLevel(M_MAP);
		}
		
		override protected function onPlayerOOB():void
		{
			FlxG.resetState();
		}
	}
}