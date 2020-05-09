# HalfSipHash24Streaming
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L180)</span>
```pony
class ref HalfSipHash24Streaming
```

## Constructors

### create
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L188)</span>


```pony
new ref create()
: HalfSipHash24Streaming ref^
```

#### Returns

* [HalfSipHash24Streaming](valbytes-HalfSipHash24Streaming.md) ref^

---

## Public Functions

### reset
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L191)</span>


Reset the internal state.


```pony
fun ref reset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### update
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L201)</span>


```pony
fun ref update(
  m: U32 val)
: None val
```
#### Parameters

*   m: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### finish
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L208)</span>


```pony
fun ref finish()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

