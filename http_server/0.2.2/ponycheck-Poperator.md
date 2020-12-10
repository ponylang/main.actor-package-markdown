# Poperator\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/poperator.md#L1)</span>

iterate over a [Seq](builtin-Seq.md) descructively by `pop`ing its elements

once `has_next()` returns `false`, the [Seq](builtin-Seq.md) is empty.

Nominee for the annual pony class-naming awards.


```pony
class ref Poperator[T: T] is
  Iterator[T^] ref
```

#### Implements

* [Iterator](builtin-Iterator.md)\[T^\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/poperator.md#L12)</span>


```pony
new ref create(
  seq: Seq[T] ref)
: Poperator[T] ref^
```
#### Parameters

*   seq: [Seq](builtin-Seq.md)\[T\] ref

#### Returns

* [Poperator](ponycheck-Poperator.md)\[T\] ref^

---

### empty
<span class="source-link">[[Source]](src/ponycheck/poperator.md#L15)</span>


```pony
new ref empty()
: Poperator[T] ref^
```

#### Returns

* [Poperator](ponycheck-Poperator.md)\[T\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/ponycheck/poperator.md#L18)</span>


```pony
fun ref has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/ponycheck/poperator.md#L21)</span>


```pony
fun ref next()
: T^ ?
```

#### Returns

* T^ ?

---

