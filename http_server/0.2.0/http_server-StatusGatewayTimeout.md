# StatusGatewayTimeout
<span class="source-link">[[Source]](src/http_server/status.md#L150)</span>
```pony
primitive val StatusGatewayTimeout is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L150)</span>


```pony
new val create()
: StatusGatewayTimeout val^
```

#### Returns

* [StatusGatewayTimeout](http_server-StatusGatewayTimeout.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L151)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L152)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L151)</span>


```pony
fun box eq(
  that: StatusGatewayTimeout val)
: Bool val
```
#### Parameters

*   that: [StatusGatewayTimeout](http_server-StatusGatewayTimeout.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L151)</span>


```pony
fun box ne(
  that: StatusGatewayTimeout val)
: Bool val
```
#### Parameters

*   that: [StatusGatewayTimeout](http_server-StatusGatewayTimeout.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

