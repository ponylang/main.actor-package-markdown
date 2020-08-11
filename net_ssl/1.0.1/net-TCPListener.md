# TCPListener
<span class="source-link">[[Source]](src/net/tcp_listener.md#L3)</span>

Listens for new network connections.

The following program creates an echo server that listens for
connections on port 8989 and echoes back any data it receives.

```pony
use "net"

class MyTCPConnectionNotify is TCPConnectionNotify
  fun ref received(
    conn: TCPConnection ref,
    data: Array[U8] iso,
    times: USize)
    : Bool
  =>
    conn.write(String.from_array(consume data))
    true

  fun ref connect_failed(conn: TCPConnection ref) =>
    None

class MyTCPListenNotify is TCPListenNotify
  fun ref connected(listen: TCPListener ref): TCPConnectionNotify iso^ =>
    MyTCPConnectionNotify

  fun ref not_listening(listen: TCPListener ref) =>
    None

actor Main
  new create(env: Env) =>
    try
      TCPListener(env.root as AmbientAuth,
        recover MyTCPListenNotify end, "", "8989")
    end
```


```pony
actor tag TCPListener
```

## Constructors

### create
<span class="source-link">[[Source]](src/net/tcp_listener.md#L52)</span>


Listens for both IPv4 and IPv6 connections.


```pony
new tag create(
  auth: (AmbientAuth val | NetAuth val | TCPAuth val | 
    TCPListenAuth val),
  notify: TCPListenNotify iso,
  host: String val = "",
  service: String val = "0",
  limit: USize val = 0,
  read_buffer_size: USize val = 16384,
  yield_after_reading: USize val = 16384,
  yield_after_writing: USize val = 16384)
: TCPListener tag^
```
#### Parameters

*   auth: ([AmbientAuth](builtin-AmbientAuth.md) val | [NetAuth](net-NetAuth.md) val | [TCPAuth](net-TCPAuth.md) val | 
    [TCPListenAuth](net-TCPListenAuth.md) val)
*   notify: [TCPListenNotify](net-TCPListenNotify.md) iso
*   host: [String](builtin-String.md) val = ""
*   service: [String](builtin-String.md) val = "0"
*   limit: [USize](builtin-USize.md) val = 0
*   read_buffer_size: [USize](builtin-USize.md) val = 16384
*   yield_after_reading: [USize](builtin-USize.md) val = 16384
*   yield_after_writing: [USize](builtin-USize.md) val = 16384

#### Returns

* [TCPListener](net-TCPListener.md) tag^

---

### ip4
<span class="source-link">[[Source]](src/net/tcp_listener.md#L76)</span>


Listens for IPv4 connections.


```pony
new tag ip4(
  auth: (AmbientAuth val | NetAuth val | TCPAuth val | 
    TCPListenAuth val),
  notify: TCPListenNotify iso,
  host: String val = "",
  service: String val = "0",
  limit: USize val = 0,
  read_buffer_size: USize val = 16384,
  yield_after_reading: USize val = 16384,
  yield_after_writing: USize val = 16384)
: TCPListener tag^
```
#### Parameters

*   auth: ([AmbientAuth](builtin-AmbientAuth.md) val | [NetAuth](net-NetAuth.md) val | [TCPAuth](net-TCPAuth.md) val | 
    [TCPListenAuth](net-TCPListenAuth.md) val)
*   notify: [TCPListenNotify](net-TCPListenNotify.md) iso
*   host: [String](builtin-String.md) val = ""
*   service: [String](builtin-String.md) val = "0"
*   limit: [USize](builtin-USize.md) val = 0
*   read_buffer_size: [USize](builtin-USize.md) val = 16384
*   yield_after_reading: [USize](builtin-USize.md) val = 16384
*   yield_after_writing: [USize](builtin-USize.md) val = 16384

#### Returns

* [TCPListener](net-TCPListener.md) tag^

---

### ip6
<span class="source-link">[[Source]](src/net/tcp_listener.md#L100)</span>


Listens for IPv6 connections.


```pony
new tag ip6(
  auth: (AmbientAuth val | NetAuth val | TCPAuth val | 
    TCPListenAuth val),
  notify: TCPListenNotify iso,
  host: String val = "",
  service: String val = "0",
  limit: USize val = 0,
  read_buffer_size: USize val = 16384,
  yield_after_reading: USize val = 16384,
  yield_after_writing: USize val = 16384)
: TCPListener tag^
```
#### Parameters

*   auth: ([AmbientAuth](builtin-AmbientAuth.md) val | [NetAuth](net-NetAuth.md) val | [TCPAuth](net-TCPAuth.md) val | 
    [TCPListenAuth](net-TCPListenAuth.md) val)
*   notify: [TCPListenNotify](net-TCPListenNotify.md) iso
*   host: [String](builtin-String.md) val = ""
*   service: [String](builtin-String.md) val = "0"
*   limit: [USize](builtin-USize.md) val = 0
*   read_buffer_size: [USize](builtin-USize.md) val = 16384
*   yield_after_reading: [USize](builtin-USize.md) val = 16384
*   yield_after_writing: [USize](builtin-USize.md) val = 16384

#### Returns

* [TCPListener](net-TCPListener.md) tag^

---

## Public Behaviours

### set_notify
<span class="source-link">[[Source]](src/net/tcp_listener.md#L124)</span>


Change the notifier.


```pony
be set_notify(
  notify: TCPListenNotify iso)
```
#### Parameters

*   notify: [TCPListenNotify](net-TCPListenNotify.md) iso

---

### dispose
<span class="source-link">[[Source]](src/net/tcp_listener.md#L130)</span>


Stop listening.


```pony
be dispose()
```

---

## Public Functions

### local_address
<span class="source-link">[[Source]](src/net/tcp_listener.md#L136)</span>


Return the bound IP address.


```pony
fun box local_address()
: NetAddress val
```

#### Returns

* [NetAddress](net-NetAddress.md) val

---

### close
<span class="source-link">[[Source]](src/net/tcp_listener.md#L245)</span>


Dispose of resources.


```pony
fun ref close()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

