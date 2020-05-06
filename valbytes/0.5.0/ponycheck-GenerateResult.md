# GenerateResult\[T2: T2\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L12)</span>

Return type for [`Generator.generate`](ponycheck-Generator.md#generate).

Either a single value only or a Tuple of a value and an Iterator
of shrunken values based upon this value.


```pony
type GenerateResult[T2: T2] is
  (T2^ | (T2^ , Iterator[T2^] ref))
```

#### Type Alias For

* (T2^ | (T2^ , [Iterator](builtin-Iterator.md)\[T2^\] ref))

---

