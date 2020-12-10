# MapValues\[K: [Any](builtin-Any.md) #share, V: [Any](builtin-Any.md) #share, H: [HashFunction](collections-HashFunction.md)\[K\] val\]
<span class="source-link">[[Source]](src/collections-persistent/map.md#L145)</span>
```pony
class ref MapValues[K: Any #share, V: Any #share, H: HashFunction[K] val]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/map.md#L148)</span>


```pony
new ref create(
  m: HashMap[K, V, H] val)
: MapValues[K, V, H] ref^
```
#### Parameters

*   m: [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

#### Returns

* [MapValues](collections-persistent-MapValues.md)\[K, V, H\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/collections-persistent/map.md#L150)</span>


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/collections-persistent/map.md#L152)</span>


```pony
fun ref next()
: val->V ?
```

#### Returns

* val->V ?

---

