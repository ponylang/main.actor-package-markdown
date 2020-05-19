# Session
<span class="source-link">[[Source]](src/http_server/session.md#L3)</span>

An HTTP Session is the external API to the communication link
between client and server.

Every request is executed as part of a HTTP Session.
An HTTP Session lives as long as the underlying TCP connection and receives
request data from it and writes response data to it.

Receiving data and parsing this data into [Request](http-Request.md)s is happening on
the TCPConnection actor. The [Session](http-Session.md) actor is started when a new TCPConnection
is accepted, and shut down, when the connection is closed.

### Receiving a Request

As part of the Request-Response handling internal to this HTTP library,
a Session is instantiated that forwards requests to a [Handler](http-Handler.md),
to actual application code, which in turn sends Responses back to the Session instance
it was instantiated with (See [HandlerFactory](http-HandlerFactory.md).

See [Handler](http-Handler.md) on how requests are received by application code.

### Sending a Response




```pony
interface tag Session
```

## Public Behaviours

### send_start
<span class="source-link">[[Source]](src/http_server/session.md#L77)</span>


### Verbose API

Start sending a response, submitting the Response status and headers.

Sending a response via the verbose API needs to be done in 2 or more steps:

* Session.send_start    - exactly once    - submit status and headers
* Session.send_chunk    - 0 or more times - submit body
* Session.send_finished - exactly once    - clean up resources


```pony
be send_start(
  respone: Response val,
  request_id: USize val)
```
#### Parameters

*   respone: [Response](http_server-Response.md) val
*   request_id: [USize](builtin-USize.md) val

---

### send_chunk
<span class="source-link">[[Source]](src/http_server/session.md#L91)</span>


### Verbose API

Send a piece of body data of the request identified by `request_id`.
This might be the whole body or just a piece of it.

Notify the Session that the body has been fully sent, by calling `Session.send_finished`.


```pony
be send_chunk(
  data: (String val | Array[U8 val] val),
  request_id: USize val)
```
#### Parameters

*   data: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)
*   request_id: [USize](builtin-USize.md) val

---

### send_finished
<span class="source-link">[[Source]](src/http_server/session.md#L102)</span>


### Verbose API

Indicate that the response for `request_id` has been completed,
that is, its status, headers and body have been sent.

This will clean up resources on the session and
might send pending pipelined responses in addition to this response.

If this behaviour isnt called, the server might misbehave, especially
with clients doing HTTP pipelining.


```pony
be send_finished(
  request_id: USize val)
```
#### Parameters

*   request_id: [USize](builtin-USize.md) val

---

### send_cancel
<span class="source-link">[[Source]](src/http_server/session.md#L117)</span>


Cancel sending an in-flight response.
As the Session will be invalid afterwards, as the response might not have been sent completely,
it is best to close the session afterwards using `Session.dispose()`.


```pony
be send_cancel(
  request_id: USize val)
```
#### Parameters

*   request_id: [USize](builtin-USize.md) val

---

### send_no_body
<span class="source-link">[[Source]](src/http_server/session.md#L126)</span>


### Simple API

Send a bodyless Response in one call.

This call will do all the work of sending the response and cleaning up resources.
No need to call `Session.send_finished()` anymore for this request.


```pony
be send_no_body(
  response: Response val,
  request_id: USize val)
```
#### Parameters

*   response: [Response](http_server-Response.md) val
*   request_id: [USize](builtin-USize.md) val

---

### send
<span class="source-link">[[Source]](src/http_server/session.md#L137)</span>


### Simple API

Send an Response with a body in one call.

The body must be a [ByteArrays](valbytes-ByteArrays.md) instance.

Example:

```pony
// ...
var bytes = ByteArrays
bytes = bytes + "first line" + "\n"
bytes = bytes + "second line" + "\n"
bytes = bytes + "third line"

session.send(response, bytes, request_id)
// ...
```

This call will do all the work of sending the response and cleaning up resources.
No need to call `Session.send_finished()` anymore for this request.


```pony
be send(
  response: Response val,
  body: ByteArrays val,
  request_id: USize val)
```
#### Parameters

*   response: [Response](http_server-Response.md) val
*   body: [ByteArrays](valbytes-ByteArrays.md) val
*   request_id: [USize](builtin-USize.md) val

---

### send_raw
<span class="source-link">[[Source]](src/http_server/session.md#L164)</span>


### Optimized raw API

Send raw bytes to the Session in form of a [ByteSeqIter](builtin-ByteSeqIter.md).

These bytes may or may not include the response body.
You can use `Session.send_chunk()` to send the response body piece by piece.

If the session should be closed after sending this response,
no matter the requested standard HTTP connection handling,
set `close_session` to `true`. To be a good HTTP citizen, include
a `Connection: close` header in the raw response, to signal to the client
to also close the session.
If set to `false`, then normal HTTP connection handling applies
(request `Connection` header, HTTP/1.0 without `Connection: keep-alive`, etc.).

To finish sending the response, it is required to call `Session.send_finished()`
to wrap things up, otherwise the server might misbehave.

This API uses the [TCPConnection.writev](net-TCPConnection.md#writev) method to
optimize putting the given bytes out to the wire.

To make this optimized path more usable, this library provides the [ResponseBuilder](http-ResponseBuilder.md),
which builds up a response into a [ByteSeqIter](builtin-ByteSeqIter.md), thus taylored towards
being used with this API.

Example:

```pony
class MyHandler is Handler
  let _session: Session

  new create(session: Session) =>
    _session = session

  fun ref apply(request: Request val, request_id: RequestID): Any =>
    let body =
      match request.content_length()
      | let cl: USize =>
        "You've sent us " + cl.string() + " bytes! Thank you!"
      | None if request.transfer_coding() is Chunked =>
        "You've sent us some chunks! That's cool!"
      | None =>
        "Dunno how much you've sent us. Probably nothing. That's alright."
      end

    _session.send_raw(
      Responses.builder()
        .set_status(StatusOK)
        .add_header("Content-Type", "text/plain; charset=UTF-8")
        .add_header("Content-Length", body.size().string())
        .finish_headers()
        .add_chunk(body)
        .build(),
      request_id
    )
    // never forget !!!
    _session.send_finished(request_id)
```


```pony
be send_raw(
  raw: ByteSeqIter val,
  request_id: USize val,
  close_session: Bool val = false)
```
#### Parameters

*   raw: [ByteSeqIter](builtin-ByteSeqIter.md) val
*   request_id: [USize](builtin-USize.md) val
*   close_session: [Bool](builtin-Bool.md) val = false

---

### dispose
<span class="source-link">[[Source]](src/http_server/session.md#L227)</span>


Close the connection from this end.


```pony
be dispose()
```

---

