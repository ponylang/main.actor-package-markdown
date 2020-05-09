# StatusBadRequest
<span class="source-link">[[Source]](src/http_server/status.md#L68)</span>
```pony
primitive val StatusBadRequest is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L68)</span>


```pony
new val create()
: StatusBadRequest val^
```

#### Returns

* [StatusBadRequest](http_server-StatusBadRequest.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L69)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L70)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L69)</span>


```pony
fun box eq(
  that: StatusBadRequest val)
: Bool val
```
#### Parameters

*   that: [StatusBadRequest](http_server-StatusBadRequest.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L69)</span>


```pony
fun box ne(
  that: StatusBadRequest val)
: Bool val
```
#### Parameters

*   that: [StatusBadRequest](http_server-StatusBadRequest.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

