# Lists\[A: A\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L36)</span>

A primitive containing helper functions for constructing and
testing Lists.


```pony
primitive val Lists[A: A]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/list.md#L36)</span>


```pony
new val create()
: Lists[A] val^
```

#### Returns

* [Lists](collections-persistent-Lists.md)\[A\] val^

---

## Public Functions

### empty
<span class="source-link">[[Source]](src/collections-persistent/list.md#L42)</span>


Returns an empty list.


```pony
fun box empty()
: (Cons[A] val | Nil[A] val)
```

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### cons
<span class="source-link">[[Source]](src/collections-persistent/list.md#L48)</span>


Returns a list that has h as a head and t as a tail.


```pony
fun box cons(
  h: val->A,
  t: (Cons[A] val | Nil[A] val))
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   h: val->A
*   t: ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### apply
<span class="source-link">[[Source]](src/collections-persistent/list.md#L54)</span>


Builds a new list from an Array


```pony
fun box apply(
  arr: Array[val->A] ref)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   arr: [Array](builtin-Array.md)\[val->A\] ref

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### from
<span class="source-link">[[Source]](src/collections-persistent/list.md#L60)</span>


Builds a new list from an iterator


```pony
fun box from(
  iter: Iterator[val->A] ref)
: (Cons[A] val | Nil[A] val)
```
#### Parameters

*   iter: [Iterator](builtin-Iterator.md)\[val->A\] ref

#### Returns

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

### eq\[optional T: [Equatable](builtin-Equatable.md)\[T\] val\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L71)</span>


Checks whether two lists are equal.


```pony
fun box eq[optional T: Equatable[T] val](
  l1: (Cons[T] val | Nil[T] val),
  l2: (Cons[T] val | Nil[T] val))
: Bool val ?
```
#### Parameters

*   l1: ([Cons](collections-persistent-Cons.md)\[T\] val | [Nil](collections-persistent-Nil.md)\[T\] val)
*   l2: ([Cons](collections-persistent-Cons.md)\[T\] val | [Nil](collections-persistent-Nil.md)\[T\] val)

#### Returns

* [Bool](builtin-Bool.md) val ?

---

### ne
<span class="source-link">[[Source]](src/collections-persistent/list.md#L42)</span>


```pony
fun box ne(
  that: Lists[A] val)
: Bool val
```
#### Parameters

*   that: [Lists](collections-persistent-Lists.md)\[A\] val

#### Returns

* [Bool](builtin-Bool.md) val

---

