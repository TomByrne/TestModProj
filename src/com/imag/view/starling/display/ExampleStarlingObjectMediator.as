package com.imag.view.starling.display
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class ExampleStarlingObjectMediator extends Mediator 
	{
		[Inject] public var view:ExampleStarlingObject;
		
		public function ExampleStarlingObjectMediator():void 
		{
			super();
		}
		
		override public function initialize():void
		{
			view.initialize();
		}
	}
}