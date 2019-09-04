# HTTPHandler
<span class="source-link">[[Source]](src/http/http_handler.md#L55)</span>

This is the interface through which HTTP messages are delivered *to*
application code. On the server, this will be HTTP Requests (GET,
HEAD, DELETE, POST, etc) sent from a client. On the client, this will
be the HTTP Responses coming back from the server. The protocol is largely
symmetrical and the same interface definition is used, though what
processing happens behind the interface will of course vary.

This interface delivers asynchronous events when receiving an HTTP
message (called a `Payload`). Calls to these methods are made in
the context of the `HTTPSession` actor so most of them should be
passing data on to a processing actor.

Each `HTTPSession` must have a unique instance of the handler. The
application code does not necessarily know when an `HTTPSession` is created,
so the application must provide an instance of `HandlerFactory` that
will be called at the appropriate time.


```pony
interface ref HTTPHandler
```

## Public Functions

### apply
<span class="source-link">[[Source]](src/http/http_handler.md#L74)</span>


```pony
fun ref apply(
  payload: Payload val)
: Any tag
```
#### Parameters

*   payload: [Payload](http-Payload.md) val

#### Returns

* [Any](builtin-Any.md) tag

---

### chunk
<span class="source-link">[[Source]](src/http/http_handler.md#L87)</span>


Notification of incoming body data. The body belongs to the most
recent `Payload` delivered by an `apply` notification.


```pony
fun ref chunk(
  data: (String val | Array[U8 val] val))
: None val
```
#### Parameters

*   data: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)

#### Returns

* [None](builtin-None.md) val

---

### finished
<span class="source-link">[[Source]](src/http/http_handler.md#L93)</span>


Notification that no more body chunks are coming. Delivery of this HTTP
message is complete.


```pony
fun ref finished()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### cancelled
<span class="source-link">[[Source]](src/http/http_handler.md#L99)</span>


Notification that transferring the payload has been cancelled locally,
e.g. by disposing the client, closing the server or manually cancelling a single request.


```pony
fun ref cancelled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### failed
<span class="source-link">[[Source]](src/http/http_handler.md#L105)</span>


Notification about failure to transfer the payload
(e.g. connection could not be established, authentication failed, connection was closed prematurely, ...)


```pony
fun ref failed(
  reason: (AuthFailed val | ConnectionClosed val | ConnectFailed val))
: None val
```
#### Parameters

*   reason: ([AuthFailed](http-AuthFailed.md) val | [ConnectionClosed](http-ConnectionClosed.md) val | [ConnectFailed](http-ConnectFailed.md) val)

#### Returns

* [None](builtin-None.md) val

---

### throttled
<span class="source-link">[[Source]](src/http/http_handler.md#L111)</span>


Notification that the session temporarily can not accept more data.


```pony
fun ref throttled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unthrottled
<span class="source-link">[[Source]](src/http/http_handler.md#L116)</span>


Notification that the session can resume accepting data.


```pony
fun ref unthrottled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### need_body
<span class="source-link">[[Source]](src/http/http_handler.md#L121)</span>


Notification that the HTTPSession is ready for Stream or Chunked
body data.


```pony
fun ref need_body()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

