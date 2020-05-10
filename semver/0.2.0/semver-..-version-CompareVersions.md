# CompareVersions
<span class="source-link">[[Source]](src/semver-__-version/compare_versions.md#L3)</span>
```pony
primitive val CompareVersions
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-version/compare_versions.md#L3)</span>


```pony
new val create()
: CompareVersions val^
```

#### Returns

* [CompareVersions](semver-..-version-CompareVersions.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/semver-__-version/compare_versions.md#L4)</span>


```pony
fun box apply(
  v1: Version box,
  v2: Version box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   v1: [Version](semver-..-version-Version.md) box
*   v2: [Version](semver-..-version-Version.md) box

#### Returns

* ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

---

### eq
<span class="source-link">[[Source]](src/semver-__-version/compare_versions.md#L4)</span>


```pony
fun box eq(
  that: CompareVersions val)
: Bool val
```
#### Parameters

*   that: [CompareVersions](semver-..-version-CompareVersions.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-version/compare_versions.md#L4)</span>


```pony
fun box ne(
  that: CompareVersions val)
: Bool val
```
#### Parameters

*   that: [CompareVersions](semver-..-version-CompareVersions.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

