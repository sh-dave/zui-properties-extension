package zui.props;

import zui.Zui;

class IntTextProperty {
	public var value(get, set): Int;
	public var handle(default, null) = new Handle();
	
	public function new() {	
	}
	
	inline function get_value()
		return Std.parseInt(handle.text);
		
	inline function set_value( i ) {
		handle.text = Std.string(i);		
		return i;
	}
}
