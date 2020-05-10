# Constraint
<span class="source-link">[[Source]](src/semver-__-__-solver/constraint.md#L3)</span>
```pony
class ref Constraint is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-solver/constraint.md#L7)</span>


```pony
new ref create(
  artifact_name': String val,
  range': Range ref)
: Constraint ref^
```
#### Parameters

*   artifact_name': [String](builtin-String.md) val
*   range': [Range](semver-..-..-range-Range.md) ref

#### Returns

* [Constraint](semver-..-..-solver-Constraint.md) ref^

---

## Public fields

### let artifact_name: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/semver-__-__-solver/constraint.md#L4)</span>



---

### let range: [Range](semver-..-..-range-Range.md) ref
<span class="source-link">[[Source]](src/semver-__-__-solver/constraint.md#L5)</span>



---

## Public Functions

### string
<span class="source-link">[[Source]](src/semver-__-__-solver/constraint.md#L11)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

