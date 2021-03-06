# StatusBadGateway
<span class="source-link">[[Source]](src/http/status.md#L132)</span>
```pony
primitive val StatusBadGateway is
  Status val
```

#### Implements

* [Status](http-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http/status.md#L132)</span>


```pony
new val create()
: StatusBadGateway val^
```

#### Returns

* [StatusBadGateway](http-StatusBadGateway.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http/status.md#L133)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http/status.md#L134)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/http/status.md#L133)</span>


```pony
fun box eq(
  that: StatusBadGateway val)
: Bool val
```
#### Parameters

*   that: [StatusBadGateway](http-StatusBadGateway.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http/status.md#L133)</span>


```pony
fun box ne(
  that: StatusBadGateway val)
: Bool val
```
#### Parameters

*   that: [StatusBadGateway](http-StatusBadGateway.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

