# Method
<span class="source-link">[[Source]](src/http_server/method.md#L1)</span>

HTTP method

See: https://tools.ietf.org/html/rfc2616#section-5.1.1


```pony
interface val Method is
  Equatable[Method val] ref,
  Stringable box
```

#### Implements

* [Equatable](builtin-Equatable.md)\[[Method](http_server-Method.md) val\] ref
* [Stringable](builtin-Stringable.md) box

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/http_server/method.md#L7)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/http_server/method.md#L8)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/http_server/method.md#L9)</span>


```pony
fun box eq(
  o: Method val)
: Bool val
```
#### Parameters

*   o: [Method](http_server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne



```pony
fun box ne(
  that: Method val)
: Bool val
```
#### Parameters

*   that: [Method](http_server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

