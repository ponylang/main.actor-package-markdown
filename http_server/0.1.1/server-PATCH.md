# PATCH
<span class="source-link">[[Source]](src/server/method.md#L36)</span>
```pony
primitive val PATCH is
  Method val
```

#### Implements

* [Method](server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/method.md#L36)</span>


```pony
new val create()
: PATCH val^
```

#### Returns

* [PATCH](server-PATCH.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/server/method.md#L37)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/server/method.md#L38)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/method.md#L39)</span>


```pony
fun box eq(
  o: Method val)
: Bool val
```
#### Parameters

*   o: [Method](server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne



```pony
fun box ne(
  that: Method val)
: Bool val
```
#### Parameters

*   that: [Method](server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

