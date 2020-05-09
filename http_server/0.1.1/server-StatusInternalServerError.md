# StatusInternalServerError
<span class="source-link">[[Source]](src/server/status.md#L138)</span>
```pony
primitive val StatusInternalServerError is
  Status val
```

#### Implements

* [Status](server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/status.md#L138)</span>


```pony
new val create()
: StatusInternalServerError val^
```

#### Returns

* [StatusInternalServerError](server-StatusInternalServerError.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/status.md#L139)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/server/status.md#L140)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/server/status.md#L139)</span>


```pony
fun box eq(
  that: StatusInternalServerError val)
: Bool val
```
#### Parameters

*   that: [StatusInternalServerError](server-StatusInternalServerError.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/status.md#L139)</span>


```pony
fun box ne(
  that: StatusInternalServerError val)
: Bool val
```
#### Parameters

*   that: [StatusInternalServerError](server-StatusInternalServerError.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

