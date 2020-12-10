# MapKeys\[K: [Any](builtin-Any.md) #share, V: [Any](builtin-Any.md) #share, H: [HashFunction](collections-HashFunction.md)\[K\] val\]
<span class="source-link">[[Source]](src/collections-persistent/map.md#L136)</span>
```pony
class ref MapKeys[K: Any #share, V: Any #share, H: HashFunction[K] val]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/map.md#L139)</span>


```pony
new ref create(
  m: HashMap[K, V, H] val)
: MapKeys[K, V, H] ref^
```
#### Parameters

*   m: [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

#### Returns

* [MapKeys](collections-persistent-MapKeys.md)\[K, V, H\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/collections-persistent/map.md#L141)</span>


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/collections-persistent/map.md#L143)</span>


```pony
fun ref next()
: K ?
```

#### Returns

* K ?

---

