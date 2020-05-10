# ComparableMixin\[A: [Comparable](builtin-Comparable.md)\[A\] #read\]
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L1)</span>
```pony
interface ref ComparableMixin[A: Comparable[A] #read] is
  Comparable[A] ref
```

#### Implements

* [Comparable](builtin-Comparable.md)\[A\] ref

---

## Public Functions

### compare
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L2)</span>


```pony
fun box compare(
  that: box->A)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: box->A

#### Returns

* ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

---

### lt
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L4)</span>


```pony
fun box lt(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool.md) val

---

### le
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L7)</span>


```pony
fun box le(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool.md) val

---

### gt
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L11)</span>


```pony
fun box gt(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool.md) val

---

### ge
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L14)</span>


```pony
fun box ge(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L18)</span>


```pony
fun box eq(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-utils/comparable_mixin.md#L21)</span>


```pony
fun box ne(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool.md) val

---

