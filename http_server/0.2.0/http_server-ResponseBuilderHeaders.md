# ResponseBuilderHeaders
<span class="source-link">[[Source]](src/http_server/response.md#L61)</span>
```pony
interface ref ResponseBuilderHeaders
```

## Public Functions

### add_header
<span class="source-link">[[Source]](src/http_server/response.md#L62)</span>


```pony
fun ref add_header(
  name: String val,
  value: String val)
: ResponseBuilderHeaders ref
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [ResponseBuilderHeaders](http_server-ResponseBuilderHeaders.md) ref

---

### set_transfer_encoding
<span class="source-link">[[Source]](src/http_server/response.md#L63)</span>


```pony
fun ref set_transfer_encoding(
  chunked: (Chunked val | None val))
: ResponseBuilderHeaders ref
```
#### Parameters

*   chunked: ([Chunked](http_server-Chunked.md) val | [None](builtin-None.md) val)

#### Returns

* [ResponseBuilderHeaders](http_server-ResponseBuilderHeaders.md) ref

---

### finish_headers
<span class="source-link">[[Source]](src/http_server/response.md#L64)</span>


```pony
fun ref finish_headers()
: ResponseBuilderBody ref
```

#### Returns

* [ResponseBuilderBody](http_server-ResponseBuilderBody.md) ref

---

### reset
<span class="source-link">[[Source]](src/http_server/response.md#L65)</span>


```pony
fun ref reset()
: ResponseBuilder ref
```

#### Returns

* [ResponseBuilder](http_server-ResponseBuilder.md) ref

---

