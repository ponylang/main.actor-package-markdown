# InvalidContentLength
<span class="source-link">[[Source]](src/server/request_parser.md#L16)</span>
```pony
primitive val InvalidContentLength is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L16)</span>


```pony
new val create()
: InvalidContentLength val^
```

#### Returns

* [InvalidContentLength](server-InvalidContentLength.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/server/request_parser.md#L17)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L17)</span>


```pony
fun box eq(
  that: InvalidContentLength val)
: Bool val
```
#### Parameters

*   that: [InvalidContentLength](server-InvalidContentLength.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L17)</span>


```pony
fun box ne(
  that: InvalidContentLength val)
: Bool val
```
#### Parameters

*   that: [InvalidContentLength](server-InvalidContentLength.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

