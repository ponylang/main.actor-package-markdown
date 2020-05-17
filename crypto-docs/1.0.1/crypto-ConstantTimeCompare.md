# ConstantTimeCompare
<span class="source-link">[[Source]](src/crypto/constant_time_compare.md#L1)</span>
```pony
primitive val ConstantTimeCompare
```

## Constructors

### create
<span class="source-link">[[Source]](src/crypto/constant_time_compare.md#L1)</span>


```pony
new val create()
: ConstantTimeCompare val^
```

#### Returns

* [ConstantTimeCompare](crypto-ConstantTimeCompare.md) val^

---

## Public Functions

### apply\[optional S: ([String](builtin-String.md) box | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)\]
<span class="source-link">[[Source]](src/crypto/constant_time_compare.md#L2)</span>


Return true if the two ByteSeqs, xs and ys, have equal contents. The time
taken is independent of the contents.


```pony
fun box apply[optional S: (String box | Array[U8 val] box)](
  xs: S,
  ys: S)
: Bool val
```
#### Parameters

*   xs: S
*   ys: S

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/crypto/constant_time_compare.md#L2)</span>


```pony
fun box eq(
  that: ConstantTimeCompare val)
: Bool val
```
#### Parameters

*   that: [ConstantTimeCompare](crypto-ConstantTimeCompare.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/crypto/constant_time_compare.md#L2)</span>


```pony
fun box ne(
  that: ConstantTimeCompare val)
: Bool val
```
#### Parameters

*   that: [ConstantTimeCompare](crypto-ConstantTimeCompare.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

