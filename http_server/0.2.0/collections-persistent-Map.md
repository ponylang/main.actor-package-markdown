# Map\[K: ([Hashable](collections-Hashable.md) val & [Equatable](builtin-Equatable.md)\[K\]), V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/collections-persistent/map.md#L3)</span>

A map that uses structural equality on the key.


```pony
type Map[K: (Hashable val & Equatable[K]), V: Any #share] is
  HashMap[K, V, HashEq[K] val] val
```

#### Type Alias For

* [HashMap](collections-persistent-HashMap.md)\[K, V, [HashEq](collections-HashEq.md)\[K\] val\] val

---

