# SHA384
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L93)</span>
```pony
primitive val SHA384 is
  HashFn ref
```

#### Implements

* [HashFn](crypto-HashFn.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L93)</span>


```pony
new val create()
: SHA384 val^
```

#### Returns

* [SHA384](crypto-SHA384.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L94)</span>


Compute the SHA384 message digest conforming to US Federal Information
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
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L94)</span>


```pony
fun box eq(
  that: SHA384 val)
: Bool val
```
#### Parameters

*   that: [SHA384](crypto-SHA384.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L94)</span>


```pony
fun box ne(
  that: SHA384 val)
: Bool val
```
#### Parameters

*   that: [SHA384](crypto-SHA384.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

