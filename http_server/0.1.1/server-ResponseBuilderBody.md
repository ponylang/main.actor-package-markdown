# ResponseBuilderBody
<span class="source-link">[[Source]](src/server/response.md#L67)</span>
```pony
interface ref ResponseBuilderBody
```

## Public Functions

### add_chunk
<span class="source-link">[[Source]](src/server/response.md#L68)</span>


Add some body data.

If Transfer-Encoding is set to [Chunked](http-Chunked.md) in [ResponseBuilderHeaders](http-ResponseBuilderHeaders.md)
each call to this function will take care of encoding every added array here in Chunked encoding.
Add an empty array to add the finishing chunk..


```pony
fun ref add_chunk(
  data: Array[U8 val] val)
: ResponseBuilderBody ref
```
#### Parameters

*   data: [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

#### Returns

* [ResponseBuilderBody](server-ResponseBuilderBody.md) ref

---

### build
<span class="source-link">[[Source]](src/server/response.md#L76)</span>


Serialize the accumulated response data into a [ByteSeqIter](builtin-ByteSeqIter.md).


```pony
fun ref build()
: ByteSeqIter val
```

#### Returns

* [ByteSeqIter](builtin-ByteSeqIter.md) val

---

### reset
<span class="source-link">[[Source]](src/server/response.md#L80)</span>


Reset the builder to a fresh state, only use the returned builder for further actions.


```pony
fun ref reset()
: ResponseBuilder ref
```

#### Returns

* [ResponseBuilder](server-ResponseBuilder.md) ref

---

