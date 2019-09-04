# URL
<span class="source-link">[[Source]](src/http/url.md#L1)</span>

Holds the components of a URL. These are always stored as valid, URL-encoded
values.


```pony
class val URL
```

## Constructors

### create
<span class="source-link">[[Source]](src/http/url.md#L94)</span>


Create an empty URL.


```pony
new val create()
: URL val^
```

#### Returns

* [URL](http-URL.md) val^

---

### build
<span class="source-link">[[Source]](src/http/url.md#L100)</span>


Parse the URL string into its components. If it isn't URL encoded, encode
it. If existing URL encoding is invalid, raise an error.


```pony
new val build(
  from: String val,
  percent_encoded: Bool val = true)
: URL val^ ?
```
#### Parameters

*   from: [String](builtin-String.md) val
*   percent_encoded: [Bool](builtin-Bool.md) val = true

#### Returns

* [URL](http-URL.md) val^ ?

---

### valid
<span class="source-link">[[Source]](src/http/url.md#L115)</span>


Parse the URL string into its components. If it isn't URL encoded, raise an
error.


```pony
new val valid(
  from: String val)
: URL val^ ?
```
#### Parameters

*   from: [String](builtin-String.md) val

#### Returns

* [URL](http-URL.md) val^ ?

---

## Public fields

### var scheme: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L6)</span>

URL scheme.

If the given URL does not provide a scheme, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.1).




---

### var user: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L15)</span>

URL user as part of the URLs authority component:

```
authority = [ user [ ":" password ] "@" ] host [ ":" port ]
```

If the URL does not provide user information, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.2.1).




---

### var password: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L28)</span>

URL password as part of the URLs authority component:

```
authority = [ user [ ":" password ] "@" ] host [ ":" port ]
```

If the URL does not provide a password, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.2.1).




---

### var host: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L41)</span>

URL host as part of the URLs authority component:

```
authority = [ user [ ":" password ] "@" ] host [ ":" port ]
```

If the URL does not provide a host, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.2.2).




---

### var port: [U16](builtin-U16.md) val
<span class="source-link">[[Source]](src/http/url.md#L54)</span>

URL port as part of the URLs authority component:

```
authority = [ user [ ":" password ] "@" ] host [ ":" port ]
```

If the URL does not provide a port, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.2.3).




---

### var path: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L67)</span>

URL path component.

If the URL does not provide a path component, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.3).




---

### var query: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L76)</span>

URL query component.

If the URL does not provide a query component, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.4).




---

### var fragment: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/http/url.md#L85)</span>

Url fragment identifier component.

If the URL does not provide a fragment identifier component, this will be the empty string.

See also [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.5).




---

## Public Functions

### is_valid
<span class="source-link">[[Source]](src/http/url.md#L126)</span>


Return true if all elements are correctly URL encoded.


```pony
fun box is_valid()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### string
<span class="source-link">[[Source]](src/http/url.md#L138)</span>


Combine the components into a string.


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### join
<span class="source-link">[[Source]](src/http/url.md#L191)</span>


Using this as a base URL, concatenate with another, possibly relative, URL
in the same way a browser does for a link.


```pony
fun val join(
  that: URL val)
: URL val
```
#### Parameters

*   that: [URL](http-URL.md) val

#### Returns

* [URL](http-URL.md) val

---

### default_port
<span class="source-link">[[Source]](src/http/url.md#L199)</span>


Report the default port for our scheme.
Returns 0 for unrecognised schemes.


```pony
fun box default_port()
: U16 val
```

#### Returns

* [U16](builtin-U16.md) val

---

