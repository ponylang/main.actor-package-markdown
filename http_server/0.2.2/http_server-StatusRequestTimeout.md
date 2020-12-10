# StatusRequestTimeout
<span class="source-link">[[Source]](src/http_server/status.md#L92)</span>
```pony
primitive val StatusRequestTimeout is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L92)</span>


```pony
new val create()
: StatusRequestTimeout val^
```

#### Returns

* [StatusRequestTimeout](http_server-StatusRequestTimeout.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L93)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L94)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L93)</span>


```pony
fun box eq(
  that: StatusRequestTimeout val)
: Bool val
```
#### Parameters

*   that: [StatusRequestTimeout](http_server-StatusRequestTimeout.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L93)</span>


```pony
fun box ne(
  that: StatusRequestTimeout val)
: Bool val
```
#### Parameters

*   that: [StatusRequestTimeout](http_server-StatusRequestTimeout.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

