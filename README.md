# usage

## common
```haxe
var z = new Zui(...);
```

## IntTextProperty
```haxe
var iprop = new IntTextProperty();
iprop.value = 42;
z.textInput(iprop.handle, 'ENTER VALUE');
trace('Some int value: ${iprop.value}');
```

## FloatTextProperty
```haxe
var fprop = new FloatTextProperty();
fprop.value = 47.11;
z.textInput(fprop.handle, 'ENTER VALUE');
trace('Some float value: ${fprop.value}');
```

## EnumComboProperty
```haxe
enum Foo {
	Bar;
	EvenMoreBar;
}

var ecprop1 = new EnumComboProperty(Foo);
ecprop1.index = 0;
z.combo(ecprop1.handle, ecprop1.items, 'SELECT ONE');
trace('index: ${ecprop1.index}');

var ecprop2 = new EnumComboProperty(Foo);
ecprop2.value = EvenMoreBar;
z.combo(ecprop2.handle, ecprop2.items, 'SELECT ONE');
trace('value: ${ecprop2.value}');
```
