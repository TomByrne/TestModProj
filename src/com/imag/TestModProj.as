package com.imag
{
	import com.imag.commands.CommandConfig;
	import com.imag.model.config.ConfigModel;
	import com.imag.model.ModelConfig;
	import com.imag.services.ServiceConfig;
	import com.imag.view.ViewConfig;
	
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.bundles.ImagBundle;
	import robotlegs.bender.bundles.Away3DBundle;
	import robotlegs.bender.bundles.StarlingBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class TestModProj extends Sprite 
	{
		private var _context:IContext;
		
		public function TestModProj():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(event:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_context = new Context()
				.install(MVCSBundle)
				.install(ImagBundle)
				.install(Away3DBundle)
				.install(StarlingBundle)
				.configure(new ConfigModel())
				.configure(CommandConfig, ModelConfig, ServiceConfig, ViewConfig)
				.configure(new ContextView(this));
		}
	}
}