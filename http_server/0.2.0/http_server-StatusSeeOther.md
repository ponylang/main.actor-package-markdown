# StatusSeeOther
<span class="source-link">[[Source]](src/http_server/status.md#L55)</span>
```pony
primitive val StatusSeeOther is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L55)</span>


```pony
new val create()
: StatusSeeOther val^
```

#### Returns

* [StatusSeeOther](http_server-StatusSeeOther.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L56)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L57)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L56)</span>


```pony
fun box eq(
  that: StatusSeeOther val)
: Bool val
```
#### Parameters

*   that: [StatusSeeOther](http_server-StatusSeeOther.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L56)</span>


```pony
fun box ne(
  that: StatusSeeOther val)
: Bool val
```
#### Parameters

*   that: [StatusSeeOther](http_server-StatusSeeOther.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

