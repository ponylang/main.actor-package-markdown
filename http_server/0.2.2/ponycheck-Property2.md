# Property2\[T1: T1, T2: T2\]
<span class="source-link">[[Source]](src/ponycheck/property.md#L92)</span>
```pony
trait ref Property2[T1: T1, T2: T2] is
  Property1[(T1 , T2)] ref
```

#### Implements

* [Property1](ponycheck-Property1.md)\[(T1 , T2)\] ref

---

## Public Functions

### gen1
<span class="source-link">[[Source]](src/ponycheck/property.md#L94)</span>


The Generator for the first argument to your `property2`.


```pony
fun box gen1()
: Generator[T1] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T1\] box

---

### gen2
<span class="source-link">[[Source]](src/ponycheck/property.md#L99)</span>


The Generator for the second argument to your `property2`.


```pony
fun box gen2()
: Generator[T2] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T2\] box

---

### gen
<span class="source-link">[[Source]](src/ponycheck/property.md#L104)</span>


```pony
fun box gen()
: Generator[(T1 , T2)] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[(T1 , T2)\] box

---

### property
<span class="source-link">[[Source]](src/ponycheck/property.md#L109)</span>


```pony
fun ref property(
  arg1: (T1 , T2),
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: (T1 , T2)
*   h: [PropertyHelper](ponycheck-PropertyHelper.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### property2
<span class="source-link">[[Source]](src/ponycheck/property.md#L113)</span>


A method verifying that a certain property holds for all given `arg1` and `arg2`
with the help of [PropertyHelper](ponycheck-PropertyHelper.md) `h`.


```pony
fun ref property2(
  arg1: T1,
  arg2: T2,
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: T1
*   arg2: T2
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

