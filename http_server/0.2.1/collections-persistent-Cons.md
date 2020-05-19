# Cons\[A: A\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L234)</span>

A list with a head and a tail, where the tail can be empty.


```pony
class val Cons[A: A] is
  ReadSeq[val->A] box
```

#### Implements

* [ReadSeq](builtin-ReadSeq.md)\[val->A\] box

---

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/list.md#L243)</span>


```pony
new val create(
  a: val->A,
  t: (Cons[A] val | Nil[A] val))
: Cons[A] val^
```
#### Parameters

*   a: val->A
*   t: ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

#### Returns

* [Cons](collections-persistent-Cons.md)\[A\] val^

---

## Public Functions

### size
<span class="source-link">[[Source]](src/collections-persistent/list.md#L248)</span>


Returns the size of the list.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/collections-persistent/list.md#L254)</span>


Returns the i-th element of the list. Errors if the index is out of bounds.


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

### values
<span class="source-link">[[Source]](src/collections-persistent/list.md#L263)</span>


Returns an iterator over the elements of the list.


```pony
fun box values()
: Iterator[val->A] ref^
```

#### Returns

* [Iterator](builtin-Iterator.md)\[val->A\] ref^

---

### is_empty
<span class="source-link">[[Source]](src/collections-persistent/list.md#L273)</span>


Returns a Bool indicating if the list is empty.


```pony
fun box is_empty()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_non_empty
<span class="source-link">[[Source]](src/collections-persistent/list.md#L279)</span>


Returns a Bool indicating if the list is non-empty.


```pony
fun box is_non_empty()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### head
<span class="source-link">[[Source]](src/collections-persistent/list.md#L285)</span>


Returns the head of the list.


```pony
fun box head()
: val->A
```

#### Returns

* val->A

---

### tail
<span class="source-link">[[Source]](src/collections-persistent/list.md#L291)</span>


Returns the tail of the list.


```pony
fun box tail()
: (Cons[A] val | Nil[A] val)
```

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### reverse
<span class="source-link">[[Source]](src/collections-persistent/list.md#L297)</span>


Builds a new list by reversing the elements in the list.


```pony
fun val reverse()
: (Cons[A] val | Nil[A] val)
```

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### prepend
<span class="source-link">[[Source]](src/collections-persistent/list.md#L313)</span>


Builds a new list with an element added to the front of this list.


```pony
fun val prepend(
  a: val->A!)
: Cons[A] val
```
#### Parameters

*   a: val->A!

#### Returns

* [Cons](collections-persistent-Cons.md)\[A\] val

---

### concat
<span class="source-link">[[Source]](src/collections-persistent/list.md#L319)</span>


Builds a new list that is the concatenation of this list and the provided
list.


```pony
fun val concat(
  l: (Cons[A] val | Nil[A] val))
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   l: ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### map\[B: B\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L336)</span>


Builds a new list by applying a function to every member of the list.


```pony
fun val map[B: B](
  f: {(val->A): val->B}[A, B] box)
: (Cons[B] val | Nil[B] val)
```
#### Parameters

*   f: {(val->A): val->B}[A, B] box

#### Returns

* ([Cons](collections-persistent-Cons.md)\[B\] val | [Nil](collections-persistent-Nil.md)\[B\] val)

---

### flat_map\[B: B\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L353)</span>


Builds a new list by applying a function to every member of the list and
using the elements of the resulting lists.


```pony
fun val flat_map[B: B](
  f: {(val->A): List[B]}[A, B] box)
: (Cons[B] val | Nil[B] val)
```
#### Parameters

*   f: {(val->A): List[B]}[A, B] box

#### Returns

* ([Cons](collections-persistent-Cons.md)\[B\] val | [Nil](collections-persistent-Nil.md)\[B\] val)

---

### for_each
<span class="source-link">[[Source]](src/collections-persistent/list.md#L383)</span>


Applies the supplied function to every element of the list in order.


```pony
fun val for_each(
  f: {(val->A)}[A] box)
: None val
```
#### Parameters

*   f: {(val->A)}[A] box

#### Returns

* [None](builtin-None.md) val

---

### filter
<span class="source-link">[[Source]](src/collections-persistent/list.md#L399)</span>


Builds a new list with those elements that satisfy a provided predicate.


```pony
fun val filter(
  f: {(val->A): Bool}[A] box)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### fold\[B: B\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L421)</span>


Folds the elements of the list using the supplied function.


```pony
fun val fold[B: B](
  f: {(B, val->A): B^}[A, B] box,
  acc: B)
: B
```
#### Parameters

*   f: {(B, val->A): B^}[A, B] box
*   acc: B

#### Returns

* B

---

### every
<span class="source-link">[[Source]](src/collections-persistent/list.md#L438)</span>


Returns true if every element satisfies the provided predicate, false
otherwise.


```pony
fun val every(
  f: {(val->A): Bool}[A] box)
: Bool val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### exists
<span class="source-link">[[Source]](src/collections-persistent/list.md#L462)</span>


Returns true if at least one element satisfies the provided predicate,
false otherwise.


```pony
fun val exists(
  f: {(val->A): Bool}[A] box)
: Bool val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### partition
<span class="source-link">[[Source]](src/collections-persistent/list.md#L485)</span>


Builds a pair of lists, the first of which is made up of the elements
satisfying the supplied predicate and the second of which is made up of
those that do not.


```pony
fun val partition(
  f: {(val->A): Bool}[A] box)
: ((Cons[A] val | Nil[A] val) , (Cons[A] val | Nil[A] val))
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* (([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val) , ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val))

---

### drop
<span class="source-link">[[Source]](src/collections-persistent/list.md#L510)</span>


Builds a list by dropping the first n elements.


```pony
fun val drop(
  n: USize val)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   n: [USize](builtin-USize.md) val

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### drop_while
<span class="source-link">[[Source]](src/collections-persistent/list.md#L526)</span>


Builds a list by dropping elements from the front of the list until one
fails to satisfy the provided predicate.


```pony
fun val drop_while(
  f: {(val->A): Bool}[A] box)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### take
<span class="source-link">[[Source]](src/collections-persistent/list.md#L542)</span>


Builds a list of the first n elements.


```pony
fun val take(
  n: USize val)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   n: [USize](builtin-USize.md) val

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### take_while
<span class="source-link">[[Source]](src/collections-persistent/list.md#L562)</span>


Builds a list of elements satisfying the provided predicate until one does
not.


```pony
fun val take_while(
  f: {(val->A): Bool}[A] box)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

