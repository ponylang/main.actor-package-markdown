# HTTPClient
<span class="source-link">[[Source]](src/http/client.md#L5)</span>

Manages a group of HTTP connections on behalf of a client application.
A client should create one instance of this class.


```pony
class ref HTTPClient
```

## Constructors

### create
<span class="source-link">[[Source]](src/http/client.md#L16)</span>


Create the context in which all HTTP sessions will originate.

Parameters:
- keepalive_timeout_secs: Use TCP Keepalive and check if the other side is down
                          every `keepalive_timeout_secs` seconds.


```pony
new ref create(
  auth: (AmbientAuth val | NetAuth val | TCPAuth val | 
    TCPConnectAuth val),
  sslctx: (SSLContext val | None val) = reference,
  pipeline: Bool val = true,
  keepalive_timeout_secs: U32 val = 0)
: HTTPClient ref^
```
#### Parameters

*   auth: ([AmbientAuth](builtin-AmbientAuth.md) val | [NetAuth](net-NetAuth.md) val | [TCPAuth](net-TCPAuth.md) val | 
    [TCPConnectAuth](net-TCPConnectAuth.md) val)
*   sslctx: ([SSLContext](net_ssl-SSLContext.md) val | [None](builtin-None.md) val) = reference
*   pipeline: [Bool](builtin-Bool.md) val = true
*   keepalive_timeout_secs: [U32](builtin-U32.md) val = 0

#### Returns

* [HTTPClient](http-HTTPClient.md) ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http/client.md#L44)</span>


Schedule a request on an HTTP session. If a new connection is created,
a new instance of the application's Receive Handler will be created
for it. A `val` copy of the `Payload` is returned, and it can not be
modified after this point.
This is useful in Stream and Chunked transfer modes, so that the
application can follow up with calls to `Client.send_body`.


```pony
fun ref apply(
  request: Payload trn,
  handlermaker: HandlerFactory val)
: Payload val ?
```
#### Parameters

*   request: [Payload](http-Payload.md) trn
*   handlermaker: [HandlerFactory](http-HandlerFactory.md) val

#### Returns

* [Payload](http-Payload.md) val ?

---

### dispose
<span class="source-link">[[Source]](src/http/client.md#L64)</span>


Disposes the sessions and cancels all pending requests.


```pony
fun ref dispose()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### send_body
<span class="source-link">[[Source]](src/http/client.md#L114)</span>


```pony
fun ref send_body(
  data: (String val | Array[U8 val] val),
  session: HTTPSession tag)
: None val
```
#### Parameters

*   data: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)
*   session: [HTTPSession](http-HTTPSession.md) tag

#### Returns

* [None](builtin-None.md) val

---

