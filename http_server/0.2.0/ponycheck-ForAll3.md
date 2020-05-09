# ForAll3\[T1: T1, T2: T2, T3: T3\]
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L49)</span>
```pony
class ref ForAll3[T1: T1, T2: T2, T3: T3]
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L55)</span>


```pony
new ref create(
  gen1': Generator[T1] val,
  gen2': Generator[T2] val,
  gen3': Generator[T3] val,
  h: TestHelper val)
: ForAll3[T1, T2, T3] ref^
```
#### Parameters

*   gen1': [Generator](ponycheck-Generator.md)\[T1\] val
*   gen2': [Generator](ponycheck-Generator.md)\[T2\] val
*   gen3': [Generator](ponycheck-Generator.md)\[T3\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll3](ponycheck-ForAll3.md)\[T1, T2, T3\] ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L66)</span>


```pony
fun ref apply(
  prop: {(T1, T2, T3, PropertyHelper) ?}[T1, T2, T3] val)
: None val ?
```
#### Parameters

*   prop: {(T1, T2, T3, PropertyHelper) ?}[T1, T2, T3] val

#### Returns

* [None](builtin-None.md) val ?

---

