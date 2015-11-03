package com.imag.commands.keyboard
{
	import com.imag.definitions.scene.SceneID;
	import robotlegs.bender.bundles.mvcs.Command;
	import robotlegs.bender.extensions.imag.api.services.keyboard.IKeyboardMap;
	import robotlegs.bender.extensions.imag.impl.model.scene.SceneModel;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class KeyboardCommand extends Command 
	{
		[Inject] public var sceneModel:SceneModel;
		[Inject] public var keyboardMap:IKeyboardMap;
		
		public function KeyboardCommand() { }
		
		override public function execute():void
		{
			keyboardMap.map(SetScene, "1", {params:[SceneID.XXX]});
		}
		
		private function SetScene(uri:String):void 
		{
			sceneModel.uri = uri;
		}
	}
}