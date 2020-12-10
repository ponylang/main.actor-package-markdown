# StatusProxyAuthRequired
<span class="source-link">[[Source]](src/http_server/status.md#L89)</span>
```pony
primitive val StatusProxyAuthRequired is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L89)</span>


```pony
new val create()
: StatusProxyAuthRequired val^
```

#### Returns

* [StatusProxyAuthRequired](http_server-StatusProxyAuthRequired.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L90)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L91)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L90)</span>


```pony
fun box eq(
  that: StatusProxyAuthRequired val)
: Bool val
```
#### Parameters

*   that: [StatusProxyAuthRequired](http_server-StatusProxyAuthRequired.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L90)</span>


```pony
fun box ne(
  that: StatusProxyAuthRequired val)
: Bool val
```
#### Parameters

*   that: [StatusProxyAuthRequired](http_server-StatusProxyAuthRequired.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

