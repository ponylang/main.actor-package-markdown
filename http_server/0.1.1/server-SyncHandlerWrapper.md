# SyncHandlerWrapper
<span class="source-link">[[Source]](src/server/sync_handler.md#L12)</span>
```pony
class ref SyncHandlerWrapper is
  Handler ref
```

#### Implements

* [Handler](server-Handler.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/sync_handler.md#L21)</span>


```pony
new ref create(
  session: Session tag,
  handler: SyncHandler ref)
: SyncHandlerWrapper ref^
```
#### Parameters

*   session: [Session](server-Session.md) tag
*   handler: [SyncHandler](server-SyncHandler.md) ref

#### Returns

* [SyncHandlerWrapper](server-SyncHandlerWrapper.md) ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/sync_handler.md#L25)</span>


```pony
fun ref apply(
  request: Request val,
  request_id: USize val)
: None val
```
#### Parameters

*   request: [Request](server-Request.md) val
*   request_id: [USize](builtin-USize.md) val

#### Returns

* [None](builtin-None.md) val

---

### chunk
<span class="source-link">[[Source]](src/server/sync_handler.md#L57)</span>


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
<span class="source-link">[[Source]](src/server/sync_handler.md#L60)</span>


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

*   reason: (([TooLarge](server-TooLarge.md) val | [UnknownMethod](server-UnknownMethod.md) val | [InvalidURI](server-InvalidURI.md) val | 
    [InvalidVersion](server-InvalidVersion.md) val | [InvalidContentLength](server-InvalidContentLength.md) val | [InvalidTransferCoding](server-InvalidTransferCoding.md) val | 
    [InvalidChunk](server-InvalidChunk.md) val) & _RequestParseError val)
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

