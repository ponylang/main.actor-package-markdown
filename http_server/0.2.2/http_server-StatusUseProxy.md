# StatusUseProxy
<span class="source-link">[[Source]](src/http_server/status.md#L61)</span>
```pony
primitive val StatusUseProxy is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L61)</span>


```pony
new val create()
: StatusUseProxy val^
```

#### Returns

* [StatusUseProxy](http_server-StatusUseProxy.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L62)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L63)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L62)</span>


```pony
fun box eq(
  that: StatusUseProxy val)
: Bool val
```
#### Parameters

*   that: [StatusUseProxy](http_server-StatusUseProxy.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L62)</span>


```pony
fun box ne(
  that: StatusUseProxy val)
: Bool val
```
#### Parameters

*   that: [StatusUseProxy](http_server-StatusUseProxy.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

