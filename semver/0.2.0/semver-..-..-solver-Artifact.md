# Artifact
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L5)</span>
```pony
class ref Artifact is
  ComparableMixin[Artifact ref] ref,
  Hashable ref,
  Stringable box
```

#### Implements

* [ComparableMixin](semver-..-utils-ComparableMixin.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref\] ref
* [Hashable](collections-Hashable.md) ref
* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L10)</span>


```pony
new ref create(
  name': String val,
  version': Version ref,
  depends_on': Array[Constraint ref] ref = qualify)
: Artifact ref^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   version': [Version](semver-..-version-Version.md) ref
*   depends_on': [Array](builtin-Array.md)\[[Constraint](semver-..-..-solver-Constraint.md) ref\] ref = qualify

#### Returns

* [Artifact](semver-..-..-solver-Artifact.md) ref^

---

## Public fields

### let name: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L6)</span>



---

### let version: [Version](semver-..-version-Version.md) ref
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L7)</span>



---

### let depends_on: [Array](builtin-Array.md)\[[Constraint](semver-..-..-solver-Constraint.md) ref\] ref
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L8)</span>



---

## Public Functions

### compare
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L19)</span>


```pony
fun box compare(
  that: Artifact box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

---

### hash
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L23)</span>


```pony
fun box hash()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### string
<span class="source-link">[[Source]](src/semver-__-__-solver/artifact.md#L26)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### lt



```pony
fun box lt(
  that: Artifact box)
: Bool val
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### le



```pony
fun box le(
  that: Artifact box)
: Bool val
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### gt



```pony
fun box gt(
  that: Artifact box)
: Bool val
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ge



```pony
fun box ge(
  that: Artifact box)
: Bool val
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq



```pony
fun box eq(
  that: Artifact box)
: Bool val
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne



```pony
fun box ne(
  that: Artifact box)
: Bool val
```
#### Parameters

*   that: [Artifact](semver-..-..-solver-Artifact.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

