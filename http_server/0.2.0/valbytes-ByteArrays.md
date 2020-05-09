# ByteArrays
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L5)</span>
```pony
class val ByteArrays is
  ValBytes val,
  Hashable ref
```

#### Implements

* [ValBytes](valbytes-ValBytes.md) val
* [Hashable](collections-Hashable.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L10)</span>


```pony
new val create(
  left': ValBytes val = reference,
  right': ValBytes val = reference)
: ByteArrays val^
```
#### Parameters

*   left': [ValBytes](valbytes-ValBytes.md) val = reference
*   right': [ValBytes](valbytes-ValBytes.md) val = reference

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val^

---

## Public Functions

### size
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L18)</span>


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L20)</span>


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
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L27)</span>


```pony
fun box values()
: Iterator[U8 val] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[[U8](builtin-U8.md) val\] ref

---

### arrays
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L41)</span>


Get the accumulated arrays represented by this instance
inside an array.


```pony
fun val arrays()
: Array[Array[U8 val] val] iso^
```

#### Returns

* [Array](builtin-Array.md)\[[Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val\] iso^

---

### drop
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L114)</span>


```pony
fun val drop(
  amount: USize val)
: ByteArrays val
```
#### Parameters

*   amount: [USize](builtin-USize.md) val

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val

---

### take
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L117)</span>


```pony
fun val take(
  amount: USize val)
: ByteArrays val
```
#### Parameters

*   amount: [USize](builtin-USize.md) val

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val

---

### select
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L120)</span>


Get a ByteArrays instance to the selected range.


```pony
fun val select(
  from: USize val = 0,
  to: USize val = call)
: ByteArrays val
```
#### Parameters

*   from: [USize](builtin-USize.md) val = 0
*   to: [USize](builtin-USize.md) val = call

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val

---

### trim
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L173)</span>


Get the selected range as an array.

In best case no additional allocation, yay!


```pony
fun box trim(
  from: USize val = 0,
  to: USize val = call)
: Array[U8 val] val
```
#### Parameters

*   from: [USize](builtin-USize.md) val = 0
*   to: [USize](builtin-USize.md) val = call

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### copy_to
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L197)</span>


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

### string
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L215)</span>


diverges from usual Stringable.string in that
it can be used to get a substring of the whole ByteArrays instance
and that the result is val and in best case no additional allocation was necessary.


```pony
fun box string(
  from: USize val = 0,
  to: USize val = call)
: String val
```
#### Parameters

*   from: [USize](builtin-USize.md) val = 0
*   to: [USize](builtin-USize.md) val = call

#### Returns

* [String](builtin-String.md) val

---

### array
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L223)</span>


```pony
fun box array()
: Array[U8 val] val
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### add
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L225)</span>


Enable convenient concatenation via  `+` operator:

```pony
ByteArrays("a") + "b" + [as U8: 'c']
```


```pony
fun val add(
  other: (ValBytes val | String val))
: ByteArrays val
```
#### Parameters

*   other: ([ValBytes](valbytes-ValBytes.md) val | [String](builtin-String.md) val)

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val

---

### left
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L248)</span>


```pony
fun val left()
: ValBytes val
```

#### Returns

* [ValBytes](valbytes-ValBytes.md) val

---

### right
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L249)</span>


```pony
fun val right()
: ValBytes val
```

#### Returns

* [ValBytes](valbytes-ValBytes.md) val

---

### debug
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L251)</span>


```pony
fun val debug()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### find
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L282)</span>


Try to find `sub` in this ByteArrays.

If found, returns a tuple with the first element being `true` and the second element
being the starting index of `sub` in this.

```pony
let ba = ByteArrays + "abc" + "def"
match ba.find("cd")
| (true, let cd_index: USize) => "found"
| (false, _) => "not found"
end
```


```pony
fun box find(
  sub: ReadSeq[U8 val] box,
  start: USize val = 0,
  stop: USize val = call)
: (Bool val , USize val)
```
#### Parameters

*   sub: [ReadSeq](builtin-ReadSeq.md)\[[U8](builtin-U8.md) val\] box
*   start: [USize](builtin-USize.md) val = 0
*   stop: [USize](builtin-USize.md) val = call

#### Returns

* ([Bool](builtin-Bool.md) val , [USize](builtin-USize.md) val)

---

### skip_while
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L325)</span>


returns the first index for which f returns false,
USize.max_value() if it never returns true


```pony
fun box skip_while(
  f: {(U8): Bool ?} val,
  start: USize val)
: USize val
```
#### Parameters

*   f: {(U8): Bool ?} val
*   start: [USize](builtin-USize.md) val

#### Returns

* [USize](builtin-USize.md) val

---

### skip
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L345)</span>


return the first index in this that doesnt contain any element of `skip_chars`.

If we reach the end while skipping USize.max_value() is returned.


```pony
fun box skip(
  skip_chars: ReadSeq[U8 val] box,
  start: USize val = 0)
: USize val
```
#### Parameters

*   skip_chars: [ReadSeq](builtin-ReadSeq.md)\[[U8](builtin-U8.md) val\] box
*   start: [USize](builtin-USize.md) val = 0

#### Returns

* [USize](builtin-USize.md) val

---

### hash
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L377)</span>


```pony
fun box hash()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### read_u8\[optional T: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L384)</span>


```pony
fun box read_u8[optional T: U8 val](
  offset: USize val)
: U8 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U8](builtin-U8.md) val ?

---

### read_u16\[optional T: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L386)</span>


```pony
fun box read_u16[optional T: U8 val](
  offset: USize val)
: U16 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U16](builtin-U16.md) val ?

---

### read_u32\[optional T: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L400)</span>


```pony
fun box read_u32[optional T: U8 val](
  offset: USize val)
: U32 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U32](builtin-U32.md) val ?

---

### read_u64\[optional T: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L416)</span>


```pony
fun box read_u64[optional T: U8 val](
  offset: USize val)
: U64 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U64](builtin-U64.md) val ?

---

### read_u128\[optional T: [U8](builtin-U8.md) val\]
<span class="source-link">[[Source]](src/valbytes/byte_arrays.md#L436)</span>


```pony
fun box read_u128[optional T: U8 val](
  offset: USize val)
: U128 val ?
```
#### Parameters

*   offset: [USize](builtin-USize.md) val

#### Returns

* [U128](builtin-U128.md) val ?

---

