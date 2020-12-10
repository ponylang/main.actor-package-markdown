# SyncHandlerWrapper
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L12)</span>
```pony
class ref SyncHandlerWrapper is
  Handler ref
```

#### Implements

* [Handler](http_server-Handler.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L21)</span>


```pony
new ref create(
  session: Session tag,
  handler: SyncHandler ref)
: SyncHandlerWrapper ref^
```
#### Parameters

*   session: [Session](http_server-Session.md) tag
*   handler: [SyncHandler](http_server-SyncHandler.md) ref

#### Returns

* [SyncHandlerWrapper](http_server-SyncHandlerWrapper.md) ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L25)</span>


```pony
fun ref apply(
  request: Request val,
  request_id: USize val)
: None val
```
#### Parameters

*   request: [Request](http_server-Request.md) val
*   request_id: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### chunk
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L57)</span>


```pony
fun ref chunk(
  data: (String val | Array[U8 val] val),
  request_id: USize val)
: None val
```
#### Parameters

*   data: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)
*   request_id: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### finished
<span class="source-link">[[Source]](src/http_server/sync_handler.md#L60)</span>


```pony
fun ref finished(
  request_id: USize val)
: None val
```
#### Parameters

*   request_id: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### cancelled



```pony
fun ref cancelled(
  request_id: USize val)
: None val
```
#### Parameters

*   request_id: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### failed



```pony
fun ref failed(
  reason: ((TooLarge val | UnknownMethod val | InvalidURI val | 
    InvalidVersion val | InvalidContentLength val | InvalidTransferCoding val | 
    InvalidChunk val) & _RequestParseError val),
  request_id: USize val)
: None val
```
#### Parameters

*   reason: (([TooLarge](http_server-TooLarge.md) val | [UnknownMethod](http_server-UnknownMethod.md) val | [InvalidURI](http_server-InvalidURI.md) val | 
    [InvalidVersion](http_server-InvalidVersion.md) val | [InvalidContentLength](http_server-InvalidContentLength.md) val | [InvalidTransferCoding](http_server-InvalidTransferCoding.md) val | 
    [InvalidChunk](http_server-InvalidChunk.md) val) & _RequestParseError val)
*   request_id: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### closed



```pony
fun ref closed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### throttled



```pony
fun ref throttled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unthrottled



```pony
fun ref unthrottled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

