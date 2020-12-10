# StatusNotFound
<span class="source-link">[[Source]](src/http_server/status.md#L80)</span>
```pony
primitive val StatusNotFound is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L80)</span>


```pony
new val create()
: StatusNotFound val^
```

#### Returns

* [StatusNotFound](http_server-StatusNotFound.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L81)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L82)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L81)</span>


```pony
fun box eq(
  that: StatusNotFound val)
: Bool val
```
#### Parameters

*   that: [StatusNotFound](http_server-StatusNotFound.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L81)</span>


```pony
fun box ne(
  that: StatusNotFound val)
: Bool val
```
#### Parameters

*   that: [StatusNotFound](http_server-StatusNotFound.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

