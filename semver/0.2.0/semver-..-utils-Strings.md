# Strings
<span class="source-link">[[Source]](src/semver-__-utils/strings.md#L3)</span>
```pony
primitive val Strings
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-utils/strings.md#L3)</span>


```pony
new val create()
: Strings val^
```

#### Returns

* [Strings](semver-..-utils-Strings.md) val^

---

## Public Functions

### contains_only
<span class="source-link">[[Source]](src/semver-__-utils/strings.md#L4)</span>


```pony
fun box contains_only(
  s: String val,
  bytes: HashSet[U8 val, HashEq[U8 val] val] ref)
: Bool val
```
#### Parameters

*   s: [String](builtin-String.md) val
*   bytes: [HashSet](collections-HashSet.md)\[[U8](builtin-U8.md) val, [HashEq](collections-HashEq.md)\[[U8](builtin-U8.md) val\] val\] ref

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/semver-__-utils/strings.md#L4)</span>


```pony
fun box eq(
  that: Strings val)
: Bool val
```
#### Parameters

*   that: [Strings](semver-..-utils-Strings.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-utils/strings.md#L4)</span>


```pony
fun box ne(
  that: Strings val)
: Bool val
```
#### Parameters

*   that: [Strings](semver-..-utils-Strings.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

