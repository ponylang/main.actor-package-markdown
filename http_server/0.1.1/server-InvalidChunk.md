# InvalidChunk
<span class="source-link">[[Source]](src/server/request_parser.md#L22)</span>
```pony
primitive val InvalidChunk is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L22)</span>


```pony
new val create()
: InvalidChunk val^
```

#### Returns

* [InvalidChunk](server-InvalidChunk.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/server/request_parser.md#L23)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L23)</span>


```pony
fun box eq(
  that: InvalidChunk val)
: Bool val
```
#### Parameters

*   that: [InvalidChunk](server-InvalidChunk.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L23)</span>


```pony
fun box ne(
  that: InvalidChunk val)
: Bool val
```
#### Parameters

*   that: [InvalidChunk](server-InvalidChunk.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

