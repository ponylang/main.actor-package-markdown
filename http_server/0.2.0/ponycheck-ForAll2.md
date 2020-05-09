# ForAll2\[T1: T1, T2: T2\]
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L24)</span>
```pony
class ref ForAll2[T1: T1, T2: T2]
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L29)</span>


```pony
new ref create(
  gen1': Generator[T1] val,
  gen2': Generator[T2] val,
  h: TestHelper val)
: ForAll2[T1, T2] ref^
```
#### Parameters

*   gen1': [Generator](ponycheck-Generator.md)\[T1\] val
*   gen2': [Generator](ponycheck-Generator.md)\[T2\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll2](ponycheck-ForAll2.md)\[T1, T2\] ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L38)</span>


```pony
fun ref apply(
  prop: {(T1, T2, PropertyHelper) ?}[T1, T2] val)
: None val ?
```
#### Parameters

*   prop: {(T1, T2, PropertyHelper) ?}[T1, T2] val

#### Returns

* [None](builtin-None.md) val ?

---

