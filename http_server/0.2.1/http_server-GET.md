# GET
<span class="source-link">[[Source]](src/http_server/method.md#L16)</span>
```pony
primitive val GET is
  Method val
```

#### Implements

* [Method](http_server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/method.md#L16)</span>


```pony
new val create()
: GET val^
```

#### Returns

* [GET](http_server-GET.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/http_server/method.md#L17)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/method.md#L18)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/http_server/method.md#L19)</span>


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

