# Server
<span class="source-link">[[Source]](src/http_server/server.md#L11)</span>

Runs an HTTP server.

### Server operation

Information flow into the Server is as follows:

1. `Server` listens for incoming TCP connections.

2. `_ServerConnHandler` is the notification class for new connections. It creates
a `_ServerConnection` actor and receives all the raw data from TCP. It uses
the `HTTP11RequestParser` to assemble complete `Request` objects which are passed off
to the `_ServerConnection`.

3. The `_ServerConnection` actor deals with requests and their bodies
that have been parsed by the `HTTP11RequestParser`. This is where requests get
dispatched to the caller-provided Handler.


```pony
actor tag Server is
  _SessionRegistry tag
```

#### Implements

* _SessionRegistry tag

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/server.md#L40)</span>


Create a server bound to the given host and service. To do this we
listen for incoming TCP connections, with a notification handler
that will create a server session actor for each one.


```pony
new tag create(
  auth: (AmbientAuth val | NetAuth val | TCPAuth val | 
    TCPListenAuth val),
  notify: ServerNotify iso,
  handler: HandlerFactory val,
  config: ServerConfig val,
  sslctx: (SSLContext val | None val) = reference)
: Server tag^
```
#### Parameters

*   auth: ([AmbientAuth](builtin-AmbientAuth.md) val | [NetAuth](net-NetAuth.md) val | [TCPAuth](net-TCPAuth.md) val | 
    [TCPListenAuth](net-TCPListenAuth.md) val)
*   notify: [ServerNotify](http_server-ServerNotify.md) iso
*   handler: [HandlerFactory](http_server-HandlerFactory.md) val
*   config: [ServerConfig](http_server-ServerConfig.md) val
*   sslctx: ([SSLContext](net_ssl-SSLContext.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [Server](http_server-Server.md) tag^

---

## Public Behaviours

### register_session
<span class="source-link">[[Source]](src/http_server/server.md#L64)</span>


```pony
be register_session(
  conn: _ServerConnection tag)
```
#### Parameters

*   conn: _ServerConnection tag

---

### unregister_session
<span class="source-link">[[Source]](src/http_server/server.md#L93)</span>


```pony
be unregister_session(
  conn: _ServerConnection tag)
```
#### Parameters

*   conn: _ServerConnection tag

---

### set_handler
<span class="source-link">[[Source]](src/http_server/server.md#L96)</span>


Replace the request handler.


```pony
be set_handler(
  handler: HandlerFactory val)
```
#### Parameters

*   handler: [HandlerFactory](http_server-HandlerFactory.md) val

---

### dispose
<span class="source-link">[[Source]](src/http_server/server.md#L104)</span>


Shut down the server gracefully. To do this we have to eliminate
any source of further inputs. So we stop listening for new incoming
TCP connections, and close any that still exist.


```pony
be dispose()
```

---

## Public Functions

### local_address
<span class="source-link">[[Source]](src/http_server/server.md#L116)</span>


Returns the locally bound address.


```pony
fun box local_address()
: NetAddress val
```

#### Returns

* [NetAddress](net-NetAddress.md) val

---

