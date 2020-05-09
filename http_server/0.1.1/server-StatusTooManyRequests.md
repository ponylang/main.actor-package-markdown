# StatusTooManyRequests
<span class="source-link">[[Source]](src/server/status.md#L128)</span>
```pony
primitive val StatusTooManyRequests is
  Status val
```

#### Implements

* [Status](server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/status.md#L128)</span>


```pony
new val create()
: StatusTooManyRequests val^
```

#### Returns

* [StatusTooManyRequests](server-StatusTooManyRequests.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/status.md#L129)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/server/status.md#L130)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/server/status.md#L129)</span>


```pony
fun box eq(
  that: StatusTooManyRequests val)
: Bool val
```
#### Parameters

*   that: [StatusTooManyRequests](server-StatusTooManyRequests.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/status.md#L129)</span>


```pony
fun box ne(
  that: StatusTooManyRequests val)
: Bool val
```
#### Parameters

*   that: [StatusTooManyRequests](server-StatusTooManyRequests.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

