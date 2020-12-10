# HandlerFactory
<span class="source-link">[[Source]](src/http_server/handler.md#L149)</span>

The TCP connections that underlie HTTP sessions get created within
the `http` package at times that the application code can not
predict. Yet, the application code has to provide custom hooks into
these connections as they are created. To accomplish this, the
application code provides an instance of a `class` that implements
this interface.

The `HandlerFactory.apply` method will be called when a new
`Session` is created, giving the application a chance to create
an instance of its own `Handler`. This happens on both
client and server ends.


```pony
interface ref HandlerFactory
```

## Public Functions

### apply
<span class="source-link">[[Source]](src/http_server/handler.md#L164)</span>


Called by the [Session](http-Session.md) when it needs a new instance of the
application's [Handler](http-Handler.md). It is suggested that the
`session` value be passed to the constructor for the new
[Handler](http-Handler.md), you will need it for sending stuff back.

This part must be implemented, as there might be more paramaters
that need to be passed for creating a Handler.


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

