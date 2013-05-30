package  
{
	import org.flixel.*;
	public class PlatformerLevel extends FlxState
	{
		protected var _player:Player;
		protected var _level:FlxTilemap;
		protected var _background:FlxSprite;
		
		
		override public function create():void
		{
			super.create();	
			createBackground();
			createPlayer();
			createLevel();
			createCamera();
		}
		
		private function createBackground():void
		{
			_background = new FlxSprite();
			add(_background);
		}
		private function createPlayer():void
		{
			_player = new Player();
			add(_player);
		}
		
		private function createLevel():void
		{
			_level = new FlxTilemap();
			add(_level);
		}
		private function createCamera():void
		{
			FlxG.worldBounds.x = 0;
			FlxG.worldBounds.y = 0;
			FlxG.worldBounds.width = _level.width;
			FlxG.worldBounds.height = _level.height;
			FlxG.camera.follow(_player, FlxCamera.STYLE_PLATFORMER);
			FlxG.camera.setBounds(0, 0, _level.width, _level.height);
		}
		
		protected function loadLevel(levelMap:Class):void
		{
			_level.loadMap(new levelMap, FlxTilemap.ImgAuto, 0, 0, FlxTilemap.AUTO);
			//don't forget to reset the camera.
			createCamera();
		}
		
		override public function update():void
		{
			super.update();
			FlxG.collide(_player, _level);
			checkPlayerOOB();
		}
		
		private function checkPlayerOOB():void
		{
			if (!_player.onScreen()) {
				onPlayerOOB();
			}
		}
		protected function onPlayerOOB():void{}
	}

}