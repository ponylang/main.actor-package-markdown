# CopyToable\[T: T\]
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L6)</span>
```pony
interface ref CopyToable[T: T]
```

## Public Functions

### copy_to
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L7)</span>


```pony
fun box copy_to(
  dst: Array[this->T!] ref,
  src_idx: USize val,
  dst_idx: USize val,
  len: USize val)
: None val
```
#### Parameters

*   dst: [Array](builtin-Array.md)\[this->T!\] ref
*   src_idx: [USize](builtin-USize.md) val
*   dst_idx: [USize](builtin-USize.md) val
*   len: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

