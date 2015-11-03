package com.imag.services
{
	import com.imag.services.example.ExampleService;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class ServiceConfig implements IConfig 
	{
		[Inject] public var injector:IInjector;
		
		public function ServiceConfig() { }
		
		public function configure():void
		{
			injector.map(ExampleService).asSingleton();
		}
	}
}