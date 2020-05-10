# Scenario
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L7)</span>
```pony
class ref Scenario
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L14)</span>


```pony
new ref create(
  name': String val)
: Scenario ref^
```
#### Parameters

*   name': [String](builtin-String.md) val

#### Returns

* [Scenario](semver-.-test-solver-Scenario.md) ref^

---

## Public fields

### let name: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L8)</span>



---

### let source: [InMemArtifactSource](semver-..-..-solver-InMemArtifactSource.md) ref
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L9)</span>



---

### let constraints: [Array](builtin-Array.md)\[[Constraint](semver-..-..-solver-Constraint.md) ref\] ref
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L10)</span>



---

### let expectedSolution: [Array](builtin-Array.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref\] ref
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L11)</span>



---

### var expectedError: [String](builtin-String.md) val
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L12)</span>



---

## Public Functions

### run
<span class="source-link">[[Source]](src/semver-_-test-solver/test_solver_engine.md#L17)</span>


```pony
fun ref run(
  h: TestHelper val)
: None val
```
#### Parameters

*   h: [TestHelper](ponytest-TestHelper.md) val

#### Returns

* [None](builtin-None.md) val

---

