# HTTPParser
<span class="source-link">[[Source]](src/http/http_parser.md#L34)</span>

This is the HTTP parser that builds a message `Payload` object
representing either a Request or a Response from received chunks of data.


```pony
class ref HTTPParser
```

## Constructors

### request
<span class="source-link">[[Source]](src/http/http_parser.md#L48)</span>


Expect HTTP requests to arrive on a session.


```pony
new ref request(
  session': HTTPSession tag)
: HTTPParser ref^
```
#### Parameters

*   session': [HTTPSession](http-HTTPSession.md) tag

#### Returns

* [HTTPParser](http-HTTPParser.md) ref^

---

### response
<span class="source-link">[[Source]](src/http/http_parser.md#L60)</span>


Expect HTTP responses to arrive on a session.


```pony
new ref response(
  session': HTTPSession tag)
: HTTPParser ref^
```
#### Parameters

*   session': [HTTPSession](http-HTTPSession.md) tag

#### Returns

* [HTTPParser](http-HTTPParser.md) ref^

---

## Public Functions

### parse
<span class="source-link">[[Source]](src/http/http_parser.md#L72)</span>


Analyze new data based on the parser's current internal state.


```pony
fun ref parse(
  buffer: Reader ref)
: (ParseError val | None val)
```
#### Parameters

*   buffer: [Reader](buffered-Reader.md) ref

#### Returns

* ([ParseError](http-ParseError.md) val | [None](builtin-None.md) val)

---

### restart
<span class="source-link">[[Source]](src/http/http_parser.md#L115)</span>


Restart parser state for the next message. It will be of the same
kind as the last one.


```pony
fun ref restart()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### closed
<span class="source-link">[[Source]](src/http/http_parser.md#L130)</span>


The connection has closed, which may signal that all remaining data is the
payload body.


```pony
fun ref closed(
  buffer: Reader ref)
: None val
```
#### Parameters

*   buffer: [Reader](buffered-Reader.md) ref

#### Returns

* [None](builtin-None.md) val

---

