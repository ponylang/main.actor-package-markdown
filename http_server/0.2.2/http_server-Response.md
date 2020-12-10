# Response
<span class="source-link">[[Source]](src/http_server/response.md#L4)</span>

Representing a HTTP response minus the body.


```pony
interface val Response is
  ByteSeqIter val
```

#### Implements

* [ByteSeqIter](builtin-ByteSeqIter.md) val

---

## Public Functions

### version
<span class="source-link">[[Source]](src/http_server/response.md#L8)</span>


```pony
fun box version()
: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val)
```

#### Returns

* (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

---

### status
<span class="source-link">[[Source]](src/http_server/response.md#L9)</span>


```pony
fun box status()
: Status val
```

#### Returns

* [Status](http_server-Status.md) val

---

### header
<span class="source-link">[[Source]](src/http_server/response.md#L10)</span>


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
<span class="source-link">[[Source]](src/http_server/response.md#L11)</span>


```pony
fun box headers()
: Iterator[(String val , String val)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] ref

---

### transfer_coding
<span class="source-link">[[Source]](src/http_server/response.md#L12)</span>


```pony
fun box transfer_coding()
: (Chunked val | None val)
```

#### Returns

* ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

---

### content_length
<span class="source-link">[[Source]](src/http_server/response.md#L13)</span>


```pony
fun box content_length()
: (USize val | None val)
```

#### Returns

* ([USize](builtin-USize.md) val | [None](builtin-None.md) val)

---

### to_bytes
<span class="source-link">[[Source]](src/http_server/response.md#L14)</span>


```pony
fun box to_bytes()
: ByteArrays val
```

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val

---

### array
<span class="source-link">[[Source]](src/http_server/response.md#L15)</span>


```pony
fun box array()
: Array[U8 val] iso^
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] iso^

---

### values



```pony
fun box values()
: Iterator[(this->String box | this->Array[U8 val] box)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[(this->[String](builtin-String.md) box | this->[Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)\] ref

---

