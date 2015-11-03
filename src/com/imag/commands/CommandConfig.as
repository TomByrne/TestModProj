package com.imag.commands
{
	import com.imag.commands.keyboard.KeyboardCommand;
	import com.imag.signals.example.ExampleSignal;
	import robotlegs.bender.extensions.imag.impl.signals.AppSetupCompleteSignal;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class CommandConfig implements IConfig 
	{
		[Inject] public var commandMap:ISignalCommandMap;
		[Inject] public var injector:IInjector;
		
		public function CommandConfig() { }
		
		public function configure():void
		{
			commandMap.map(AppSetupCompleteSignal).toCommand(KeyboardCommand);
			
			// Only if not already mapped to a command
			//injector.map(ExampleSignal).asSingleton();
		}
	}
}