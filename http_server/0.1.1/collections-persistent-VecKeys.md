# VecKeys\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L262)</span>
```pony
class ref VecKeys[A: Any #share]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L265)</span>


```pony
new ref create(
  v: Vec[A] val)
: VecKeys[A] ref^
```
#### Parameters

*   v: [Vec](collections-persistent-Vec.md)\[A\] val

#### Returns

* [VecKeys](collections-persistent-VecKeys.md)\[A\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L267)</span>


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L269)</span>


```pony
fun ref next()
: USize val ?
```

#### Returns

* [USize](builtin-USize.md) val ?

---

