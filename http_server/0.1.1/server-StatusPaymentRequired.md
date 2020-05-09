# StatusPaymentRequired
<span class="source-link">[[Source]](src/server/status.md#L74)</span>
```pony
primitive val StatusPaymentRequired is
  Status val
```

#### Implements

* [Status](server-Status.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/status.md#L74)</span>


```pony
new val create()
: StatusPaymentRequired val^
```

#### Returns

* [StatusPaymentRequired](server-StatusPaymentRequired.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/status.md#L75)</span>


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/server/status.md#L76)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/server/status.md#L75)</span>


```pony
fun box eq(
  that: StatusPaymentRequired val)
: Bool val
```
#### Parameters

*   that: [StatusPaymentRequired](server-StatusPaymentRequired.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/status.md#L75)</span>


```pony
fun box ne(
  that: StatusPaymentRequired val)
: Bool val
```
#### Parameters

*   that: [StatusPaymentRequired](server-StatusPaymentRequired.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

