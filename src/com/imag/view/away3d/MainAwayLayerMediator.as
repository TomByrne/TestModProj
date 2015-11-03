package com.imag.view.away3d
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class MainAwayLayerMediator extends Mediator 
	{
		[Inject] public var view:MainAwayLayer;
		
		public function MainAwayLayerMediator():void 
		{
			super();
		}
		
		override public function initialize():void
		{
			view.initialize();
		}
	}
}