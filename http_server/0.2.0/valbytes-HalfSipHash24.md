# HalfSipHash24
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L223)</span>
```pony
primitive val HalfSipHash24
```

## Constructors

### create
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L223)</span>


```pony
new val create()
: HalfSipHash24 val^
```

#### Returns

* [HalfSipHash24](valbytes-HalfSipHash24.md) val^

---

## Public Functions

### apply\[T: [ReadSeq](builtin-ReadSeq.md)\[[U8](builtin-U8.md) val\] #read\]
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L246)</span>


```pony
fun box apply[T: ReadSeq[U8 val] #read](
  data: T)
: U32 val
```
#### Parameters

*   data: T

#### Returns

* [U32](builtin-U32.md) val

---

### eq
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L225)</span>


```pony
fun box eq(
  that: HalfSipHash24 val)
: Bool val
```
#### Parameters

*   that: [HalfSipHash24](valbytes-HalfSipHash24.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L225)</span>


```pony
fun box ne(
  that: HalfSipHash24 val)
: Bool val
```
#### Parameters

*   that: [HalfSipHash24](valbytes-HalfSipHash24.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

