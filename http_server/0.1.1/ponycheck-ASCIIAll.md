# ASCIIAll
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L34)</span>

represents all ASCII characters
excluding the NUL (\x00) character for its special treatment in C strings


```pony
primitive val ASCIIAll
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L34)</span>


```pony
new val create()
: ASCIIAll val^
```

#### Returns

* [ASCIIAll](ponycheck-ASCIIAll.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L39)</span>


```pony
fun box apply()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L39)</span>


```pony
fun box eq(
  that: ASCIIAll val)
: Bool val
```
#### Parameters

*   that: [ASCIIAll](ponycheck-ASCIIAll.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/ponycheck/ascii_range.md#L39)</span>


```pony
fun box ne(
  that: ASCIIAll val)
: Bool val
```
#### Parameters

*   that: [ASCIIAll](ponycheck-ASCIIAll.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

