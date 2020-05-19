# HTTP11
<span class="source-link">[[Source]](src/http_server/request.md#L5)</span>

HTTP/1.1


```pony
primitive val HTTP11 is
  _Version val
```

#### Implements

* _Version val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/request.md#L5)</span>


```pony
new val create()
: HTTP11 val^
```

#### Returns

* [HTTP11](http_server-HTTP11.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/http_server/request.md#L9)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### to_bytes
<span class="source-link">[[Source]](src/http_server/request.md#L10)</span>


```pony
fun box to_bytes()
: Array[U8 val] val
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### eq
<span class="source-link">[[Source]](src/http_server/request.md#L11)</span>


```pony
fun box eq(
  o: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val))
: Bool val
```
#### Parameters

*   o: (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne



```pony
fun box ne(
  that: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val))
: Bool val
```
#### Parameters

*   that: (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

#### Returns

* [Bool](builtin-Bool.md) val

---

