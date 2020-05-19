# StatusFound
<span class="source-link">[[Source]](src/http_server/status.md#L52)</span>
```pony
primitive val StatusFound is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L52)</span>


```pony
new val create()
: StatusFound val^
```

#### Returns

* [StatusFound](http_server-StatusFound.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L53)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L54)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L53)</span>


```pony
fun box eq(
  that: StatusFound val)
: Bool val
```
#### Parameters

*   that: [StatusFound](http_server-StatusFound.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L53)</span>


```pony
fun box ne(
  that: StatusFound val)
: Bool val
```
#### Parameters

*   that: [StatusFound](http_server-StatusFound.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

