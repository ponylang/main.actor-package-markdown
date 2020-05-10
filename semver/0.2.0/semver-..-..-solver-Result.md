# Result
<span class="source-link">[[Source]](src/semver-__-__-solver/result.md#L1)</span>
```pony
class ref Result
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-solver/result.md#L5)</span>


```pony
new ref create(
  solution': Array[Artifact ref] ref = qualify,
  err': String val = "")
: Result ref^
```
#### Parameters

*   solution': [Array](builtin-Array.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref\] ref = qualify
*   err': [String](builtin-String.md) val = ""

#### Returns

* [Result](semver-..-..-solver-Result.md) ref^

---

## Public fields

### let solution: [Array](builtin-Array.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref\] ref
<span class="source-link">[[Source]](src/semver-__-__-solver/result.md#L2)</span>



---

### let err: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/semver-__-__-solver/result.md#L3)</span>



---

## Public Functions

### is_err
<span class="source-link">[[Source]](src/semver-__-__-solver/result.md#L9)</span>


```pony
fun box is_err()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

