# InvalidVersion
<span class="source-link">[[Source]](src/server/request_parser.md#L13)</span>
```pony
primitive val InvalidVersion is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L13)</span>


```pony
new val create()
: InvalidVersion val^
```

#### Returns

* [InvalidVersion](server-InvalidVersion.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/server/request_parser.md#L14)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L14)</span>


```pony
fun box eq(
  that: InvalidVersion val)
: Bool val
```
#### Parameters

*   that: [InvalidVersion](server-InvalidVersion.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L14)</span>


```pony
fun box ne(
  that: InvalidVersion val)
: Bool val
```
#### Parameters

*   that: [InvalidVersion](server-InvalidVersion.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

