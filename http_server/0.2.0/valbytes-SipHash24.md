# SipHash24
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L79)</span>
```pony
primitive val SipHash24
```

## Constructors

### create
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L79)</span>


```pony
new val create()
: SipHash24 val^
```

#### Returns

* [SipHash24](valbytes-SipHash24.md) val^

---

## Public Functions

### apply\[T: [ReadSeq](builtin-ReadSeq.md)\[[U8](builtin-U8.md) val\] #read\]
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L103)</span>


```pony
fun box apply[T: ReadSeq[U8 val] #read](
  data: T)
: U64 val
```
#### Parameters

*   data: T

#### Returns

* [U64](builtin-U64.md) val

---

### eq
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L81)</span>


```pony
fun box eq(
  that: SipHash24 val)
: Bool val
```
#### Parameters

*   that: [SipHash24](valbytes-SipHash24.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L81)</span>


```pony
fun box ne(
  that: SipHash24 val)
: Bool val
```
#### Parameters

*   that: [SipHash24](valbytes-SipHash24.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

