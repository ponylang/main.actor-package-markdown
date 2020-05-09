# VecPairs\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L280)</span>
```pony
class ref VecPairs[A: Any #share]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L285)</span>


```pony
new ref create(
  v: Vec[A] val)
: VecPairs[A] ref^
```
#### Parameters

*   v: [Vec](collections-persistent-Vec.md)\[A\] val

#### Returns

* [VecPairs](collections-persistent-VecPairs.md)\[A\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L288)</span>


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L291)</span>


```pony
fun ref next()
: (USize val , A) ?
```

#### Returns

* ([USize](builtin-USize.md) val , A) ?

---

