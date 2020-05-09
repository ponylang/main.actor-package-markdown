# EmptyValBytes
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L26)</span>
```pony
primitive val EmptyValBytes is
  ValBytes val
```

#### Implements

* [ValBytes](valbytes-ValBytes.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L26)</span>


```pony
new val create()
: EmptyValBytes val^
```

#### Returns

* [EmptyValBytes](valbytes-EmptyValBytes.md) val^

---

## Public Functions

### trim
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L27)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L30)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L36)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L37)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L38)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L39)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L40)</span>


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

### size
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L42)</span>


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L43)</span>


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
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L45)</span>


```pony
fun box values()
: Iterator[U8 val] ref^
```

#### Returns

* [Iterator](builtin-Iterator.md)\[[U8](builtin-U8.md) val\] ref^

---

### eq
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L27)</span>


```pony
fun box eq(
  that: EmptyValBytes val)
: Bool val
```
#### Parameters

*   that: [EmptyValBytes](valbytes-EmptyValBytes.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/valbytes/valbytes.md#L27)</span>


```pony
fun box ne(
  that: EmptyValBytes val)
: Bool val
```
#### Parameters

*   that: [EmptyValBytes](valbytes-EmptyValBytes.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

