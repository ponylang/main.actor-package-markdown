# TooLarge
<span class="source-link">[[Source]](src/server/request_parser.md#L4)</span>
```pony
primitive val TooLarge is
  _RequestParseError val
```

#### Implements

* _RequestParseError val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L4)</span>


```pony
new val create()
: TooLarge val^
```

#### Returns

* [TooLarge](server-TooLarge.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/server/request_parser.md#L5)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L5)</span>


```pony
fun box eq(
  that: TooLarge val)
: Bool val
```
#### Parameters

*   that: [TooLarge](server-TooLarge.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L5)</span>


```pony
fun box ne(
  that: TooLarge val)
: Bool val
```
#### Parameters

*   that: [TooLarge](server-TooLarge.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

