# ConnectionClosed
<span class="source-link">[[Source]](src/http/http_handler.md#L33)</span>

HTTP failure reason for when the connection was closed
either from the other side (detectable when using TCP keepalive)
or locally (e.g. due to an error).


```pony
primitive val ConnectionClosed
```

## Constructors

### create
<span class="source-link">[[Source]](src/http/http_handler.md#L33)</span>


```pony
new val create()
: ConnectionClosed val^
```

#### Returns

* [ConnectionClosed](http-ConnectionClosed.md) val^

---

## Public Functions

### eq
<span class="source-link">[[Source]](src/http/http_handler.md#L39)</span>


```pony
fun box eq(
  that: ConnectionClosed val)
: Bool val
```
#### Parameters

*   that: [ConnectionClosed](http-ConnectionClosed.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http/http_handler.md#L39)</span>


```pony
fun box ne(
  that: ConnectionClosed val)
: Bool val
```
#### Parameters

*   that: [ConnectionClosed](http-ConnectionClosed.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

