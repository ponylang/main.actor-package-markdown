# ToHexString
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L121)</span>
```pony
primitive val ToHexString
```

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L121)</span>


```pony
new val create()
: ToHexString val^
```

#### Returns

* [ToHexString](crypto-ToHexString.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L122)</span>


Return the lower-case hexadecimal string representation of the given Array
of U8.


```pony
fun tag apply(
  bs: Array[U8 val] val)
: String val
```
#### Parameters

*   bs: [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L122)</span>


```pony
fun box eq(
  that: ToHexString val)
: Bool val
```
#### Parameters

*   that: [ToHexString](crypto-ToHexString.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L122)</span>


```pony
fun box ne(
  that: ToHexString val)
: Bool val
```
#### Parameters

*   that: [ToHexString](crypto-ToHexString.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

