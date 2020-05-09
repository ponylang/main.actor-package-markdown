# TRACE
<span class="source-link">[[Source]](src/server/method.md#L51)</span>
```pony
primitive val TRACE is
  Method val
```

#### Implements

* [Method](server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/method.md#L51)</span>


```pony
new val create()
: TRACE val^
```

#### Returns

* [TRACE](server-TRACE.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/server/method.md#L52)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/server/method.md#L53)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/method.md#L54)</span>


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

