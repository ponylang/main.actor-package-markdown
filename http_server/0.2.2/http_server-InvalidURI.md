# InvalidURI
<span class="source-link">[[Source]](src/http_server/request_parser.md#L10)</span>
```pony
primitive val InvalidURI is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/request_parser.md#L10)</span>


```pony
new val create()
: InvalidURI val^
```

#### Returns

* [InvalidURI](http_server-InvalidURI.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/http_server/request_parser.md#L11)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/http_server/request_parser.md#L11)</span>


```pony
fun box eq(
  that: InvalidURI val)
: Bool val
```
#### Parameters

*   that: [InvalidURI](http_server-InvalidURI.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/request_parser.md#L11)</span>


```pony
fun box ne(
  that: InvalidURI val)
: Bool val
```
#### Parameters

*   that: [InvalidURI](http_server-InvalidURI.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

