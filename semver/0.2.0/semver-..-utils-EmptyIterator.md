# EmptyIterator\[A: A\]
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L1)</span>
```pony
class ref EmptyIterator[A: A] is
  Iterator[A] ref
```

#### Implements

* [Iterator](builtin-Iterator.md)\[A\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L1)</span>


```pony
new iso create()
: EmptyIterator[A] iso^
```

#### Returns

* [EmptyIterator](semver-..-utils-EmptyIterator.md)\[A\] iso^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L2)</span>


```pony
fun ref has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/semver-__-utils/iterators.md#L5)</span>


```pony
fun ref next()
: A ?
```

#### Returns

* A ?

---

