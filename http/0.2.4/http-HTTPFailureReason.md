# HTTPFailureReason
<span class="source-link">[[Source]](src/http/http_handler.md#L46)</span>

HTTP failure reason reported to `HTTPHandler.failed()`.


```pony
type HTTPFailureReason is
  (AuthFailed val | ConnectionClosed val | ConnectFailed val)
```

#### Type Alias For

* ([AuthFailed](http-AuthFailed.md) val | [ConnectionClosed](http-ConnectionClosed.md) val | [ConnectFailed](http-ConnectFailed.md) val)

---

