# HashFn
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L6)</span>

Produces a fixed-length byte array based on the input sequence.


```pony
interface ref HashFn
```

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L10)</span>


```pony
fun tag apply(
  input: (String val | Array[U8 val] val))
: Array[U8 val] val
```
#### Parameters

*   input: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

