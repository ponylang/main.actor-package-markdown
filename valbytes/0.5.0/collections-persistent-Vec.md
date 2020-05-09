# Vec\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L3)</span>

A persistent vector based on the Hash Array Mapped Trie from 'Ideal Hash
Trees' by Phil Bagwell.


```pony
class val Vec[A: Any #share]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L14)</span>


```pony
new val create()
: Vec[A] val^
```

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val^

---

## Public Functions

### size
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L31)</span>


Return the amount of values in the vector.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L43)</span>


Get the i-th element, raising an error if the index is out of bounds.


```pony
fun box apply(
  i: USize val)
: val->A ?
```
#### Parameters

*   i: [USize](builtin-USize.md) val

#### Returns

* val->A ?

---

### update
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L53)</span>


Return a vector with the i-th element changed, raising an error if the
index is out of bounds.


```pony
fun val update(
  i: USize val,
  value: val->A)
: Vec[A] val ?
```
#### Parameters

*   i: [USize](builtin-USize.md) val
*   value: val->A

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val ?

---

### insert
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L67)</span>


Return a vector with an element inserted. Elements after this are moved
up by one index, extending the vector. An out of bounds index raises an
error.


```pony
fun val insert(
  i: USize val,
  value: val->A)
: Vec[A] val ?
```
#### Parameters

*   i: [USize](builtin-USize.md) val
*   value: val->A

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val ?

---

### delete
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L81)</span>


Return a vector with an element deleted. Elements after this are moved
down by one index, compacting the vector. An out of bounds index raises an
error.


```pony
fun val delete(
  i: USize val)
: Vec[A] val ?
```
#### Parameters

*   i: [USize](builtin-USize.md) val

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val ?

---

### remove
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L94)</span>


Return a vector with n elements removed, beginning at index i.


```pony
fun val remove(
  i: USize val,
  n: USize val)
: Vec[A] val ?
```
#### Parameters

*   i: [USize](builtin-USize.md) val
*   n: [USize](builtin-USize.md) val

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val ?

---

### push
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L106)</span>


Return a vector with the value added to the end.


```pony
fun val push(
  value: val->A)
: Vec[A] val
```
#### Parameters

*   value: val->A

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val

---

### pop
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L138)</span>


Return a vector with the value at the end removed.


```pony
fun val pop()
: Vec[A] val ?
```

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val ?

---

### concat
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L156)</span>


Return a vector with the values of the given iterator added to the end.


```pony
fun val concat(
  iter: Iterator[val->A] ref)
: Vec[A] val
```
#### Parameters

*   iter: [Iterator](builtin-Iterator.md)\[val->A\] ref

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val

---

### find
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L166)</span>


Find the `nth` appearance of `value` from the beginning of the vector,
starting at `offset` and examining higher indices, and using the
supplied `predicate` for comparisons. Returns the index of the value, or
raise an error if the value isn't present.

By default, the search starts at the first element of the vector,
returns the first instance of `value` found, and uses object identity
for comparison.


```pony
fun val find(
  value: val->A,
  offset: USize val = 0,
  nth: USize val = 0,
  predicate: {(A, A): Bool}[A] val = lambda)
: USize val ?
```
#### Parameters

*   value: val->A
*   offset: [USize](builtin-USize.md) val = 0
*   nth: [USize](builtin-USize.md) val = 0
*   predicate: {(A, A): Bool}[A] val = lambda

#### Returns

* [USize](builtin-USize.md) val ?

---

### contains
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L192)</span>


Returns true if the vector contains `value`, false otherwise.


```pony
fun val contains(
  value: val->A,
  predicate: {(A, A): Bool}[A] val = lambda)
: Bool val
```
#### Parameters

*   value: val->A
*   predicate: {(A, A): Bool}[A] val = lambda

#### Returns

* [Bool](builtin-Bool.md) val

---

### slice
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L205)</span>


Return a vector that is a clone of a portion of this vector. The range is
exclusive and saturated.


```pony
fun val slice(
  from: USize val = 0,
  to: USize val = call,
  step: USize val = 1)
: Vec[A] val
```
#### Parameters

*   from: [USize](builtin-USize.md) val = 0
*   to: [USize](builtin-USize.md) val = call
*   step: [USize](builtin-USize.md) val = 1

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val

---

### reverse
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L216)</span>


Return a vector with the elements in reverse order.


```pony
fun val reverse()
: Vec[A] val
```

#### Returns

* [Vec](collections-persistent-Vec.md)\[A\] val

---

### keys
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L226)</span>


Return an iterator over the indices in the vector.


```pony
fun val keys()
: VecKeys[A] ref^
```

#### Returns

* [VecKeys](collections-persistent-VecKeys.md)\[A\] ref^

---

### values
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L232)</span>


Return an iterator over the values in the vector.


```pony
fun val values()
: VecValues[A] ref^
```

#### Returns

* [VecValues](collections-persistent-VecValues.md)\[A\] ref^

---

### pairs
<span class="source-link">[[Source]](src/collections-persistent/vec.md#L238)</span>


Return an iterator over the (index, value) pairs in the vector.


```pony
fun val pairs()
: VecPairs[A] ref^
```

#### Returns

* [VecPairs](collections-persistent-VecPairs.md)\[A\] ref^

---

