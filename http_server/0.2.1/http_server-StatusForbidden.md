# StatusForbidden
<span class="source-link">[[Source]](src/http_server/status.md#L77)</span>
```pony
primitive val StatusForbidden is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L77)</span>


```pony
new val create()
: StatusForbidden val^
```

#### Returns

* [StatusForbidden](http_server-StatusForbidden.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L78)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L79)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L78)</span>


```pony
fun box eq(
  that: StatusForbidden val)
: Bool val
```
#### Parameters

*   that: [StatusForbidden](http_server-StatusForbidden.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L78)</span>


```pony
fun box ne(
  that: StatusForbidden val)
: Bool val
```
#### Parameters

*   that: [StatusForbidden](http_server-StatusForbidden.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

