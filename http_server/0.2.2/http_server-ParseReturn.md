# ParseReturn
<span class="source-link">[[Source]](src/http_server/request_parser.md#L33)</span>

what is returned from `HTTP11RequestParser.parse(...)`

```pony
type ParseReturn is
  (NeedMore val | ((TooLarge val | UnknownMethod val | InvalidURI val | InvalidVersion val | InvalidContentLength val | InvalidTransferCoding val | InvalidChunk val) & _RequestParseError val) | None val)
```

#### Type Alias For

* ([NeedMore](http_server-NeedMore.md) val | (([TooLarge](http_server-TooLarge.md) val | [UnknownMethod](http_server-UnknownMethod.md) val | [InvalidURI](http_server-InvalidURI.md) val | [InvalidVersion](http_server-InvalidVersion.md) val | [InvalidContentLength](http_server-InvalidContentLength.md) val | [InvalidTransferCoding](http_server-InvalidTransferCoding.md) val | [InvalidChunk](http_server-InvalidChunk.md) val) & _RequestParseError val) | [None](builtin-None.md) val)

---

