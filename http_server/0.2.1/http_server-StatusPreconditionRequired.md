# StatusPreconditionRequired
<span class="source-link">[[Source]](src/http_server/status.md#L125)</span>
```pony
primitive val StatusPreconditionRequired is
  Status val
```

#### Implements

* [Status](http_server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/status.md#L125)</span>


```pony
new val create()
: StatusPreconditionRequired val^
```

#### Returns

* [StatusPreconditionRequired](http_server-StatusPreconditionRequired.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L126)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L127)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http_server/status.md#L126)</span>


```pony
fun box eq(
  that: StatusPreconditionRequired val)
: Bool val
```
#### Parameters

*   that: [StatusPreconditionRequired](http_server-StatusPreconditionRequired.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/status.md#L126)</span>


```pony
fun box ne(
  that: StatusPreconditionRequired val)
: Bool val
```
#### Parameters

*   that: [StatusPreconditionRequired](http_server-StatusPreconditionRequired.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

