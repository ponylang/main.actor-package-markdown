# Status
<span class="source-link">[[Source]](src/http_server/status.md#L1)</span>

HTTP status code.

See: https://tools.ietf.org/html/rfc2616#section-10


```pony
interface val Status
```

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/status.md#L7)</span>


Get the status code as number.


```pony
fun box apply()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/status.md#L11)</span>


Get the status code as string including Status-Code and Reason-Phrase
as it usually appears in the response status line: https://tools.ietf.org/html/rfc2616#section-6.1


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

