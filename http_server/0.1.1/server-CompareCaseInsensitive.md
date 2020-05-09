# CompareCaseInsensitive
<span class="source-link">[[Source]](src/server/request_parser.md#L498)</span>
```pony
primitive val CompareCaseInsensitive
```

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L498)</span>


```pony
new val create()
: CompareCaseInsensitive val^
```

#### Returns

* [CompareCaseInsensitive](server-CompareCaseInsensitive.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/server/request_parser.md#L506)</span>


Returns true if both strings compare equal
when compared case insensitively


```pony
fun box apply(
  left: String val,
  right: String val)
: Bool val
```
#### Parameters

*   left: [String](builtin-String.md) val
*   right: [String](builtin-String.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L499)</span>


```pony
fun box eq(
  that: CompareCaseInsensitive val)
: Bool val
```
#### Parameters

*   that: [CompareCaseInsensitive](server-CompareCaseInsensitive.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L499)</span>


```pony
fun box ne(
  that: CompareCaseInsensitive val)
: Bool val
```
#### Parameters

*   that: [CompareCaseInsensitive](server-CompareCaseInsensitive.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

