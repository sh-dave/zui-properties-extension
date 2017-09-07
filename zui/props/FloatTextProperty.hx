package zui.props;

import zui.Zui;

class FloatTextProperty {
	public var value(get, set): Float;	
	public var handle(default, null) = new Handle();
	
	public function new() {	
	}
	
	inline function get_value()
		return Std.parseFloat(handle.text);
		
	inline function set_value( f ) {
		handle.text = Std.string(f);		
		return f;
	}
}
