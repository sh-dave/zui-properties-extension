package zui.props;

import zui.Zui;

class EnumComboProperty<E: EnumValue> {
	var e: Enum<E>;
	public var index(get, set): Int;
	public var value(get, set): E;
	public var handle(default, null) = new Handle();
	public var items(get, never): Array<String>;
	
	public function new( e: Enum<E> )
		this.e = e;
	
	inline function get_index()
		return handle.position;
		
	inline function set_index( i )
		return handle.position = i;
	
	inline function get_value()
		return Type.createEnumIndex(e, index);
		
	inline function set_value( v: E ) : E {
		handle.position = Type.enumIndex(v);
		return v;
	}
	
	inline function get_items()
		return Type.getEnumConstructs(e);
}