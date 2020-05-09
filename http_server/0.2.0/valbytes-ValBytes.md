# ValBytes
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L20)</span>

Tries to catch both Array[U8] val and ByteArrays in order to define
ByteArrays as possibly recursive tree structure.


```pony
interface val ValBytes is
  ReadSeq[U8 val] box,
  Trimmable[U8 val] val,
  CopyToable[U8 val] ref,
  ReadAsNumerics val
```

#### Implements

* [ReadSeq](builtin-ReadSeq.md)\[[U8](builtin-U8.md) val\] box
* [Trimmable](valbytes-Trimmable.md)\[[U8](builtin-U8.md) val\] val
* [CopyToable](valbytes-CopyToable.md)\[[U8](builtin-U8.md) val\] ref
* [ReadAsNumerics](valbytes-ReadAsNumerics.md) val

---

## Public Functions

### size
<span class="source-link">[[Source]](src/builtin/read_seq.md#L5)</span>


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/builtin/read_seq.md#L10)</span>


```pony
fun box apply(
  i: USize val)
: U8 val ?
```
#### Parameters

*   i: [USize](builtin-USize.md) val

#### Returns

* [U8](builtin-U8.md) val ?

---

### values
<span class="source-link">[[Source]](src/builtin/read_seq.md#L16)</span>


```pony
fun box values()
: Iterator[U8 val] ref^
```

#### Returns

* [Iterator](builtin-Iterator.md)\[[U8](builtin-U8.md) val\] ref^

---

### trim
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L4)</span>


```pony
fun val trim(
  from: USize val,
  to: USize val)
: Array[U8 val] val
```
#### Parameters

*   from: [USize](builtin-USize.md) val
*   to: [USize](builtin-USize.md) val

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### copy_to
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L7)</span>


```pony
fun box copy_to(
  dst: Array[U8 val] ref,
  src_idx: USize val,
  dst_idx: USize val,
  len: USize val)
: None val
```
#### Parameters

*   dst: [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] ref
*   src_idx: [USize](builtin-USize.md) val
*   dst_idx: [USize](builtin-USize.md) val
*   len: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### read_u8\[optional B: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L14)</span>


```pony
fun box read_u8[optional B: U8 val](
  offset: USize val)
: U8 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U8](builtin-U8.md) val ?

---

### read_u16\[optional B: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L15)</span>


```pony
fun box read_u16[optional B: U8 val](
  offset: USize val)
: U16 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U16](builtin-U16.md) val ?

---

### read_u32\[optional B: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L16)</span>


```pony
fun box read_u32[optional B: U8 val](
  offset: USize val)
: U32 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U32](builtin-U32.md) val ?

---

### read_u64\[optional B: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L17)</span>


```pony
fun box read_u64[optional B: U8 val](
  offset: USize val)
: U64 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U64](builtin-U64.md) val ?

---

### read_u128\[optional B: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L18)</span>


```pony
fun box read_u128[optional B: U8 val](
  offset: USize val)
: U128 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U128](builtin-U128.md) val ?

---

