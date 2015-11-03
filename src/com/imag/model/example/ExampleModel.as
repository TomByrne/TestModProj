package com.imag.model.example
{
	import org.osflash.signals.Signal;
	
	/**
	 * ...
	 * @author Thomas Byrne
	 */
	public class ExampleModel 
	{
		private var _value:int;
		public var change:Signal = new Signal();
		
		public function ExampleModel() 
		{
			
		}
		
		public function get value():int 
		{
			return _value;
		}
		
		public function set value(value:int):void 
		{
			if (_value == value) return;
			_value = value;
			change.dispatch();
		}
	}
}