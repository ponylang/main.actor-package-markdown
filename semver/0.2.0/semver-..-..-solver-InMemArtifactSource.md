# InMemArtifactSource
<span class="source-link">[[Source]](src/semver-__-__-solver/in_mem_artifact_source.md#L4)</span>
```pony
class ref InMemArtifactSource is
  ArtifactSource ref
```

#### Implements

* [ArtifactSource](semver-..-..-solver-ArtifactSource.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-solver/in_mem_artifact_source.md#L4)</span>


```pony
new iso create()
: InMemArtifactSource iso^
```

#### Returns

* [InMemArtifactSource](semver-..-..-solver-InMemArtifactSource.md) iso^

---

## Public fields

### let artifact_sets_by_name: [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, [HashSet](collections-HashSet.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref, [HashEq](collections-HashEq.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref\] val\] ref, [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] ref
<span class="source-link">[[Source]](src/semver-__-__-solver/in_mem_artifact_source.md#L5)</span>



---

## Public Functions

### add
<span class="source-link">[[Source]](src/semver-__-__-solver/in_mem_artifact_source.md#L7)</span>


```pony
fun ref add(
  a: Artifact ref)
: None val
```
#### Parameters

*   a: [Artifact](semver-..-..-solver-Artifact.md) ref

#### Returns

* [None](builtin-None.md) val

---

### all_versions_of
<span class="source-link">[[Source]](src/semver-__-__-solver/in_mem_artifact_source.md#L14)</span>


```pony
fun ref all_versions_of(
  name: String val)
: Iterator[Artifact ref] ref
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* [Iterator](builtin-Iterator.md)\[[Artifact](semver-..-..-solver-Artifact.md) ref\] ref

---

