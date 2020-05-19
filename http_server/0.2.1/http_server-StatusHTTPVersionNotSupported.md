# StatusHTTPVersionNotSupported
<span class="source-link">[[Source]](src/http_server/status.md#L153)</span>
```pony
primitive val StatusHTTPVersionNotSupported is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L153)</span>


```pony
new val create()
: StatusHTTPVersionNotSupported val^
```

#### Returns

* [StatusHTTPVersionNotSupported](http_server-StatusHTTPVersionNotSupported.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L154)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L155)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L154)</span>


```pony
fun box eq(
  that: StatusHTTPVersionNotSupported val)
: Bool val
```
#### Parameters

*   that: [StatusHTTPVersionNotSupported](http_server-StatusHTTPVersionNotSupported.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L154)</span>


```pony
fun box ne(
  that: StatusHTTPVersionNotSupported val)
: Bool val
```
#### Parameters

*   that: [StatusHTTPVersionNotSupported](http_server-StatusHTTPVersionNotSupported.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

