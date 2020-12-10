# StatusServiceUnavailable
<span class="source-link">[[Source]](src/http_server/status.md#L147)</span>
```pony
primitive val StatusServiceUnavailable is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L147)</span>


```pony
new val create()
: StatusServiceUnavailable val^
```

#### Returns

* [StatusServiceUnavailable](http_server-StatusServiceUnavailable.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L148)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L149)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L148)</span>


```pony
fun box eq(
  that: StatusServiceUnavailable val)
: Bool val
```
#### Parameters

*   that: [StatusServiceUnavailable](http_server-StatusServiceUnavailable.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L148)</span>


```pony
fun box ne(
  that: StatusServiceUnavailable val)
: Bool val
```
#### Parameters

*   that: [StatusServiceUnavailable](http_server-StatusServiceUnavailable.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

