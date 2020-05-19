# BuildableResponse
<span class="source-link">[[Source]](src/http_server/response.md#L223)</span>

Build your own HTTP Responses (minus the body) and turn them into immutable
things to send around.

This class can be serialized in the following ways:

* to Array[U8]: BuildableResponse.array()
* to ByteArrays: BuildableResponse.to_bytes()

or by using it as a ByteSeqIter.

This class exists if you want to use the verbose API of [Session](http-Session.md)
and brings lots of convenience, like getters and setters for all common properties.

If you are looking for a more efficient way to build responses, use a [ResponseBuilder](http-ResponseBuilder.md)
as it is returned from [Responses.builder()](http-Responses.md#builder), this class is not introspectable
and only allows adding properties the way they are put on the serialized form in the request. E.g. you must first
set the status and then the headers, not the other way around. But it makes for a more efficient API.


```pony
class val BuildableResponse is
  Response val,
  ByteSeqIter val
```

#### Implements

* [Response](http_server-Response.md) val
* [ByteSeqIter](builtin-ByteSeqIter.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/response.md#L249)</span>


```pony
new trn create(
  status': Status val = reference,
  version': ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val) = reference,
  transfer_coding': (Chunked val | None val) = reference,
  content_length': (USize val | None val) = reference)
: BuildableResponse trn^
```
#### Parameters

*   status': [Status](http_server-Status.md) val = reference
*   version': (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val) = reference
*   transfer_coding': ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val) = reference
*   content_length': ([USize](builtin-USize.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) trn^

---

## Public Functions

### version
<span class="source-link">[[Source]](src/http_server/response.md#L259)</span>


```pony
fun box version()
: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val)
```

#### Returns

* (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

---

### set_version
<span class="source-link">[[Source]](src/http_server/response.md#L260)</span>


```pony
fun ref set_version(
  v: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val))
: BuildableResponse ref
```
#### Parameters

*   v: (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val)

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### status
<span class="source-link">[[Source]](src/http_server/response.md#L264)</span>


```pony
fun box status()
: Status val
```

#### Returns

* [Status](http_server-Status.md) val

---

### set_status
<span class="source-link">[[Source]](src/http_server/response.md#L265)</span>


```pony
fun ref set_status(
  s: Status val)
: BuildableResponse ref
```
#### Parameters

*   s: [Status](http_server-Status.md) val

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### header
<span class="source-link">[[Source]](src/http_server/response.md#L269)</span>


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
<span class="source-link">[[Source]](src/http_server/response.md#L270)</span>


```pony
fun box headers()
: Iterator[(String val , String val)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] ref

---

### add_header
<span class="source-link">[[Source]](src/http_server/response.md#L271)</span>


```pony
fun ref add_header(
  name: String val,
  value: String val)
: BuildableResponse ref
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### set_header
<span class="source-link">[[Source]](src/http_server/response.md#L274)</span>


```pony
fun ref set_header(
  name: String val,
  value: String val)
: BuildableResponse ref
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### clear_headers
<span class="source-link">[[Source]](src/http_server/response.md#L277)</span>


```pony
fun ref clear_headers()
: BuildableResponse ref
```

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### transfer_coding
<span class="source-link">[[Source]](src/http_server/response.md#L281)</span>


```pony
fun box transfer_coding()
: (Chunked val | None val)
```

#### Returns

* ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

---

### set_transfer_coding
<span class="source-link">[[Source]](src/http_server/response.md#L282)</span>


```pony
fun ref set_transfer_coding(
  c: (Chunked val | None val))
: BuildableResponse ref
```
#### Parameters

*   c: ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### content_length
<span class="source-link">[[Source]](src/http_server/response.md#L286)</span>


```pony
fun box content_length()
: (USize val | None val)
```

#### Returns

* ([USize](builtin-USize.md) val | [None](builtin-None.md) val)

---

### set_content_length
<span class="source-link">[[Source]](src/http_server/response.md#L287)</span>


```pony
fun ref set_content_length(
  cl: (USize val | None val))
: BuildableResponse ref
```
#### Parameters

*   cl: ([USize](builtin-USize.md) val | [None](builtin-None.md) val)

#### Returns

* [BuildableResponse](http_server-BuildableResponse.md) ref

---

### array
<span class="source-link">[[Source]](src/http_server/response.md#L297)</span>


```pony
fun box array()
: Array[U8 val] iso^
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] iso^

---

### to_bytes
<span class="source-link">[[Source]](src/http_server/response.md#L323)</span>


```pony
fun box to_bytes()
: ByteArrays val
```

#### Returns

* [ByteArrays](valbytes-ByteArrays.md) val

---

### values
<span class="source-link">[[Source]](src/http_server/response.md#L333)</span>


Make this a very inefficient ByteSeqIter.
Rather use `array()` if you care about performance.


```pony
fun box values()
: Iterator[(this->String box | this->Array[U8 val] box)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[(this->[String](builtin-String.md) box | this->[Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)\] ref

---

