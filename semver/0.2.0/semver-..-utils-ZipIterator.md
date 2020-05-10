# ZipIterator\[A: A, B: B\]
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L8)</span>
```pony
class ref ZipIterator[A: A, B: B] is
  Iterator[(A , B)] ref
```

#### Implements

* [Iterator](builtin-Iterator.md)\[(A , B)\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L12)</span>


```pony
new ref create(
  ia': Iterator[A] ref,
  ib': Iterator[B] ref)
: ZipIterator[A, B] ref^
```
#### Parameters

*   ia': [Iterator](builtin-Iterator.md)\[A\] ref
*   ib': [Iterator](builtin-Iterator.md)\[B\] ref

#### Returns

* [ZipIterator](semver-..-utils-ZipIterator.md)\[A, B\] ref^

---

## Public fields

### let ia: [Iterator](builtin-Iterator.md)\[A\] ref
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L9)</span>



---

### let ib: [Iterator](builtin-Iterator.md)\[B\] ref
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L10)</span>



---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L16)</span>


```pony
fun ref has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L19)</span>


```pony
fun ref next()
: (A , B) ?
```

#### Returns

* (A , B) ?

---

