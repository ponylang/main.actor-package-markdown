# InvalidTransferCoding
<span class="source-link">[[Source]](src/server/request_parser.md#L19)</span>
```pony
primitive val InvalidTransferCoding is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L19)</span>


```pony
new val create()
: InvalidTransferCoding val^
```

#### Returns

* [InvalidTransferCoding](server-InvalidTransferCoding.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/server/request_parser.md#L20)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L20)</span>


```pony
fun box eq(
  that: InvalidTransferCoding val)
: Bool val
```
#### Parameters

*   that: [InvalidTransferCoding](server-InvalidTransferCoding.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L20)</span>


```pony
fun box ne(
  that: InvalidTransferCoding val)
: Bool val
```
#### Parameters

*   that: [InvalidTransferCoding](server-InvalidTransferCoding.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

