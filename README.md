# usage

## common
```haxe
var z: Zui = ... usual zui initialization ...
```

## IntTextProperty
```haxe
var siv = new IntTextProperty();
sip.value = ... some int value ...;
z.textInput(sip.handle, 'SOME INT');
trace('Some int value: ${siv.value}');
```

## FloatTextProperty
```haxe
var sfv = new FloatTextProperty();
sfv.value = ... some float value ...;
z.textInput(sfv.handle, 'SOME FLOAT');
trace('Some float value: ${sfv.value}');
```

## EnumComboProperty
```haxe
enum Foo {
	Bar;
	EvenMoreBar;
}

var ecv = new EnumComboProperty(Foo);
ecv.index = ... some int value ...;
z.combo(ecv.handle, ecv.items, 'SELECT ONE');
trace('index: ${ecv.index}');
```
