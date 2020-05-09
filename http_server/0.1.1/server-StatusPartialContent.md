# StatusPartialContent
<span class="source-link">[[Source]](src/server/status.md#L42)</span>
```pony
primitive val StatusPartialContent is
  Status val
```

#### Implements

* [Status](server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/status.md#L42)</span>


```pony
new val create()
: StatusPartialContent val^
```

#### Returns

* [StatusPartialContent](server-StatusPartialContent.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/status.md#L43)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/server/status.md#L44)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/server/status.md#L43)</span>


```pony
fun box eq(
  that: StatusPartialContent val)
: Bool val
```
#### Parameters

*   that: [StatusPartialContent](server-StatusPartialContent.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/status.md#L43)</span>


```pony
fun box ne(
  that: StatusPartialContent val)
: Bool val
```
#### Parameters

*   that: [StatusPartialContent](server-StatusPartialContent.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

