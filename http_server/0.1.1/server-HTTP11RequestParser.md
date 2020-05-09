# HTTP11RequestParser
<span class="source-link">[[Source]](src/server/request_parser.md#L70)</span>
```pony
class ref HTTP11RequestParser
```

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L86)</span>


```pony
new ref create(
  handler: HTTP11RequestHandler tag)
: HTTP11RequestParser ref^
```
#### Parameters

*   handler: [HTTP11RequestHandler](server-HTTP11RequestHandler.md) tag

#### Returns

* [HTTP11RequestParser](server-HTTP11RequestParser.md) ref^

---

## Public Functions

### parse
<span class="source-link">[[Source]](src/server/request_parser.md#L89)</span>


```pony
fun ref parse(
  data: Array[U8 val] val)
: (NeedMore val | ((TooLarge val | UnknownMethod val | InvalidURI val | 
    InvalidVersion val | InvalidContentLength val | InvalidTransferCoding val | 
    InvalidChunk val) & _RequestParseError val) | None val)
```
#### Parameters

*   data: [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

#### Returns

* ([NeedMore](server-NeedMore.md) val | (([TooLarge](server-TooLarge.md) val | [UnknownMethod](server-UnknownMethod.md) val | [InvalidURI](server-InvalidURI.md) val | 
    [InvalidVersion](server-InvalidVersion.md) val | [InvalidContentLength](server-InvalidContentLength.md) val | [InvalidTransferCoding](server-InvalidTransferCoding.md) val | 
    [InvalidChunk](server-InvalidChunk.md) val) & _RequestParseError val) | [None](builtin-None.md) val)

---

### reset
<span class="source-link">[[Source]](src/server/request_parser.md#L468)</span>


```pony
fun ref reset(
  drop_data: Bool val = false,
  reset_request: Bool val = false)
: None val
```
#### Parameters

*   drop_data: [Bool](builtin-Bool.md) val = false
*   reset_request: [Bool](builtin-Bool.md) val = false

#### Returns

* [None](builtin-None.md) val

---

