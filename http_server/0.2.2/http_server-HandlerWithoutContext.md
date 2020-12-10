# HandlerWithoutContext
<span class="source-link">[[Source]](src/http_server/handler.md#L175)</span>

Simple [Handler](http-Handler.md) that can be constructed
with only a Session.


```pony
interface ref HandlerWithoutContext is
  Handler ref
```

#### Implements

* [Handler](http_server-Handler.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/handler.md#L180)</span>


```pony
new ref create(
  session: Session tag)
: HandlerWithoutContext ref^
```
#### Parameters

*   session: [Session](http_server-Session.md) tag

#### Returns

* [HandlerWithoutContext](http_server-HandlerWithoutContext.md) ref^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/handler.md#L102)</span>


```pony
fun ref apply(
  request: Request val,
  request_id: USize val)
: Any tag
```
#### Parameters

*   request: [Request](http_server-Request.md) val
*   request_id: [USize](builtin-USize.md) val

#### Returns

* [Any](builtin-Any.md) tag

---

### chunk
<span class="source-link">[[Source]](src/http_server/handler.md#L110)</span>


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
<span class="source-link">[[Source]](src/http_server/handler.md#L116)</span>


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
<span class="source-link">[[Source]](src/http_server/handler.md#L122)</span>


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
<span class="source-link">[[Source]](src/http_server/handler.md#L128)</span>


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
<span class="source-link">[[Source]](src/http_server/handler.md#L133)</span>


```pony
fun ref closed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### throttled
<span class="source-link">[[Source]](src/http_server/handler.md#L138)</span>


```pony
fun ref throttled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unthrottled
<span class="source-link">[[Source]](src/http_server/handler.md#L143)</span>


```pony
fun ref unthrottled()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

