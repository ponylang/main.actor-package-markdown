# UnknownMethod
<span class="source-link">[[Source]](src/http_server/request_parser.md#L7)</span>
```pony
primitive val UnknownMethod is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/request_parser.md#L7)</span>


```pony
new val create()
: UnknownMethod val^
```

#### Returns

* [UnknownMethod](http_server-UnknownMethod.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/http_server/request_parser.md#L8)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/http_server/request_parser.md#L8)</span>


```pony
fun box eq(
  that: UnknownMethod val)
: Bool val
```
#### Parameters

*   that: [UnknownMethod](http_server-UnknownMethod.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/request_parser.md#L8)</span>


```pony
fun box ne(
  that: UnknownMethod val)
: Bool val
```
#### Parameters

*   that: [UnknownMethod](http_server-UnknownMethod.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

