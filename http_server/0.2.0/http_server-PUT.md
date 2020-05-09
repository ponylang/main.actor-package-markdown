# PUT
<span class="source-link">[[Source]](src/http_server/method.md#L46)</span>
```pony
primitive val PUT is
  Method val
```

#### Implements

* [Method](http_server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/method.md#L46)</span>


```pony
new val create()
: PUT val^
```

#### Returns

* [PUT](http_server-PUT.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/http_server/method.md#L47)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/method.md#L48)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/http_server/method.md#L49)</span>


```pony
fun box eq(
  o: Method val)
: Bool val
```
#### Parameters

*   o: [Method](http_server-Method.md) val

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

*   that: [Method](http_server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

