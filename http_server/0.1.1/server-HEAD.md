# HEAD
<span class="source-link">[[Source]](src/server/method.md#L26)</span>
```pony
primitive val HEAD is
  Method val
```

#### Implements

* [Method](server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/method.md#L26)</span>


```pony
new val create()
: HEAD val^
```

#### Returns

* [HEAD](server-HEAD.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/server/method.md#L27)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/server/method.md#L28)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/method.md#L29)</span>


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

