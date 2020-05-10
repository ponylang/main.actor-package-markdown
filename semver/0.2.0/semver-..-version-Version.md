# Version
<span class="source-link">[[Source]](src/semver-__-version/version.md#L4)</span>
```pony
class ref Version is
  ComparableMixin[Version ref] ref,
  Hashable ref,
  Stringable box
```

#### Implements

* [ComparableMixin](semver-..-utils-ComparableMixin.md)\[[Version](semver-..-version-Version.md) ref\] ref
* [Hashable](collections-Hashable.md) ref
* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-version/version.md#L12)</span>


```pony
new ref create(
  major': U64 val,
  minor': U64 val = 0,
  patch': U64 val = 0,
  pr_fields': Array[(String val | U64 val)] ref = qualify,
  build_fields': Array[String val] ref = qualify)
: Version ref^
```
#### Parameters

*   major': [U64](builtin-U64.md) val
*   minor': [U64](builtin-U64.md) val = 0
*   patch': [U64](builtin-U64.md) val = 0
*   pr_fields': [Array](builtin-Array.md)\[([String](builtin-String.md) val | [U64](builtin-U64.md) val)\] ref = qualify
*   build_fields': [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref = qualify

#### Returns

* [Version](semver-..-version-Version.md) ref^

---

## Public fields

### var major: [U64](builtin-U64.md) val
<span class="source-link">[[Source]](src/semver-__-version/version.md#L5)</span>



---

### var minor: [U64](builtin-U64.md) val
<span class="source-link">[[Source]](src/semver-__-version/version.md#L6)</span>



---

### var patch: [U64](builtin-U64.md) val
<span class="source-link">[[Source]](src/semver-__-version/version.md#L7)</span>



---

### let pr_fields: [Array](builtin-Array.md)\[([String](builtin-String.md) val | [U64](builtin-U64.md) val)\] ref
<span class="source-link">[[Source]](src/semver-__-version/version.md#L8)</span>



---

### let build_fields: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref
<span class="source-link">[[Source]](src/semver-__-version/version.md#L9)</span>



---

### let errors: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref
<span class="source-link">[[Source]](src/semver-__-version/version.md#L10)</span>



---

## Public Functions

### compare
<span class="source-link">[[Source]](src/semver-__-version/version.md#L26)</span>


```pony
fun box compare(
  that: Version box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

---

### hash
<span class="source-link">[[Source]](src/semver-__-version/version.md#L29)</span>


```pony
fun box hash()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### is_valid
<span class="source-link">[[Source]](src/semver-__-version/version.md#L32)</span>


```pony
fun box is_valid()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### string
<span class="source-link">[[Source]](src/semver-__-version/version.md#L35)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### major_minor_patch_string
<span class="source-link">[[Source]](src/semver-__-version/version.md#L50)</span>


```pony
fun box major_minor_patch_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pre_release_string
<span class="source-link">[[Source]](src/semver-__-version/version.md#L53)</span>


```pony
fun box pre_release_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### build_string
<span class="source-link">[[Source]](src/semver-__-version/version.md#L56)</span>


```pony
fun box build_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### lt
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L4)</span>


```pony
fun box lt(
  that: Version box)
: Bool val
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### le
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L7)</span>


```pony
fun box le(
  that: Version box)
: Bool val
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### gt
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L11)</span>


```pony
fun box gt(
  that: Version box)
: Bool val
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ge
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L14)</span>


```pony
fun box ge(
  that: Version box)
: Bool val
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L18)</span>


```pony
fun box eq(
  that: Version box)
: Bool val
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L21)</span>


```pony
fun box ne(
  that: Version box)
: Bool val
```
#### Parameters

*   that: [Version](semver-..-version-Version.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

