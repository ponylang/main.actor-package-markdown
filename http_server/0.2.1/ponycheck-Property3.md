# Property3\[T1: T1, T2: T2, T3: T3\]
<span class="source-link">[[Source]](src/ponycheck/property.md#L119)</span>
```pony
trait ref Property3[T1: T1, T2: T2, T3: T3] is
  Property1[(T1 , T2 , T3)] ref
```

#### Implements

* [Property1](ponycheck-Property1.md)\[(T1 , T2 , T3)\] ref

---

## Public Functions

### gen1
<span class="source-link">[[Source]](src/ponycheck/property.md#L121)</span>


The Generator for the first argument to your `property3` method.


```pony
fun box gen1()
: Generator[T1] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T1\] box

---

### gen2
<span class="source-link">[[Source]](src/ponycheck/property.md#L126)</span>


The Generator for the second argument to your `property3` method.


```pony
fun box gen2()
: Generator[T2] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T2\] box

---

### gen3
<span class="source-link">[[Source]](src/ponycheck/property.md#L131)</span>


The Generator for the third argument to your `property3` method.


```pony
fun box gen3()
: Generator[T3] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T3\] box

---

### gen
<span class="source-link">[[Source]](src/ponycheck/property.md#L136)</span>


```pony
fun box gen()
: Generator[(T1 , T2 , T3)] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[(T1 , T2 , T3)\] box

---

### property
<span class="source-link">[[Source]](src/ponycheck/property.md#L142)</span>


```pony
fun ref property(
  arg1: (T1 , T2 , T3),
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: (T1 , T2 , T3)
*   h: [PropertyHelper](ponycheck-PropertyHelper.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### property3
<span class="source-link">[[Source]](src/ponycheck/property.md#L146)</span>


A method verifying that a certain property holds for all given `arg1`, `arg2` and `arg3`
with the help of [PropertyHelper](ponycheck-PropertyHelper.md) `h`.


```pony
fun ref property3(
  arg1: T1,
  arg2: T2,
  arg3: T3,
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: T1
*   arg2: T2
*   arg3: T3
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

