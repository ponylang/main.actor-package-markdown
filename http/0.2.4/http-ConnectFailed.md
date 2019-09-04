# ConnectFailed
<span class="source-link">[[Source]](src/http/http_handler.md#L39)</span>

HTTP failure reason for when a connection could not be established.

This failure reason is only valid for HTTP client HTTPHandlers.


```pony
primitive val ConnectFailed
```

## Constructors

### create
<span class="source-link">[[Source]](src/http/http_handler.md#L39)</span>


```pony
new val create()
: ConnectFailed val^
```

#### Returns

* [ConnectFailed](http-ConnectFailed.md) val^

---

## Public Functions

### eq
<span class="source-link">[[Source]](src/http/http_handler.md#L46)</span>


```pony
fun box eq(
  that: ConnectFailed val)
: Bool val
```
#### Parameters

*   that: [ConnectFailed](http-ConnectFailed.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http/http_handler.md#L46)</span>


```pony
fun box ne(
  that: ConnectFailed val)
: Bool val
```
#### Parameters

*   that: [ConnectFailed](http-ConnectFailed.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

