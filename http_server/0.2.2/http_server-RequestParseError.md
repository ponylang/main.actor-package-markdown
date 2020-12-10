# RequestParseError
<span class="source-link">[[Source]](src/http_server/request_parser.md#L28)</span>
```pony
type RequestParseError is
  ((TooLarge val | UnknownMethod val | InvalidURI val | InvalidVersion val | InvalidContentLength val | InvalidTransferCoding val | InvalidChunk val) & _RequestParseError val)
```

#### Type Alias For

* (([TooLarge](http_server-TooLarge.md) val | [UnknownMethod](http_server-UnknownMethod.md) val | [InvalidURI](http_server-InvalidURI.md) val | [InvalidVersion](http_server-InvalidVersion.md) val | [InvalidContentLength](http_server-InvalidContentLength.md) val | [InvalidTransferCoding](http_server-InvalidTransferCoding.md) val | [InvalidChunk](http_server-InvalidChunk.md) val) & _RequestParseError val)

---

