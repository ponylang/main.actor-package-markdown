# SHA256
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L79)</span>
```pony
primitive val SHA256 is
  HashFn ref
```

#### Implements

* [HashFn](crypto-HashFn.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L79)</span>


```pony
new val create()
: SHA256 val^
```

#### Returns

* [SHA256](crypto-SHA256.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L80)</span>


Compute the SHA256 message digest conforming to US Federal Information
Processing Standard FIPS PUB 180-4


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

### eq
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L80)</span>


```pony
fun box eq(
  that: SHA256 val)
: Bool val
```
#### Parameters

*   that: [SHA256](crypto-SHA256.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L80)</span>


```pony
fun box ne(
  that: SHA256 val)
: Bool val
```
#### Parameters

*   that: [SHA256](crypto-SHA256.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

