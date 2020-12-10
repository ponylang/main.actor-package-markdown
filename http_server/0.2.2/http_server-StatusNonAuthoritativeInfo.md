# StatusNonAuthoritativeInfo
<span class="source-link">[[Source]](src/http_server/status.md#L33)</span>
```pony
primitive val StatusNonAuthoritativeInfo is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L33)</span>


```pony
new val create()
: StatusNonAuthoritativeInfo val^
```

#### Returns

* [StatusNonAuthoritativeInfo](http_server-StatusNonAuthoritativeInfo.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L34)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L35)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L34)</span>


```pony
fun box eq(
  that: StatusNonAuthoritativeInfo val)
: Bool val
```
#### Parameters

*   that: [StatusNonAuthoritativeInfo](http_server-StatusNonAuthoritativeInfo.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L34)</span>


```pony
fun box ne(
  that: StatusNonAuthoritativeInfo val)
: Bool val
```
#### Parameters

*   that: [StatusNonAuthoritativeInfo](http_server-StatusNonAuthoritativeInfo.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

