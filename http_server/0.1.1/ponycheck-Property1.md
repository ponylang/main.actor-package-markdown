# Property1\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/property.md#L45)</span>

A property that consumes 1 argument of type `T`.

A property is defined by a [Generator](ponycheck-Generator.md), returned by the [`gen()`](ponycheck-Property1.md#gen) method
and a [`property`](ponycheck-Property1#property) method that consumes the generators output and
verifies a custom property with the help of a [PropertyHelper](ponycheck-PropertyHelper.md).

A property is verified if no failed assertion on [PropertyHelper](ponycheck-PropertyHelper.md) has been
reported for all the samples it consumed.

The property execution can be customized by returning a custom
[PropertyParams](ponycheck-PropertyParams.md) from the [`params()`]*ponycheck-Property1.md#params) method.

The [`gen()`](ponycheck-Property1.md#gen) method is called exactly once to instantiate the generator.
The generator produces [PropertyParams.num_samples](ponycheck-PropertyParams.md#num_samples) samples and each is
passed to the [property](ponycheck-Property1.md#property) method for verification.

If the property did not verify, the given sample is shrunken, if the
generator supports shrinking.
The smallest shrunken sample will then be reported to the user.

A [Property1](ponycheck-Property1.md) can be run with [Ponytest](ponytest--index.md).
To that end it needs to be wrapped into a [Property1UnitTest](ponycheck-Property1UnitTest.md).


```pony
trait ref Property1[T: T]
```

## Public Functions

### name
<span class="source-link">[[Source]](src/ponycheck/property.md#L70)</span>


The name of the property used for reporting during execution.


```pony
fun box name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### params
<span class="source-link">[[Source]](src/ponycheck/property.md#L75)</span>


Returns parameters to customize execution of this Property.


```pony
fun box params()
: PropertyParams val
```

#### Returns

* [PropertyParams](ponycheck-PropertyParams.md) val

---

### gen
<span class="source-link">[[Source]](src/ponycheck/property.md#L81)</span>


The [Generator](ponycheck-Generator.md) used to produce samples to verify.


```pony
fun box gen()
: Generator[T] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T\] box

---

### property
<span class="source-link">[[Source]](src/ponycheck/property.md#L86)</span>


A method verifying that a certain property holds for all given `arg1`
with the help of [PropertyHelper](ponycheck-PropertyHelper.md) `h`.


```pony
fun ref property(
  arg1: T,
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: T
*   h: [PropertyHelper](ponycheck-PropertyHelper.md) val

#### Returns

* [None](builtin-None.md) val ?

---

