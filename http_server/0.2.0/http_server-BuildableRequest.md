# BuildableRequest
<span class="source-link">[[Source]](src/http_server/request.md#L59)</span>

A HTTP Request that is created with `trn` refcap
in order to be mutable, and then, when done, be consumed into
a `val` reference. This is the way, the `HTTP11RequestParser` is handling this class and so should you.


```pony
class val BuildableRequest is
  Request val
```

#### Implements

* [Request](http_server-Request.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/request.md#L72)</span>


```pony
new trn create(
  method': Method val = reference,
  uri': URL val = reference,
  version': ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val) = reference,
  transfer_coding': (Chunked val | None val) = reference,
  content_length': (USize val | None val) = reference)
: BuildableRequest trn^
```
#### Parameters

*   method': [Method](http_server-Method.md) val = reference
*   uri': [URL](http_server-URL.md) val = reference
*   version': (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val) = reference
*   transfer_coding': ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val) = reference
*   content_length': ([USize](builtin-USize.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) trn^

---

## Public Functions

### method
<span class="source-link">[[Source]](src/http_server/request.md#L84)</span>


The Request Method.

See: https://tools.ietf.org/html/rfc2616#section-5.1.1


```pony
fun box method()
: Method val
```

#### Returns

* [Method](http_server-Method.md) val

---

### set_method
<span class="source-link">[[Source]](src/http_server/request.md#L92)</span>


```pony
fun ref set_method(
  method': Method val)
: BuildableRequest ref
```
#### Parameters

*   method': [Method](http_server-Method.md) val

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### uri
<span class="source-link">[[Source]](src/http_server/request.md#L96)</span>


The request URI

See: https://tools.ietf.org/html/rfc2616#section-5.1.2


```pony
fun box uri()
: URL val
```

#### Returns

* [URL](http_server-URL.md) val

---

### set_uri
<span class="source-link">[[Source]](src/http_server/request.md#L104)</span>


```pony
fun ref set_uri(
  uri': URL val)
: BuildableRequest ref
```
#### Parameters

*   uri': [URL](http_server-URL.md) val

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### version
<span class="source-link">[[Source]](src/http_server/request.md#L108)</span>


The HTTP version as given on the Request Line.

See: https://tools.ietf.org/html/rfc2616#section-3.1 and https://tools.ietf.org/html/rfc2616#section-5.1


```pony
fun box version()
: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val)
```

#### Returns

* (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

---

### set_version
<span class="source-link">[[Source]](src/http_server/request.md#L116)</span>


```pony
fun ref set_version(
  v: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val))
: BuildableRequest ref
```
#### Parameters

*   v: (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### header
<span class="source-link">[[Source]](src/http_server/request.md#L120)</span>


Case insensitive lookup of header value in this request.
Returns `None` if no header with name exists in this request.


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
<span class="source-link">[[Source]](src/http_server/request.md#L127)</span>


```pony
fun box headers()
: Iterator[(String val , String val)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] ref

---

### add_header
<span class="source-link">[[Source]](src/http_server/request.md#L129)</span>


Add a header with name and value to this request.
If a header with this name already exists, the given value will be appended to it,
with a separating comma.


```pony
fun ref add_header(
  name: String val,
  value: String val)
: BuildableRequest ref
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### set_header
<span class="source-link">[[Source]](src/http_server/request.md#L139)</span>


Set a header in this request to the given value.

If a header with this name already exists, the previous value will be overwritten.


```pony
fun ref set_header(
  name: String val,
  value: String val)
: BuildableRequest ref
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### clear_headers
<span class="source-link">[[Source]](src/http_server/request.md#L148)</span>


Remove all previously set headers from this request.


```pony
fun ref clear_headers()
: BuildableRequest ref
```

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### transfer_coding
<span class="source-link">[[Source]](src/http_server/request.md#L155)</span>


If `Chunked` the request body is encoded with Chunked Transfer-Encoding:

See: https://tools.ietf.org/html/rfc2616#section-3.6.1

If `None`, no Transfer-Encoding is applied. A Content-Encoding might be applied
to the body.


```pony
fun box transfer_coding()
: (Chunked val | None val)
```

#### Returns

* ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

---

### set_transfer_coding
<span class="source-link">[[Source]](src/http_server/request.md#L166)</span>


```pony
fun ref set_transfer_coding(
  te: (Chunked val | None val))
: BuildableRequest ref
```
#### Parameters

*   te: ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### content_length
<span class="source-link">[[Source]](src/http_server/request.md#L170)</span>


The content-length of the body of the request, counted in number of bytes.

If the content-length is `None`, the request either has no content-length set
or it's transfer-encoding is `Chunked`: https://tools.ietf.org/html/rfc2616#section-3.6.1


```pony
fun box content_length()
: (USize val | None val)
```

#### Returns

* ([USize](builtin-USize.md) val | [None](builtin-None.md) val)

---

### set_content_length
<span class="source-link">[[Source]](src/http_server/request.md#L179)</span>


```pony
fun ref set_content_length(
  cl: USize val)
: BuildableRequest ref
```
#### Parameters

*   cl: [USize](builtin-USize.md) val

#### Returns

* [BuildableRequest](http_server-BuildableRequest.md) ref

---

### has_body
<span class="source-link">[[Source]](src/http_server/request.md#L183)</span>


Returns `true` if either we have Chunked Transfer-Encoding
or a given Content-Length. In those cases we can expect a body.


```pony
fun box has_body()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

