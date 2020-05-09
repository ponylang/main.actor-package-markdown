# StatusTeapot
<span class="source-link">[[Source]](src/server/status.md#L122)</span>
```pony
primitive val StatusTeapot is
  Status val
```

#### Implements

* [Status](server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/status.md#L122)</span>


```pony
new val create()
: StatusTeapot val^
```

#### Returns

* [StatusTeapot](server-StatusTeapot.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/status.md#L123)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/server/status.md#L124)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/server/status.md#L123)</span>


```pony
fun box eq(
  that: StatusTeapot val)
: Bool val
```
#### Parameters

*   that: [StatusTeapot](server-StatusTeapot.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/status.md#L123)</span>


```pony
fun box ne(
  that: StatusTeapot val)
: Bool val
```
#### Parameters

*   that: [StatusTeapot](server-StatusTeapot.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

