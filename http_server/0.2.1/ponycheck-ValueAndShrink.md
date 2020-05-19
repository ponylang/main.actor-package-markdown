# ValueAndShrink\[T1: T1\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L6)</span>

Possible return type for [`Generator.generate`](ponycheck-Generator.md#generate).
Represents a generated value and an Iterator of shrunken values.


```pony
type ValueAndShrink[T1: T1] is
  (T1^ , Iterator[T1^] ref)
```

#### Type Alias For

* (T1^ , [Iterator](builtin-Iterator.md)\[T1^\] ref)

---

