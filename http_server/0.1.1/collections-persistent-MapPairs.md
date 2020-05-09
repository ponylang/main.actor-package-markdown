# MapPairs\[K: [Any](builtin-Any.md) #share, V: [Any](builtin-Any.md) #share, H: [HashFunction](collections-HashFunction.md)\[K\] val\]
<span class="source-link">[[Source]](src/collections-persistent/map.md#L157)</span>
```pony
class ref MapPairs[K: Any #share, V: Any #share, H: HashFunction[K] val]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/map.md#L160)</span>


```pony
new ref create(
  m: HashMap[K, V, H] val)
: MapPairs[K, V, H] ref^
```
#### Parameters

*   m: [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

#### Returns

* [MapPairs](collections-persistent-MapPairs.md)\[K, V, H\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/collections-persistent/map.md#L163)</span>


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/collections-persistent/map.md#L166)</span>


```pony
fun ref next()
: (K , V) ?
```

#### Returns

* (K , V) ?

---

