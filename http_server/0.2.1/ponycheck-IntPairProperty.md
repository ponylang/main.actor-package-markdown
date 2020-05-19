# IntPairProperty
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L100)</span>

A property implementation for conveniently evaluating properties
for pairs of integers of all Pony integer types at once.

The property needs to be formulated inside the method `int_property`:

```pony
class CommutativeMultiplicationProperty is IntPairProperty
  fun name(): String => "commutativity/mul"

  fun int_property[T: (Int & Integer[T] val)](x: T, y: T, h: PropertyHelper)? =>
    h.assert_eq[T](x * y, y * x)
```


```pony
trait ref IntPairProperty is
  Property1[IntPairPropertySample ref] ref
```

#### Implements

* [Property1](ponycheck-Property1.md)\[[IntPairPropertySample](ponycheck-IntPairPropertySample.md) ref\] ref

---

## Public Functions

### gen
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L115)</span>


```pony
fun box gen()
: Generator[IntPairPropertySample ref] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[[IntPairPropertySample](ponycheck-IntPairPropertySample.md) ref\] box

---

### property
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L122)</span>


```pony
fun ref property(
  sample: IntPairPropertySample ref,
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   sample: [IntPairPropertySample](ponycheck-IntPairPropertySample.md) ref
*   h: [PropertyHelper](ponycheck-PropertyHelper.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### int_property\[T: (([I8](builtin-I8.md) val | [I16](builtin-I16.md) val | [I32](builtin-I32.md) val | [I64](builtin-I64.md) val | [I128](builtin-I128.md) val | [ILong](builtin-ILong.md) val | [ISize](builtin-ISize.md) val | [U8](builtin-U8.md) val | [U16](builtin-U16.md) val | [U32](builtin-U32.md) val | [U64](builtin-U64.md) val | [U128](builtin-U128.md) val | [ULong](builtin-ULong.md) val | [USize](builtin-USize.md) val) & [Integer](builtin-Integer.md)\[T\] val)\]
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L145)</span>


```pony
fun ref int_property[T: ((I8 val | I16 val | I32 val | 
    I64 val | I128 val | ILong val | 
    ISize val | U8 val | U16 val | 
    U32 val | U64 val | U128 val | 
    ULong val | USize val) & Integer[T] val)](
  x: T,
  y: T,
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   x: T
*   y: T
*   h: [PropertyHelper](ponycheck-PropertyHelper.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### name
<span class="source-link">[[Source]](src/ponycheck/property.md#L70)</span>


```pony
fun box name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### params
<span class="source-link">[[Source]](src/ponycheck/property.md#L75)</span>


```pony
fun box params()
: PropertyParams val
```

#### Returns

* [PropertyParams](ponycheck-PropertyParams.md) val

---

