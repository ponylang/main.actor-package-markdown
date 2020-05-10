# ParseVersion
<span class="source-link">[[Source]](src/semver-__-version/parse_version.md#L3)</span>
```pony
primitive val ParseVersion
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-version/parse_version.md#L3)</span>


```pony
new val create()
: ParseVersion val^
```

#### Returns

* [ParseVersion](semver-..-version-ParseVersion.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/semver-__-version/parse_version.md#L4)</span>


```pony
fun box apply(
  s: String val)
: Version ref
```
#### Parameters

*   s: [String](builtin-String.md) val

#### Returns

* [Version](semver-..-version-Version.md) ref

---

### eq
<span class="source-link">[[Source]](src/semver-__-version/parse_version.md#L4)</span>


```pony
fun box eq(
  that: ParseVersion val)
: Bool val
```
#### Parameters

*   that: [ParseVersion](semver-..-version-ParseVersion.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-version/parse_version.md#L4)</span>


```pony
fun box ne(
  that: ParseVersion val)
: Bool val
```
#### Parameters

*   that: [ParseVersion](semver-..-version-ParseVersion.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

