# ALPNProtocolResolver
<span class="source-link">[[Source]](src/net_ssl/alpn.md#L13)</span>

Controls the protocol name to be chosen for incomming SSLConnections using the ALPN extension.


```pony
interface box ALPNProtocolResolver
```

## Public Functions

### resolve
<span class="source-link">[[Source]](src/net_ssl/alpn.md#L17)</span>


```pony
fun box resolve(
  advertised: Array[String val] val)
: (String val | ALPNNoAck val | ALPNWarning val | 
    ALPNFatal val)
```
#### Parameters

*   advertised: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val

#### Returns

* ([String](builtin-String.md) val | [ALPNNoAck](net_ssl-ALPNNoAck.md) val | [ALPNWarning](net_ssl-ALPNWarning.md) val | 
    [ALPNFatal](net_ssl-ALPNFatal.md) val)

---

