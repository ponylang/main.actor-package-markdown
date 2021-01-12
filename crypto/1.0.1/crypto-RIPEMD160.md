# RIPEMD160
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L38)</span>
```pony
primitive val RIPEMD160 is
  HashFn ref
```

#### Implements

* [HashFn](crypto-HashFn.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L38)</span>


```pony
new val create()
: RIPEMD160 val^
```

#### Returns

* [RIPEMD160](crypto-RIPEMD160.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L39)</span>


Compute the RIPEMD160 message digest conforming to ISO/IEC 10118-3


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
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L39)</span>


```pony
fun box eq(
  that: RIPEMD160 val)
: Bool val
```
#### Parameters

*   that: [RIPEMD160](crypto-RIPEMD160.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/hash_fn.md#L39)</span>


```pony
fun box ne(
  that: RIPEMD160 val)
: Bool val
```
#### Parameters

*   that: [RIPEMD160](crypto-RIPEMD160.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

