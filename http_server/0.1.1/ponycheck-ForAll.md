# ForAll\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L3)</span>
```pony
class ref ForAll[T: T]
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L7)</span>


```pony
new ref create(
  gen': Generator[T] val,
  testHelper: TestHelper val)
: ForAll[T] ref^
```
#### Parameters

*   gen': [Generator](ponycheck-Generator.md)\[T\] val
*   testHelper: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [ForAll](ponycheck-ForAll.md)\[T\] ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/ponycheck/for_all.md#L11)</span>


execute

```pony
fun ref apply(
  prop: {(T, PropertyHelper) ?}[T] val)
: None val ?
```
#### Parameters

*   prop: {(T, PropertyHelper) ?}[T] val

#### Returns

* [None](builtin-None.md) val ?

---

