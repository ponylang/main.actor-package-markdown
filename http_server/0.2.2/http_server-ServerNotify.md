# ServerNotify
<span class="source-link">[[Source]](src/http_server/server_notify.md#L1)</span>

Notifications about the creation and closing of `TCPConnection`s
within HTTP servers.


```pony
interface ref ServerNotify
```

## Public Functions

### listening
<span class="source-link">[[Source]](src/http_server/server_notify.md#L6)</span>


Called when we are listening.


```pony
fun ref listening(
  server: Server ref)
: None val
```
#### Parameters

*   server: [Server](http_server-Server.md) ref

#### Returns

* [None](builtin-None.md) val

---

### not_listening
<span class="source-link">[[Source]](src/http_server/server_notify.md#L12)</span>


Called when we fail to listen.


```pony
fun ref not_listening(
  server: Server ref)
: None val
```
#### Parameters

*   server: [Server](http_server-Server.md) ref

#### Returns

* [None](builtin-None.md) val

---

### closed
<span class="source-link">[[Source]](src/http_server/server_notify.md#L18)</span>


Called when we stop listening.


```pony
fun ref closed(
  server: Server ref)
: None val
```
#### Parameters

*   server: [Server](http_server-Server.md) ref

#### Returns

* [None](builtin-None.md) val

---

