# POST
<span class="source-link">[[Source]](src/http_server/method.md#L41)</span>
```pony
primitive val POST is
  Method val
```

#### Implements

* [Method](http_server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/method.md#L41)</span>


```pony
new val create()
: POST val^
```

#### Returns

* [POST](http_server-POST.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/http_server/method.md#L42)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/method.md#L43)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/http_server/method.md#L44)</span>


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

