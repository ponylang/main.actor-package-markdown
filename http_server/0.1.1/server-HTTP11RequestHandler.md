# HTTP11RequestHandler
<span class="source-link">[[Source]](src/server/request_parser.md#L54)</span>

Downstream actor that is notified of parse results,
be it a valid `Request` containing method, URL, headers and other metadata,
or a specific `RequestParseError`.


```pony
interface tag HTTP11RequestHandler
```

