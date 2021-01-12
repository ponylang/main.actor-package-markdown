# MD5
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L25)</span>
```pony
primitive val MD5 is
  HashFn ref
```

#### Implements

* [HashFn](crypto-HashFn.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L25)</span>


```pony
new val create()
: MD5 val^
```

#### Returns

* [MD5](crypto-MD5.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L26)</span>


Compute the MD5 message digest conforming to RFC 1321


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
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L26)</span>


```pony
fun box eq(
  that: MD5 val)
: Bool val
```
#### Parameters

*   that: [MD5](crypto-MD5.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L26)</span>


```pony
fun box ne(
  that: MD5 val)
: Bool val
```
#### Parameters

*   that: [MD5](crypto-MD5.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

