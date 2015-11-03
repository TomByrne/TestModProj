package com.imag.view
{
	import robotlegs.bender.framework.api.IConfig;
	
	import com.imagination.core.view.BaseViewConfig;
	
	import com.imag.view.away3d.MainAwayLayer;
	import com.imag.view.away3d.MainAwayLayerMediator;
	import com.imag.view.starling.MainStarlingLayer;
	import com.imag.view.starling.MainStarlingLayerMediator;
	
	import com.imag.view.away3d.display.ExampleAwayObject;
	import com.imag.view.away3d.display.ExampleAwayObjectMediator;
	import com.imag.view.starling.display.ExampleStarlingObject;
	import com.imag.view.starling.display.ExampleStarlingObjectMediator;
	
	import flash.display3D.Context3DProfile;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class ViewConfig extends BaseViewConfig implements IConfig 
	{
		public function ViewConfig():void 
		{
			super("baselineExtended", 0);
		}
		
		override protected function mapMediators():void 
		{
			mediatorMap.map(MainAwayLayer).toMediator(MainAwayLayerMediator);
			mediatorMap.map(ExampleAwayObject).toMediator(ExampleAwayObjectMediator);
			
			mediatorMap.map(MainStarlingLayer).toMediator(MainStarlingLayerMediator);
			mediatorMap.map(ExampleStarlingObject).toMediator(ExampleStarlingObjectMediator);
		}
		
		override protected function initView():void 
		{
			stack.addLayer(MainAwayLayer);
			stack.addLayer(MainStarlingLayer);
		}
	}
}