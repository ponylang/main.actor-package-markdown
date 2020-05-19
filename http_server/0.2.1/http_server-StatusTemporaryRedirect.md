# StatusTemporaryRedirect
<span class="source-link">[[Source]](src/http_server/status.md#L64)</span>
```pony
primitive val StatusTemporaryRedirect is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L64)</span>


```pony
new val create()
: StatusTemporaryRedirect val^
```

#### Returns

* [StatusTemporaryRedirect](http_server-StatusTemporaryRedirect.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L65)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L66)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L65)</span>


```pony
fun box eq(
  that: StatusTemporaryRedirect val)
: Bool val
```
#### Parameters

*   that: [StatusTemporaryRedirect](http_server-StatusTemporaryRedirect.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L65)</span>


```pony
fun box ne(
  that: StatusTemporaryRedirect val)
: Bool val
```
#### Parameters

*   that: [StatusTemporaryRedirect](http_server-StatusTemporaryRedirect.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

