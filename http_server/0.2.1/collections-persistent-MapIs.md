# MapIs\[K: [Any](builtin-Any.md) #share, V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/collections-persistent/map.md#L9)</span>

A map that uses identity comparison on the key.


```pony
type MapIs[K: Any #share, V: Any #share] is
  HashMap[K, V, HashIs[K] val] val
```

#### Type Alias For

* [HashMap](collections-persistent-HashMap.md)\[K, V, [HashIs](collections-HashIs.md)\[K\] val\] val

---

