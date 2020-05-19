# StatusNoContent
<span class="source-link">[[Source]](src/http_server/status.md#L36)</span>
```pony
primitive val StatusNoContent is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L36)</span>


```pony
new val create()
: StatusNoContent val^
```

#### Returns

* [StatusNoContent](http_server-StatusNoContent.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L37)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L38)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L37)</span>


```pony
fun box eq(
  that: StatusNoContent val)
: Bool val
```
#### Parameters

*   that: [StatusNoContent](http_server-StatusNoContent.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L37)</span>


```pony
fun box ne(
  that: StatusNoContent val)
: Bool val
```
#### Parameters

*   that: [StatusNoContent](http_server-StatusNoContent.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

