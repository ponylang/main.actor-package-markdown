# AlwaysComparesAs
<span class="source-link">[[Source]](src/semver-_-test-utils/test_utils_comparable_mixin.md#L4)</span>
```pony
class ref AlwaysComparesAs is
  ComparableMixin[AlwaysComparesAs ref] ref
```

#### Implements

* [ComparableMixin](semver-..-utils-ComparableMixin.md)\[[AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) ref\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-_-test-utils/test_utils_comparable_mixin.md#L7)</span>


```pony
new ref create(
  value': (Less val | Equal val | Greater val))
: AlwaysComparesAs ref^
```
#### Parameters

*   value': ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

#### Returns

* [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) ref^

---

## Public fields

### let value: ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)
<span class="source-link">[[Source]](src/semver-_-test-utils/test_utils_comparable_mixin.md#L5)</span>



---

## Public Functions

### compare
<span class="source-link">[[Source]](src/semver-_-test-utils/test_utils_comparable_mixin.md#L10)</span>


```pony
fun box compare(
  that: AlwaysComparesAs box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

---

### lt
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L4)</span>


```pony
fun box lt(
  that: AlwaysComparesAs box)
: Bool val
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### le
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L7)</span>


```pony
fun box le(
  that: AlwaysComparesAs box)
: Bool val
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### gt
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L11)</span>


```pony
fun box gt(
  that: AlwaysComparesAs box)
: Bool val
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ge
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L14)</span>


```pony
fun box ge(
  that: AlwaysComparesAs box)
: Bool val
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L18)</span>


```pony
fun box eq(
  that: AlwaysComparesAs box)
: Bool val
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L21)</span>


```pony
fun box ne(
  that: AlwaysComparesAs box)
: Bool val
```
#### Parameters

*   that: [AlwaysComparesAs](semver-.-test-utils-AlwaysComparesAs.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

