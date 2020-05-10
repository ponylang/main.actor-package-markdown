# Solver
<span class="source-link">[[Source]](src/semver-__-__-solver/solver.md#L4)</span>
```pony
class ref Solver
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-solver/solver.md#L7)</span>


```pony
new ref create(
  source': ArtifactSource ref)
: Solver ref^
```
#### Parameters

*   source': [ArtifactSource](semver-..-..-solver-ArtifactSource.md) ref

#### Returns

* [Solver](semver-..-..-solver-Solver.md) ref^

---

## Public fields

### let source: [ArtifactSource](semver-..-..-solver-ArtifactSource.md) ref
<span class="source-link">[[Source]](src/semver-__-__-solver/solver.md#L5)</span>



---

## Public Functions

### solve
<span class="source-link">[[Source]](src/semver-__-__-solver/solver.md#L10)</span>


```pony
fun ref solve(
  constraints: Iterator[Constraint ref] ref)
: Result ref
```
#### Parameters

*   constraints: [Iterator](builtin-Iterator.md)\[[Constraint](semver-..-..-solver-Constraint.md) ref\] ref

#### Returns

* [Result](semver-..-..-solver-Result.md) ref

---

