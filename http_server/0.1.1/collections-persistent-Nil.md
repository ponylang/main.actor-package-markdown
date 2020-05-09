# Nil\[A: A\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L87)</span>

The empty list of As.


```pony
primitive val Nil[A: A] is
  ReadSeq[val->A] box
```

#### Implements

* [ReadSeq](builtin-ReadSeq.md)\[val->A\] box

---

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/list.md#L87)</span>


```pony
new val create()
: Nil[A] val^
```

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val^

---

## Public Functions

### size
<span class="source-link">[[Source]](src/collections-persistent/list.md#L92)</span>


Returns the size of the list.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### apply
<span class="source-link">[[Source]](src/collections-persistent/list.md#L98)</span>


Returns the i-th element of the sequence. For the empty list this call will
always error because any index will be out of bounds.


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
<span class="source-link">[[Source]](src/collections-persistent/list.md#L105)</span>


Returns an empty iterator over the elements of the empty list.


```pony
fun box values()
: Iterator[val->A] ref^
```

#### Returns

* [Iterator](builtin-Iterator.md)\[val->A\] ref^

---

### is_empty
<span class="source-link">[[Source]](src/collections-persistent/list.md#L114)</span>


Returns a Bool indicating if the list is empty.


```pony
fun box is_empty()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_non_empty
<span class="source-link">[[Source]](src/collections-persistent/list.md#L120)</span>


Returns a Bool indicating if the list is non-empty.


```pony
fun box is_non_empty()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### head
<span class="source-link">[[Source]](src/collections-persistent/list.md#L126)</span>


Returns an error, since Nil has no head.


```pony
fun box head()
: val->A ?
```

#### Returns

* val->A ?

---

### tail
<span class="source-link">[[Source]](src/collections-persistent/list.md#L132)</span>


Returns an error, since Nil has no tail.


```pony
fun box tail()
: (Cons[A] val | Nil[A] val) ?
```

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val) ?

---

### reverse
<span class="source-link">[[Source]](src/collections-persistent/list.md#L138)</span>


The reverse of the empty list is the empty list.


```pony
fun box reverse()
: Nil[A] val
```

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val

---

### prepend
<span class="source-link">[[Source]](src/collections-persistent/list.md#L144)</span>


Builds a new list with an element added to the front of this list.


```pony
fun box prepend(
  a: val->A!)
: Cons[A] val
```
#### Parameters

*   a: val->A!

#### Returns

* [Cons](collections-persistent-Cons.md)\[A\] val

---

### concat
<span class="source-link">[[Source]](src/collections-persistent/list.md#L150)</span>


The concatenation of any list l with the empty list is l.


```pony
fun box concat(
  l: (Cons[A] val | Nil[A] val))
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   l: ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### map\[B: B\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L156)</span>


Mapping a function from A to B over the empty list yields the
empty list of Bs.


```pony
fun box map[B: B](
  f: {(val->A): val->B}[A, B] box)
: Nil[B] val
```
#### Parameters

*   f: {(val->A): val->B}[A, B] box

#### Returns

* [Nil](collections-persistent-Nil.md)\[B\] val

---

### flat_map\[B: B\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L163)</span>


Flatmapping a function from A to B over the empty list yields the
empty list of Bs.


```pony
fun box flat_map[B: B](
  f: {(val->A): List[B]}[A, B] box)
: Nil[B] val
```
#### Parameters

*   f: {(val->A): List[B]}[A, B] box

#### Returns

* [Nil](collections-persistent-Nil.md)\[B\] val

---

### for_each
<span class="source-link">[[Source]](src/collections-persistent/list.md#L170)</span>


Applying a function to every member of the empty list is a no-op.


```pony
fun box for_each(
  f: {(val->A)}[A] box)
: None val
```
#### Parameters

*   f: {(val->A)}[A] box

#### Returns

* [None](builtin-None.md) val

---

### filter
<span class="source-link">[[Source]](src/collections-persistent/list.md#L176)</span>


Filtering the empty list yields the empty list.


```pony
fun box filter(
  f: {(val->A): Bool}[A] box)
: Nil[A] val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val

---

### fold\[B: B\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L182)</span>


Folding over the empty list yields the initial accumulator.


```pony
fun box fold[B: B](
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
<span class="source-link">[[Source]](src/collections-persistent/list.md#L188)</span>


Any predicate is true of every member of the empty list.


```pony
fun box every(
  f: {(val->A): Bool}[A] box)
: Bool val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### exists
<span class="source-link">[[Source]](src/collections-persistent/list.md#L194)</span>


For any predicate, there is no element that satisfies it in the empty
list.


```pony
fun box exists(
  f: {(val->A): Bool}[A] box)
: Bool val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Bool](builtin-Bool.md) val

---

### partition
<span class="source-link">[[Source]](src/collections-persistent/list.md#L201)</span>


The only partition of the empty list is two empty lists.


```pony
fun box partition(
  f: {(val->A): Bool}[A] box)
: (Nil[A] val , Nil[A] val)
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* ([Nil](collections-persistent-Nil.md)\[A\] val , [Nil](collections-persistent-Nil.md)\[A\] val)

---

### drop
<span class="source-link">[[Source]](src/collections-persistent/list.md#L207)</span>


There are no elements to drop from the empty list.


```pony
fun box drop(
  n: USize val)
: Nil[A] val
```
#### Parameters

*   n: [USize](builtin-USize.md) val

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val

---

### drop_while
<span class="source-link">[[Source]](src/collections-persistent/list.md#L213)</span>


There are no elements to drop from the empty list.


```pony
fun box drop_while(
  f: {(val->A): Bool}[A] box)
: Nil[A] val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val

---

### take
<span class="source-link">[[Source]](src/collections-persistent/list.md#L219)</span>


There are no elements to take from the empty list.


```pony
fun box take(
  n: USize val)
: Nil[A] val
```
#### Parameters

*   n: [USize](builtin-USize.md) val

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val

---

### take_while
<span class="source-link">[[Source]](src/collections-persistent/list.md#L225)</span>


There are no elements to take from the empty list.


```pony
fun box take_while(
  f: {(val->A): Bool}[A] box)
: Nil[A] val
```
#### Parameters

*   f: {(val->A): Bool}[A] box

#### Returns

* [Nil](collections-persistent-Nil.md)\[A\] val

---

### contains\[optional T: (A & [HasEq](builtin-HasEq.md)\[A!\] #read)\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L231)</span>


```pony
fun val contains[optional T: (A & HasEq[A!] #read)](
  a: val->T)
: Bool val
```
#### Parameters

*   a: val->T

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/collections-persistent/list.md#L92)</span>


```pony
fun box eq(
  that: Nil[A] val)
: Bool val
```
#### Parameters

*   that: [Nil](collections-persistent-Nil.md)\[A\] val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/collections-persistent/list.md#L92)</span>


```pony
fun box ne(
  that: Nil[A] val)
: Bool val
```
#### Parameters

*   that: [Nil](collections-persistent-Nil.md)\[A\] val

#### Returns

* [Bool](builtin-Bool.md) val

---

