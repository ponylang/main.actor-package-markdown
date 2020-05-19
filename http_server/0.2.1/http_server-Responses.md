# Responses
<span class="source-link">[[Source]](src/http_server/response.md#L17)</span>

The entry-point into building Responses.


```pony
primitive val Responses
```

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/response.md#L17)</span>


```pony
new val create()
: Responses val^
```

#### Returns

* [Responses](http_server-Responses.md) val^

---

## Public Functions

### builder
<span class="source-link">[[Source]](src/http_server/response.md#L21)</span>


Official way to get a reusable [ResponseBuilder](http-ResponseBuilder.md)
to build your responses efficiently.


```pony
fun box builder(
  version: ((HTTP09 val | HTTP10 val | HTTP11 val) & _Version val) = reference)
: ResponseBuilder ref
```
#### Parameters

*   version: (([HTTP09](http_server-HTTP09.md) val | [HTTP10](http_server-HTTP10.md) val | [HTTP11](http_server-HTTP11.md) val) & _Version val) = reference

#### Returns

* [ResponseBuilder](http_server-ResponseBuilder.md) ref

---

### eq
<span class="source-link">[[Source]](src/http_server/response.md#L21)</span>


```pony
fun box eq(
  that: Responses val)
: Bool val
```
#### Parameters

*   that: [Responses](http_server-Responses.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http_server/response.md#L21)</span>


```pony
fun box ne(
  that: Responses val)
: Bool val
```
#### Parameters

*   that: [Responses](http_server-Responses.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

