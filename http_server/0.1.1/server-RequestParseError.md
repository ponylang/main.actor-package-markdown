# RequestParseError
<span class="source-link">[[Source]](src/server/request_parser.md#L28)</span>
```pony
type RequestParseError is
  ((TooLarge val | UnknownMethod val | InvalidURI val | InvalidVersion val | InvalidContentLength val | InvalidTransferCoding val | InvalidChunk val) & _RequestParseError val)
```

#### Type Alias For

* (([TooLarge](server-TooLarge.md) val | [UnknownMethod](server-UnknownMethod.md) val | [InvalidURI](server-InvalidURI.md) val | [InvalidVersion](server-InvalidVersion.md) val | [InvalidContentLength](server-InvalidContentLength.md) val | [InvalidTransferCoding](server-InvalidTransferCoding.md) val | [InvalidChunk](server-InvalidChunk.md) val) & _RequestParseError val)

---

