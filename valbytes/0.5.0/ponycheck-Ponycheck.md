# Ponycheck
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L103)</span>
```pony
primitive val Ponycheck
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L103)</span>


```pony
new val create()
: Ponycheck val^
```

#### Returns

* [Ponycheck](ponycheck-Ponycheck.md) val^

---

## Public Functions

### for_all\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L104)</span>


convenience method for running 1 to many properties as part of
one ponytest UnitTest.

Example:

```pony
  class MyTestWithSomeProperties is UnitTest
    fun name(): String => "mytest/withMultipleProperties"

    fun apply(h: TestHelper) =>
      Ponycheck.for_all[U8](recover Generators.unit[U8](0) end, h)(
        {(u, h) =>
          h.assert_eq(u, 0)
          consume u
        })
```


```pony
fun box for_all[T: T](
  gen: Generator[T] val,
  h: TestHelper val)
: ForAll[T] ref
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll](ponycheck-ForAll.md)\[T\] ref

---

### for_all2\[T1: T1, T2: T2\]
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L125)</span>


```pony
fun box for_all2[T1: T1, T2: T2](
  gen1: Generator[T1] val,
  gen2: Generator[T2] val,
  h: TestHelper val)
: ForAll2[T1, T2] ref
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] val
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll2](ponycheck-ForAll2.md)\[T1, T2\] ref

---

### for_all3\[T1: T1, T2: T2, T3: T3\]
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L133)</span>


```pony
fun box for_all3[T1: T1, T2: T2, T3: T3](
  gen1: Generator[T1] val,
  gen2: Generator[T2] val,
  gen3: Generator[T3] val,
  h: TestHelper val)
: ForAll3[T1, T2, T3] ref
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] val
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] val
*   gen3: [Generator](ponycheck-Generator.md)\[T3\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll3](ponycheck-ForAll3.md)\[T1, T2, T3\] ref

---

### for_all4\[T1: T1, T2: T2, T3: T3, T4: T4\]
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L142)</span>


```pony
fun box for_all4[T1: T1, T2: T2, T3: T3, T4: T4](
  gen1: Generator[T1] val,
  gen2: Generator[T2] val,
  gen3: Generator[T3] val,
  gen4: Generator[T4] val,
  h: TestHelper val)
: ForAll4[T1, T2, T3, T4] ref
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] val
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] val
*   gen3: [Generator](ponycheck-Generator.md)\[T3\] val
*   gen4: [Generator](ponycheck-Generator.md)\[T4\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll4](ponycheck-ForAll4.md)\[T1, T2, T3, T4\] ref

---

### eq
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L104)</span>


```pony
fun box eq(
  that: Ponycheck val)
: Bool val
```
#### Parameters

*   that: [Ponycheck](ponycheck-Ponycheck.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/ponycheck/ponycheck.md#L104)</span>


```pony
fun box ne(
  that: Ponycheck val)
: Bool val
```
#### Parameters

*   that: [Ponycheck](ponycheck-Ponycheck.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

