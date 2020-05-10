# ValidateFields
<span class="source-link">[[Source]](src/semver-__-version/validate_fields.md#L3)</span>
```pony
primitive val ValidateFields
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-version/validate_fields.md#L3)</span>


```pony
new val create()
: ValidateFields val^
```

#### Returns

* [ValidateFields](semver-..-version-ValidateFields.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/semver-__-version/validate_fields.md#L4)</span>


```pony
fun box apply(
  pr: Array[(String val | U64 val)] ref,
  build: Array[String val] ref)
: Array[String val] ref
```
#### Parameters

*   pr: [Array](builtin-Array.md)\[([String](builtin-String.md) val | [U64](builtin-U64.md) val)\] ref
*   build: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref

#### Returns

* [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref

---

### eq
<span class="source-link">[[Source]](src/semver-__-version/validate_fields.md#L4)</span>


```pony
fun box eq(
  that: ValidateFields val)
: Bool val
```
#### Parameters

*   that: [ValidateFields](semver-..-version-ValidateFields.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-version/validate_fields.md#L4)</span>


```pony
fun box ne(
  that: ValidateFields val)
: Bool val
```
#### Parameters

*   that: [ValidateFields](semver-..-version-ValidateFields.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

