# VecValues\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L271)</span>
```pony
class ref VecValues[A: Any #share]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L274)</span>


```pony
new ref create(
  v: Vec[A] val)
: VecValues[A] ref^
```
#### Parameters

*   v: [Vec](collections-persistent-Vec.md)\[A\] val

#### Returns

* [VecValues](collections-persistent-VecValues.md)\[A\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L276)</span>


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L278)</span>


```pony
fun ref next()
: val->A ?
```

#### Returns

* val->A ?

---

