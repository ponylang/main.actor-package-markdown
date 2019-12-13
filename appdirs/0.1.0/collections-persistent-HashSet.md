# HashSet\[A: [Any](builtin-Any.md) #share, H: [HashFunction](collections-HashFunction.md)\[A\] val\]
<span class="source-link">[[Source]](src/collections-persistent/set.md#L7)</span>

A set, built on top of persistent Map. This is implemented as map of an
alias of a type to itself.


```pony
class val HashSet[A: Any #share, H: HashFunction[A] val] is
  Comparable[HashSet[A, H] box] ref
```

#### Implements

* [Comparable](builtin-Comparable.md)\[[HashSet](collections-persistent-HashSet.md)\[A, H\] box\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/set.md#L15)</span>


```pony
new val create()
: HashSet[A, H] val^
```

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val^

---

## Public Functions

### size
<span class="source-link">[[Source]](src/collections-persistent/set.md#L21)</span>


Return the number of elements in the set.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/collections-persistent/set.md#L27)</span>


Return the value if it is in the set, otherwise raise an error.


```pony
fun box apply(
  value: val->A)
: val->A ?
```
#### Parameters

*   value: val->A

#### Returns

* val->A ?

---

### contains
<span class="source-link">[[Source]](src/collections-persistent/set.md#L33)</span>


Check whether the set contains the value.


```pony
fun box contains(
  value: val->A)
: Bool val
```
#### Parameters

*   value: val->A

#### Returns

* [Bool](builtin-Bool.md) val

---

### add
<span class="source-link">[[Source]](src/collections-persistent/set.md#L39)</span>


Return a set with the value added.


```pony
fun val add(
  value: val->A)
: HashSet[A, H] val
```
#### Parameters

*   value: val->A

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val

---

### sub
<span class="source-link">[[Source]](src/collections-persistent/set.md#L45)</span>


Return a set with the value removed.


```pony
fun val sub(
  value: val->A)
: HashSet[A, H] val
```
#### Parameters

*   value: val->A

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val

---

### op_or
<span class="source-link">[[Source]](src/collections-persistent/set.md#L51)</span>


Return a set with the elements of both this and that.


```pony
fun val op_or(
  that: (HashSet[A, H] val | Iterator[A] ref))
: HashSet[A, H] val
```
#### Parameters

*   that: ([HashSet](collections-persistent-HashSet.md)\[A, H\] val | [Iterator](builtin-Iterator.md)\[A\] ref)

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val

---

### op_and
<span class="source-link">[[Source]](src/collections-persistent/set.md#L66)</span>


Return a set with the elements that are in both this and that.


```pony
fun val op_and(
  that: (HashSet[A, H] val | Iterator[A] ref))
: HashSet[A, H] val
```
#### Parameters

*   that: ([HashSet](collections-persistent-HashSet.md)\[A, H\] val | [Iterator](builtin-Iterator.md)\[A\] ref)

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val

---

### op_xor
<span class="source-link">[[Source]](src/collections-persistent/set.md#L83)</span>


Return a set with elements that are in either this or that, but not both.


```pony
fun val op_xor(
  that: (HashSet[A, H] val | Iterator[A] ref))
: HashSet[A, H] val
```
#### Parameters

*   that: ([HashSet](collections-persistent-HashSet.md)\[A, H\] val | [Iterator](builtin-Iterator.md)\[A\] ref)

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val

---

### without
<span class="source-link">[[Source]](src/collections-persistent/set.md#L102)</span>


Return a set with the elements of this that are not in that.


```pony
fun val without(
  that: (HashSet[A, H] val | Iterator[A] ref))
: HashSet[A, H] val
```
#### Parameters

*   that: ([HashSet](collections-persistent-HashSet.md)\[A, H\] val | [Iterator](builtin-Iterator.md)\[A\] ref)

#### Returns

* [HashSet](collections-persistent-HashSet.md)\[A, H\] val

---

### eq
<span class="source-link">[[Source]](src/collections-persistent/set.md#L119)</span>


Return true if this and that contain the same elements.


```pony
fun box eq(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### lt
<span class="source-link">[[Source]](src/collections-persistent/set.md#L125)</span>


Return true if every element in this is also in that, and this has fewer
elements than that.


```pony
fun box lt(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### le
<span class="source-link">[[Source]](src/collections-persistent/set.md#L132)</span>


Return true if every element in this is also in that.


```pony
fun box le(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### gt
<span class="source-link">[[Source]](src/collections-persistent/set.md#L141)</span>


Return true if every element in that is also in this, and this has more
elements than that.


```pony
fun box gt(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### ge
<span class="source-link">[[Source]](src/collections-persistent/set.md#L148)</span>


Return true if every element in that is also in this.


```pony
fun box ge(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### values
<span class="source-link">[[Source]](src/collections-persistent/set.md#L154)</span>


Return an iterator over the values in the set.


```pony
fun box values()
: Iterator[A] ref^
```

#### Returns

* [Iterator](builtin-Iterator.md)\[A\] ref^

---

### compare
<span class="source-link">[[Source]](src/builtin/compare.md#L28)</span>


```pony
fun box compare(
  that: HashSet[A, H] box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* ([Less](builtin-Less.md) val | [Equal](builtin-Equal.md) val | [Greater](builtin-Greater.md) val)

---

### ne
<span class="source-link">[[Source]](src/builtin/compare.md#L20)</span>


```pony
fun box ne(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-persistent-HashSet.md)\[A, H\] box

#### Returns

* [Bool](builtin-Bool.md) val

---

