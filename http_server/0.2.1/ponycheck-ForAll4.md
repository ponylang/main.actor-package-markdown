# ForAll4\[T1: T1, T2: T2, T3: T3, T4: T4\]
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L78)</span>
```pony
class ref ForAll4[T1: T1, T2: T2, T3: T3, T4: T4]
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L85)</span>


```pony
new ref create(
  gen1': Generator[T1] val,
  gen2': Generator[T2] val,
  gen3': Generator[T3] val,
  gen4': Generator[T4] val,
  h: TestHelper val)
: ForAll4[T1, T2, T3, T4] ref^
```
#### Parameters

*   gen1': [Generator](ponycheck-Generator.md)\[T1\] val
*   gen2': [Generator](ponycheck-Generator.md)\[T2\] val
*   gen3': [Generator](ponycheck-Generator.md)\[T3\] val
*   gen4': [Generator](ponycheck-Generator.md)\[T4\] val
*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll4](ponycheck-ForAll4.md)\[T1, T2, T3, T4\] ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L98)</span>


```pony
fun ref apply(
  prop: {(T1, T2, T3, T4, PropertyHelper) ?}[T1, T2, T3, T4] val)
: None val ?
```
#### Parameters

*   prop: {(T1, T2, T3, T4, PropertyHelper) ?}[T1, T2, T3, T4] val

#### Returns

* [None](builtin-None.md) val ?

---

