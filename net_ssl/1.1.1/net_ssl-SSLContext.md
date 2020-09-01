# SSLContext
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L50)</span>

An SSL context is used to create SSL sessions.


```pony
class val SSLContext
```

## Constructors

### create
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L58)</span>


Create an SSL context.


```pony
new ref create()
: SSLContext ref^
```

#### Returns

* [SSLContext](net_ssl-SSLContext.md) ref^

---

## Public Functions

### client
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L100)</span>


Create a client-side SSL session. If a hostname is supplied, the server
side certificate must be valid for that hostname.


```pony
fun box client(
  hostname: String val = "")
: SSL iso^ ?
```
#### Parameters

*   hostname: [String](builtin-String.md) val = ""

#### Returns

* [SSL](net_ssl-SSL.md) iso^ ?

---

### server
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L109)</span>


Create a server-side SSL session.


```pony
fun box server()
: SSL iso^ ?
```

#### Returns

* [SSL](net_ssl-SSL.md) iso^ ?

---

### set_cert
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L117)</span>


The cert file is a PEM certificate chain. The key file is a private key.
Servers must set this. For clients, it is optional.


```pony
fun ref set_cert(
  cert: FilePath val,
  key: FilePath val)
: None val ?
```
#### Parameters

*   cert: [FilePath](files-FilePath.md) val
*   key: [FilePath](files-FilePath.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### set_authority
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L135)</span>


Use a PEM file and/or a directory of PEM files to specify certificate
authorities. Clients must set this. For servers, it is optional. Use None
to indicate no file or no path. Raises an error if these verify locations
aren't valid.

If both `file` and `path` are `None`, on Windows this method loads the
system root certificates. On Posix it raises an error.


```pony
fun ref set_authority(
  file: (FilePath val | None val),
  path: (FilePath val | None val) = reference)
: None val ?
```
#### Parameters

*   file: ([FilePath](files-FilePath.md) val | [None](builtin-None.md) val)
*   path: ([FilePath](files-FilePath.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [None](builtin-None.md) val ?

---

### set_ciphers
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L210)</span>


Set the accepted ciphers. This replaces the existing list. Raises an error
if the cipher list is invalid.


```pony
fun ref set_ciphers(
  ciphers: String val)
: None val ?
```
#### Parameters

*   ciphers: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### set_client_verify
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L222)</span>


Set to true to require verification. Defaults to true.


```pony
fun ref set_client_verify(
  state: Bool val)
: None val
```
#### Parameters

*   state: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_server_verify
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L228)</span>


Set to true to require verification. Defaults to false.


```pony
fun ref set_server_verify(
  state: Bool val)
: None val
```
#### Parameters

*   state: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_verify_depth
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L234)</span>


Set the verify depth. Defaults to 6.


```pony
fun ref set_verify_depth(
  depth: U32 val)
: None val
```
#### Parameters

*   depth: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_proto_version
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L242)</span>


Set minimum protocol version. Set to SslAutoVersion, 0,
to automatically manage lowest version.

Supported versions: Ssl3Version, Tls1Version, Tls1u1Version,
                    Tls1u2Version, Tls1u3Version, Dtls1Version,
                    Dtls1u2Version


```pony
fun ref set_min_proto_version(
  version: ULong val)
: None val ?
```
#### Parameters

*   version: [ULong](builtin-ULong.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### get_min_proto_version
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L257)</span>


Get minimum protocol version. Returns SslAutoVersion, 0,
when automatically managing lowest version.

Supported versions: Ssl3Version, Tls1Version, Tls1u1Version,
                    Tls1u2Version, Tls1u3Version, Dtls1Version,
                    Dtls1u2Version


```pony
fun ref get_min_proto_version()
: ILong val
```

#### Returns

* [ILong](builtin-ILong.md) val

---

### set_max_proto_version
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L268)</span>


Set maximum protocol version. Set to SslAutoVersion, 0,
to automatically manage higest version.

Supported versions: Ssl3Version, Tls1Version, Tls1u1Version,
                    Tls1u2Version, Tls1u3Version, Dtls1Version,
                    Dtls1u2Version


```pony
fun ref set_max_proto_version(
  version: ULong val)
: None val ?
```
#### Parameters

*   version: [ULong](builtin-ULong.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### get_max_proto_version
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L283)</span>


Get maximum protocol version. Returns SslAutoVersion, 0,
when automatically managing highest version.

Supported versions: Ssl3Version, Tls1Version, Tls1u1Version,
                    Tls1u2Version, Tls1u3Version, Dtls1Version,
                    Dtls1u2Version


```pony
fun ref get_max_proto_version()
: ILong val
```

#### Returns

* [ILong](builtin-ILong.md) val

---

### alpn_set_resolver
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L294)</span>


Use `resolver` to choose the protocol to be selected for incomming connections.

Returns true on success
Requires OpenSSL >= 1.0.2


```pony
fun ref alpn_set_resolver(
  resolver: ALPNProtocolResolver box)
: Bool val
```
#### Parameters

*   resolver: [ALPNProtocolResolver](net_ssl-ALPNProtocolResolver.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### alpn_set_client_protocols
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L311)</span>


Configures the SSLContext to advertise the protocol names defined in `protocols` when connecting to a server
protocol names must have a size of 1 to 255

Returns true on success
Requires OpenSSL >= 1.0.2


```pony
fun ref alpn_set_client_protocols(
  protocols: Array[String val] box)
: Bool val
```
#### Parameters

*   protocols: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### allow_tls_v1
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L367)</span>


Allow TLS v1. Defaults to false.
Deprecated: use set_min_proto_version and set_max_proto_version


```pony
fun ref allow_tls_v1(
  state: Bool val)
: None val
```
#### Parameters

*   state: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### allow_tls_v1_1
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L380)</span>


Allow TLS v1.1. Defaults to false.
Deprecated: use set_min_proto_version and set_max_proto_version


```pony
fun ref allow_tls_v1_1(
  state: Bool val)
: None val
```
#### Parameters

*   state: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### allow_tls_v1_2
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L393)</span>


Allow TLS v1.2. Defaults to true.
Deprecated: use set_min_proto_version and set_max_proto_version


```pony
fun ref allow_tls_v1_2(
  state: Bool val)
: None val
```
#### Parameters

*   state: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### dispose
<span class="source-link">[[Source]](src/net_ssl/ssl_context.md#L406)</span>


Free the SSL context.


```pony
fun ref dispose()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

