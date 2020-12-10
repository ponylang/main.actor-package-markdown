# StatusConflict
<span class="source-link">[[Source]](src/http_server/status.md#L95)</span>
```pony
primitive val StatusConflict is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L95)</span>


```pony
new val create()
: StatusConflict val^
```

#### Returns

* [StatusConflict](http_server-StatusConflict.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L96)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L97)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L96)</span>


```pony
fun box eq(
  that: StatusConflict val)
: Bool val
```
#### Parameters

*   that: [StatusConflict](http_server-StatusConflict.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L96)</span>


```pony
fun box ne(
  that: StatusConflict val)
: Bool val
```
#### Parameters

*   that: [StatusConflict](http_server-StatusConflict.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

