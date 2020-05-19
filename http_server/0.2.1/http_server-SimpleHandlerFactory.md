# SimpleHandlerFactory\[T: [HandlerWithoutContext](http_server-HandlerWithoutContext.md)\]
<span class="source-link">[[Source]](src/http_server/handler.md#L183)</span>

HandlerFactory for a HandlerWithoutContext.

Just create it like:

```pony
let server =
  Server(
    ...,
    SimpleHandlerFactory[MySimpleHandler],
    ...
  )
```



```pony
primitive val SimpleHandlerFactory[T: HandlerWithoutContext]
```

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/handler.md#L183)</span>


```pony
new val create()
: SimpleHandlerFactory[T] val^
```

#### Returns

* [SimpleHandlerFactory](http_server-SimpleHandlerFactory.md)\[T\] val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/handler.md#L199)</span>


```pony
fun box apply(
  session: Session tag)
: Handler ref^
```
#### Parameters

*   session: [Session](http_server-Session.md) tag

#### Returns

* [Handler](http_server-Handler.md) ref^

---

### eq
<span class="source-link">[[Source]](src/http_server/handler.md#L199)</span>


```pony
fun box eq(
  that: SimpleHandlerFactory[T] val)
: Bool val
```
#### Parameters

*   that: [SimpleHandlerFactory](http_server-SimpleHandlerFactory.md)\[T\] val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/handler.md#L199)</span>


```pony
fun box ne(
  that: SimpleHandlerFactory[T] val)
: Bool val
```
#### Parameters

*   that: [SimpleHandlerFactory](http_server-SimpleHandlerFactory.md)\[T\] val

#### Returns

* [Bool](builtin-Bool.md) val

---

