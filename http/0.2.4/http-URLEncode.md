# URLEncode
<span class="source-link">[[Source]](src/http/url_encode.md#L18)</span>

Functions for checking, encoding, and decoding parts of URLs.


```pony
primitive val URLEncode
```

## Constructors

### create
<span class="source-link">[[Source]](src/http/url_encode.md#L18)</span>


```pony
new val create()
: URLEncode val^
```

#### Returns

* [URLEncode](http-URLEncode.md) val^

---

## Public Functions

### encode
<span class="source-link">[[Source]](src/http/url_encode.md#L23)</span>


URL encode and normilase the given string.
The percent_encoded parameter indicates how '%' characters should be
interpretted.
true => given string is already at least partially encoded, so '%'s
  indicate an encoded character.
false => given string is not yet encoded at all, so '%'s are just '%'s.
An error is raised on invalid existing encoding or illegal characters that
cannot be encoded.


```pony
fun box encode(
  from: String val,
  part: (URLPartUser val | URLPartPassword val | URLPartHost val | 
    URLPartPath val | URLPartQuery val | URLPartFragment val),
  percent_encoded: Bool val = true)
: String val ?
```
#### Parameters

*   from: [String](builtin-String.md) val
*   part: ([URLPartUser](http-URLPartUser.md) val | [URLPartPassword](http-URLPartPassword.md) val | [URLPartHost](http-URLPartHost.md) val | 
    [URLPartPath](http-URLPartPath.md) val | [URLPartQuery](http-URLPartQuery.md) val | [URLPartFragment](http-URLPartFragment.md) val)
*   percent_encoded: [Bool](builtin-Bool.md) val = true

#### Returns

* [String](builtin-String.md) val ?

---

### decode
<span class="source-link">[[Source]](src/http/url_encode.md#L70)</span>


URL decode a string. Raise an error on invalid URL encoded.


```pony
fun box decode(
  from: String val)
: String val ?
```
#### Parameters

*   from: [String](builtin-String.md) val

#### Returns

* [String](builtin-String.md) val ?

---

### check_scheme
<span class="source-link">[[Source]](src/http/url_encode.md#L96)</span>


Check that the given string is a valid scheme.


```pony
fun box check_scheme(
  scheme: String val)
: Bool val
```
#### Parameters

*   scheme: [String](builtin-String.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### check
<span class="source-link">[[Source]](src/http/url_encode.md#L123)</span>


Check that the given string is valid to be the given URL part without
further encoding. Canonical form is not checked for, merely validity.


```pony
fun box check(
  from: String val,
  part: (URLPartUser val | URLPartPassword val | URLPartHost val | 
    URLPartPath val | URLPartQuery val | URLPartFragment val))
: Bool val
```
#### Parameters

*   from: [String](builtin-String.md) val
*   part: ([URLPartUser](http-URLPartUser.md) val | [URLPartPassword](http-URLPartPassword.md) val | [URLPartHost](http-URLPartHost.md) val | 
    [URLPartPath](http-URLPartPath.md) val | [URLPartQuery](http-URLPartQuery.md) val | [URLPartFragment](http-URLPartFragment.md) val)

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/http/url_encode.md#L23)</span>


```pony
fun box eq(
  that: URLEncode val)
: Bool val
```
#### Parameters

*   that: [URLEncode](http-URLEncode.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/http/url_encode.md#L23)</span>


```pony
fun box ne(
  that: URLEncode val)
: Bool val
```
#### Parameters

*   that: [URLEncode](http-URLEncode.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

