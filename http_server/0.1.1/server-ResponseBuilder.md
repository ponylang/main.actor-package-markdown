# ResponseBuilder
<span class="source-link">[[Source]](src/server/response.md#L28)</span>

Basic interface for a ResponseBuilder that can be used with chaining method calls.
It enforces a strict order of build steps by only making the next step available
as a return to a function required to transition. E.g. You must call `set_status(...)`
in order to get back a [ResponseBuilderHeaders](http-ResponseBuilderHeaders.md) to add
headers to the response. You need to call `finish_headers()` in order to
be able to add body data with [ResponseBuilderBody](http-ResponseBuilderBody.md).

You can always reset the builder to start out fresh from the beginning.
Implementations may take advantage of `reset()` by returning itself here,
allowing for object reuse.

Use [ResponseBuilderBody.build()](http-ResponseBuilderBody.md#build) to finally build the
response into a [ByteSeqIter](builtin-ByteSeqIter.md),
taylored for use with [Session.send_raw()](http-Session.md#send_raw).

Example usage:

```pony
let builder: ResponseBuilder = Responses.builder()
builder.set_status(StatusOK)
       .add_header("Content-Length", "4")
       .add_header("Content-Type", "text/plain; charset=UTF-8")
       .add_header("Server", "pony-http")
       .finish_headers()
       .add_chunk("COOL")
       .build()
```


```pony
interface ref ResponseBuilder
```

## Public Functions

### set_status
<span class="source-link">[[Source]](src/server/response.md#L58)</span>


```pony
fun ref set_status(
  status: Status val)
: ResponseBuilderHeaders ref
```
#### Parameters

*   status: [Status](server-Status.md) val

#### Returns

* [ResponseBuilderHeaders](server-ResponseBuilderHeaders.md) ref

---

### reset
<span class="source-link">[[Source]](src/server/response.md#L59)</span>


```pony
fun ref reset()
: ResponseBuilder ref
```

#### Returns

* [ResponseBuilder](server-ResponseBuilder.md) ref

---

