# Set\[A: ([Hashable](collections-Hashable.md) val & [Equatable](builtin-Equatable.md)\[A\])\]
<span class="source-link">[[Source]](src/collections-persistent/set.md#L3)</span>
```pony
type Set[A: (Hashable val & Equatable[A])] is
  HashSet[A, HashEq[A] val] val
```

#### Type Alias For

* [HashSet](collections-persistent-HashSet.md)\[A, [HashEq](collections-HashEq.md)\[A\] val\] val

---

