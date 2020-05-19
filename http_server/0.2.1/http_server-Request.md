# Request
<span class="source-link">[[Source]](src/http_server/request.md#L37)</span>

HTTP Request

* Method
* URI
* HTTP-Version
* Headers
* Transfer-Coding
* Content-Length

Without body.


```pony
interface val Request
```

## Public Functions

### method
<span class="source-link">[[Source]](src/http_server/request.md#L50)</span>


```pony
fun box method()
: Method val
```

#### Returns

* [Method](http_server-Method.md) val

---

### uri
<span class="source-link">[[Source]](src/http_server/request.md#L51)</span>


```pony
fun box uri()
: URL val
```

#### Returns

* [URL](http_server-URL.md) val

---

### version
<span class="source-link">[[Source]](src/http_server/request.md#L52)</span>


```pony
fun box version()
: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val)
```

#### Returns

* (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

---

### header
<span class="source-link">[[Source]](src/http_server/request.md#L53)</span>


```pony
fun box header(
  name: String val)
: (String val | None val)
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* ([String](builtin-String.md) val | [None](builtin-None.md) val)

---

### headers
<span class="source-link">[[Source]](src/http_server/request.md#L54)</span>


```pony
fun box headers()
: Iterator[(String val , String val)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] ref

---

### transfer_coding
<span class="source-link">[[Source]](src/http_server/request.md#L55)</span>


```pony
fun box transfer_coding()
: (Chunked val | None val)
```

#### Returns

* ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

---

### content_length
<span class="source-link">[[Source]](src/http_server/request.md#L56)</span>


```pony
fun box content_length()
: (USize val | None val)
```

#### Returns

* ([USize](builtin-USize.md) val | [None](builtin-None.md) val)

---

### has_body
<span class="source-link">[[Source]](src/http_server/request.md#L57)</span>


```pony
fun box has_body()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

