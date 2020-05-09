# ParseReturn
<span class="source-link">[[Source]](src/server/request_parser.md#L33)</span>

what is returned from `HTTP11RequestParser.parse(...)`

```pony
type ParseReturn is
  (NeedMore val | ((TooLarge val | UnknownMethod val | InvalidURI val | InvalidVersion val | InvalidContentLength val | InvalidTransferCoding val | InvalidChunk val) & _RequestParseError val) | None val)
```

#### Type Alias For

* ([NeedMore](server-NeedMore.md) val | (([TooLarge](server-TooLarge.md) val | [UnknownMethod](server-UnknownMethod.md) val | [InvalidURI](server-InvalidURI.md) val | [InvalidVersion](server-InvalidVersion.md) val | [InvalidContentLength](server-InvalidContentLength.md) val | [InvalidTransferCoding](server-InvalidTransferCoding.md) val | [InvalidChunk](server-InvalidChunk.md) val) & _RequestParseError val) | [None](builtin-None.md) val)

---

