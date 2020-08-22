# Regex
<span class="source-link">[[Source]](src/regex/regex.md#L51)</span>

A perl compatible regular expression. This uses the PCRE2 library, and
attempts to enable JIT matching whenever possible.


```pony
class ref Regex
```

## Constructors

### create
<span class="source-link">[[Source]](src/regex/regex.md#L59)</span>


Compile a regular expression. Raises an error for an invalid expression.


```pony
new ref create(
  from: (String box | Array[U8 val] box),
  jit: Bool val = true)
: Regex ref^ ?
```
#### Parameters

*   from: ([String](builtin-String.md) box | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)
*   jit: [Bool](builtin-Bool.md) val = true

#### Returns

* [Regex](regex-Regex.md) ref^ ?

---

## Public Functions

### matches
<span class="source-link">[[Source]](src/regex/regex.md#L77)</span>


Creates a match iterator from the regular expression that will iterate
over the supplied subject returning matches.


```pony
fun box matches(
  subject: String val)
: MatchIterator ref
```
#### Parameters

*   subject: [String](builtin-String.md) val

#### Returns

* [MatchIterator](regex-MatchIterator.md) ref

---

### eq
<span class="source-link">[[Source]](src/regex/regex.md#L84)</span>


Return true on a successful match, false otherwise.


```pony
fun box eq(
  subject: (String box | Array[U8 val] box))
: Bool val
```
#### Parameters

*   subject: ([String](builtin-String.md) box | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/regex/regex.md#L96)</span>


Return false on a successful match, true otherwise.


```pony
fun box ne(
  subject: (String box | Array[U8 val] box))
: Bool val
```
#### Parameters

*   subject: ([String](builtin-String.md) box | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)

#### Returns

* [Bool](builtin-Bool.md) val

---

### apply
<span class="source-link">[[Source]](src/regex/regex.md#L102)</span>


Match the supplied string, starting at the given offset. Returns a Match
object that can give precise match details. Raises an error if there is no
match.


```pony
fun box apply(
  subject: (String val | Array[U8 val] val),
  offset: USize val = 0)
: Match ref^ ?
```
#### Parameters

*   subject: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)
*   offset: [USize](builtin-USize.md) val = 0

#### Returns

* [Match](regex-Match.md) ref^ ?

---

### replace\[optional A: ([Seq](builtin-Seq.md)\[[U8](builtin-U8.md) val\] iso & ([String](builtin-String.md) iso | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] iso))\]
<span class="source-link">[[Source]](src/regex/regex.md#L111)</span>


Perform a match on the subject, starting at the given offset, and create
a new string using the value as a replacement for what was matched. Raise
an error if there is no match.


```pony
fun box replace[optional A: (Seq[U8 val] iso & (String iso | Array[U8 val] iso))](
  subject: (String val | Array[U8 val] val),
  value: (String box | Array[U8 val] box),
  offset: USize val = 0,
  global: Bool val = false)
: A^ ?
```
#### Parameters

*   subject: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)
*   value: ([String](builtin-String.md) box | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] box)
*   offset: [USize](builtin-USize.md) val = 0
*   global: [Bool](builtin-Bool.md) val = false

#### Returns

* A^ ?

---

### split
<span class="source-link">[[Source]](src/regex/regex.md#L159)</span>


Split subject by non-empty occurrences of this pattern, returning a list
of the substrings.


```pony
fun box split(
  subject: String val,
  offset: USize val = 0)
: Array[String val] iso^ ?
```
#### Parameters

*   subject: [String](builtin-String.md) val
*   offset: [USize](builtin-USize.md) val = 0

#### Returns

* [Array](builtin-Array.md)\[[String](builtin-String.md) val\] iso^ ?

---

### index
<span class="source-link">[[Source]](src/regex/regex.md#L185)</span>


Returns the index of a named capture. Raises an error if the named capture
does not exist.


```pony
fun box index(
  name: String box)
: USize val ?
```
#### Parameters

*   name: [String](builtin-String.md) box

#### Returns

* [USize](builtin-USize.md) val ?

---

### dispose
<span class="source-link">[[Source]](src/regex/regex.md#L199)</span>


Free the underlying PCRE2 data.


```pony
fun ref dispose()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

