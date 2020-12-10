# ASCIIAllWithNUL
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L42)</span>

represents all ASCII characters
including the NUL (\x00) character for its special treatment in C strings


```pony
primitive val ASCIIAllWithNUL
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L42)</span>


```pony
new val create()
: ASCIIAllWithNUL val^
```

#### Returns

* [ASCIIAllWithNUL](ponycheck-ASCIIAllWithNUL.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L47)</span>


```pony
fun box apply()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L47)</span>


```pony
fun box eq(
  that: ASCIIAllWithNUL val)
: Bool val
```
#### Parameters

*   that: [ASCIIAllWithNUL](ponycheck-ASCIIAllWithNUL.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L47)</span>


```pony
fun box ne(
  that: ASCIIAllWithNUL val)
: Bool val
```
#### Parameters

*   that: [ASCIIAllWithNUL](ponycheck-ASCIIAllWithNUL.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

