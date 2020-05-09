# SyncHandler
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L4)</span>

Use this handler, when you want to handle your requests without accessing other actors.


```pony
interface ref SyncHandler
```

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L8)</span>


```pony
fun ref apply(
  request: Request val,
  body: (ByteArrays val | None val))
: ByteSeqIter val ?
```
#### Parameters

*   request: [Request](http_server-Request.md) val
*   body: ([ByteArrays](valbytes-ByteArrays.md) val | [None](builtin-None.md) val)

#### Returns

* [ByteSeqIter](builtin-ByteSeqIter.md) val ?

---

### error_response
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L10)</span>


```pony
fun box error_response(
  request: Request val)
: (ByteSeqIter val | None val)
```
#### Parameters

*   request: [Request](http_server-Request.md) val

#### Returns

* ([ByteSeqIter](builtin-ByteSeqIter.md) val | [None](builtin-None.md) val)

---

