# Property4\[T1: T1, T2: T2, T3: T3, T4: T4\]
<span class="source-link">[[Source]](src/ponycheck/property.md#L152)</span>
```pony
trait ref Property4[T1: T1, T2: T2, T3: T3, T4: T4] is
  Property1[(T1 , T2 , T3 , T4)] ref
```

#### Implements

* [Property1](ponycheck-Property1.md)\[(T1 , T2 , T3 , T4)\] ref

---

## Public Functions

### gen1
<span class="source-link">[[Source]](src/ponycheck/property.md#L154)</span>


The Generator for the first argument to your `property4` method.


```pony
fun box gen1()
: Generator[T1] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T1\] box

---

### gen2
<span class="source-link">[[Source]](src/ponycheck/property.md#L159)</span>


The Generator for the second argument to your `property4` method.


```pony
fun box gen2()
: Generator[T2] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T2\] box

---

### gen3
<span class="source-link">[[Source]](src/ponycheck/property.md#L164)</span>


The Generator for the third argument to your `property4` method.


```pony
fun box gen3()
: Generator[T3] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T3\] box

---

### gen4
<span class="source-link">[[Source]](src/ponycheck/property.md#L169)</span>


The Generator for the fourth argument to your `property4` method.


```pony
fun box gen4()
: Generator[T4] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[T4\] box

---

### gen
<span class="source-link">[[Source]](src/ponycheck/property.md#L174)</span>


```pony
fun box gen()
: Generator[(T1 , T2 , T3 , T4)] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[(T1 , T2 , T3 , T4)\] box

---

### property
<span class="source-link">[[Source]](src/ponycheck/property.md#L181)</span>


```pony
fun ref property(
  arg1: (T1 , T2 , T3 , 
    T4),
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: (T1 , T2 , T3 , 
    T4)
*   h: [PropertyHelper](ponycheck-PropertyHelper.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### property4
<span class="source-link">[[Source]](src/ponycheck/property.md#L185)</span>


A method verifying that a certain property holds for all given `arg1`, `arg2`, `arg3`, `arg4`
with the help of [PropertyHelper](ponycheck-PropertyHelper.md) `h`.


```pony
fun ref property4(
  arg1: T1,
  arg2: T2,
  arg3: T3,
  arg4: T4,
  h: PropertyHelper val)
: None val ?
```
#### Parameters

*   arg1: T1
*   arg2: T2
*   arg3: T3
*   arg4: T4
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

