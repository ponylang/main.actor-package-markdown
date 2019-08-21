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

### apply
<span class="source-link">[[Source]](src/crypto/constant_time_compare.md#L2)</span>


Return true if the two ByteSeqs, xs and ys, have equal contents. The time
taken is independent of the contents.


```pony
fun box apply(
  xs: (String val | Array[U8 val] val),
  ys: (String val | Array[U8 val] val))
: Bool val
```
#### Parameters

*   xs: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)
*   ys: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)

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

