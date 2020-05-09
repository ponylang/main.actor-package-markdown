# StatusNotModified
<span class="source-link">[[Source]](src/server/status.md#L58)</span>
```pony
primitive val StatusNotModified is
  Status val
```

#### Implements

* [Status](server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/status.md#L58)</span>


```pony
new val create()
: StatusNotModified val^
```

#### Returns

* [StatusNotModified](server-StatusNotModified.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/status.md#L59)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/server/status.md#L60)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/server/status.md#L59)</span>


```pony
fun box eq(
  that: StatusNotModified val)
: Bool val
```
#### Parameters

*   that: [StatusNotModified](server-StatusNotModified.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/status.md#L59)</span>


```pony
fun box ne(
  that: StatusNotModified val)
: Bool val
```
#### Parameters

*   that: [StatusNotModified](server-StatusNotModified.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

