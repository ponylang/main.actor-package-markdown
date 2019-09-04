# AuthFailed
<span class="source-link">[[Source]](src/http/http_handler.md#L26)</span>

HTTP failure reason for when SSL Authentication failed.

This failure reason is only reported to HTTP client HTTPHandler instances.


```pony
primitive val AuthFailed
```

## Constructors

### create
<span class="source-link">[[Source]](src/http/http_handler.md#L26)</span>


```pony
new val create()
: AuthFailed val^
```

#### Returns

* [AuthFailed](http-AuthFailed.md) val^

---

## Public Functions

### eq
<span class="source-link">[[Source]](src/http/http_handler.md#L33)</span>


```pony
fun box eq(
  that: AuthFailed val)
: Bool val
```
#### Parameters

*   that: [AuthFailed](http-AuthFailed.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http/http_handler.md#L33)</span>


```pony
fun box ne(
  that: AuthFailed val)
: Bool val
```
#### Parameters

*   that: [AuthFailed](http-AuthFailed.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

