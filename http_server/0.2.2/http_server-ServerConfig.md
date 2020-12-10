# ServerConfig
<span class="source-link">[[Source]](src/http_server/server_config.md#L4)</span>
```pony
class val ServerConfig
```

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/server_config.md#L60)</span>


```pony
new val create(
  host': String val = "localhost",
  port': String val = "0",
  connection_timeout': USize val = 0,
  max_request_handling_lag': USize val = 100,
  max_concurrent_connections': USize val = 0,
  timeout_heartbeat_interval': (U64 val | None val) = reference)
: ServerConfig val^
```
#### Parameters

*   host': [String](builtin-String.md) val = "localhost"
*   port': [String](builtin-String.md) val = "0"
*   connection_timeout': [USize](builtin-USize.md) val = 0
*   max_request_handling_lag': [USize](builtin-USize.md) val = 100
*   max_concurrent_connections': [USize](builtin-USize.md) val = 0
*   timeout_heartbeat_interval': ([U64](builtin-U64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [ServerConfig](http_server-ServerConfig.md) val^

---

## Public fields

### let host: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http_server/server_config.md#L6)</span>

Hostname or IP to start listening on. E.g. `localhost` or `127.0.0.1`

A value of `"0.0.0.0"` will make the server listen on all available interfaces.

Default: `"localhost"`




---

### let port: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http_server/server_config.md#L15)</span>

Numeric port (e.g. `"80"`) or service name (e.g. `"http"`)
defining the port number to start listening on.

Chosing `"0"` will let the server start on a random port, chosen by the OS.

Default: `"0"`




---

### let connection_timeout: [USize](builtin-USize.md) val
<span class="source-link">[[Source]](src/http_server/server_config.md#L25)</span>

Timeout in seconds after which a connection will be closed.

Using `0` will make the connection never time out.

Default: `0`




---

### let max_request_handling_lag: [USize](builtin-USize.md) val
<span class="source-link">[[Source]](src/http_server/server_config.md#L34)</span>

Maximum number of requests that will be kept without a response generated
before the connection is muted.

Default: `100`




---

### let max_concurrent_connections: [USize](builtin-USize.md) val
<span class="source-link">[[Source]](src/http_server/server_config.md#L42)</span>

maximum number of concurrent TCP connections.
Set to `0` to accept unlimited concurrent connections.

Default: `0`




---

### let timeout_heartbeat_interval: [U64](builtin-U64.md) val
<span class="source-link">[[Source]](src/http_server/server_config.md#L50)</span>

Interval between heartbeat calls to all tcp connection
in milliseconds
the server keeps track of for them in order to determine
if they should time out.

Default: `(<connection_timeout> * 1000) / 4`




---

## Public Functions

### has_timeout
<span class="source-link">[[Source]](src/http_server/server_config.md#L83)</span>


```pony
fun box has_timeout()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### to_json
<span class="source-link">[[Source]](src/http_server/server_config.md#L86)</span>


```pony
fun box to_json()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

