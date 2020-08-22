# Match
<span class="source-link">[[Source]](src/regex/match.md#L3)</span>

Contains match data for a combination of a regex and a subject.


```pony
class ref Match
```

## Public Functions

### size
<span class="source-link">[[Source]](src/regex/match.md#L19)</span>


Returns the capture size of the match.


```pony
fun box size()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### start_pos
<span class="source-link">[[Source]](src/regex/match.md#L25)</span>


Returns the character position of the first character in the match.


```pony
fun box start_pos()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### end_pos
<span class="source-link">[[Source]](src/regex/match.md#L31)</span>


Returns the character position of the last character in the match.


```pony
fun box end_pos()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply\[optional A: (([String](builtin-String.md) iso | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] iso) & [Seq](builtin-Seq.md)\[[U8](builtin-U8.md) val\] iso)\]
<span class="source-link">[[Source]](src/regex/match.md#L39)</span>


Returns a capture by number. Raises an error if the index is out of bounds.


```pony
fun box apply[optional A: ((String iso | Array[U8 val] iso) & Seq[U8 val] iso)](
  i: U32 val)
: A^ ?
```
#### Parameters

*   i: [U32](builtin-U32.md) val

#### Returns

* A^ ?

---

### find\[optional A: (([String](builtin-String.md) iso | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] iso) & [Seq](builtin-Seq.md)\[[U8](builtin-U8.md) val\] iso)\]
<span class="source-link">[[Source]](src/regex/match.md#L60)</span>


Returns a capture by name. Raises an error if the named capture does not
exist.


```pony
fun box find[optional A: ((String iso | Array[U8 val] iso) & Seq[U8 val] iso)](
  name: String box)
: A^ ?
```
#### Parameters

*   name: [String](builtin-String.md) box

#### Returns

* A^ ?

---

### groups
<span class="source-link">[[Source]](src/regex/match.md#L85)</span>


Returns all of the captured subgroups. Groups that failed to capture
anything will contain the empty string.


```pony
fun box groups()
: Array[String val] iso^
```

#### Returns

* [Array](builtin-Array.md)\[[String](builtin-String.md) val\] iso^

---

### dispose
<span class="source-link">[[Source]](src/regex/match.md#L103)</span>


Free the underlying PCRE2 data.


```pony
fun ref dispose()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

