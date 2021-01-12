# MD4
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L12)</span>
```pony
primitive val MD4 is
  HashFn ref
```

#### Implements

* [HashFn](crypto-HashFn.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L12)</span>


```pony
new val create()
: MD4 val^
```

#### Returns

* [MD4](crypto-MD4.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L13)</span>


Compute the MD4 message digest conforming to RFC 1320


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
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L13)</span>


```pony
fun box eq(
  that: MD4 val)
: Bool val
```
#### Parameters

*   that: [MD4](crypto-MD4.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L13)</span>


```pony
fun box ne(
  that: MD4 val)
: Bool val
```
#### Parameters

*   that: [MD4](crypto-MD4.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

