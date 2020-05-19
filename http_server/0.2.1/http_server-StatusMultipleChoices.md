# StatusMultipleChoices
<span class="source-link">[[Source]](src/http_server/status.md#L46)</span>
```pony
primitive val StatusMultipleChoices is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L46)</span>


```pony
new val create()
: StatusMultipleChoices val^
```

#### Returns

* [StatusMultipleChoices](http_server-StatusMultipleChoices.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L47)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L48)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L47)</span>


```pony
fun box eq(
  that: StatusMultipleChoices val)
: Bool val
```
#### Parameters

*   that: [StatusMultipleChoices](http_server-StatusMultipleChoices.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L47)</span>


```pony
fun box ne(
  that: StatusMultipleChoices val)
: Bool val
```
#### Parameters

*   that: [StatusMultipleChoices](http_server-StatusMultipleChoices.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

