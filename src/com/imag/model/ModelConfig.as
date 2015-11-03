package com.imag.model
{
	import com.imag.model.config.ConfigModel;
	import com.imag.model.example.ExampleModel;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class ModelConfig implements IConfig 
	{
		[Inject] public var injector:IInjector;
		[Inject] public var configModel:ConfigModel;
		
		public function ModelConfig() { }
		
		public function configure():void
		{
			injector.map(ExampleModel).asSingleton();
		}
	}
}