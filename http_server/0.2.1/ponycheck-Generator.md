# Generator\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L102)</span>

A Generator is capable of generating random values of a certain type `T`
given a source of `Randomness`
and knows how to shrink or simplify values of that type.

When testing a property against one or more given Generators
those generators' `generate` methods are being called many times
to generate sample values that are then used to validate the property.

When a failing sample is found, the ponycheck engine is trying to find a
smaller or more simple sample by `shrinking` it.
If the generator did not provide any shrinked samples
as a result of `generate`, its `shrink` method is called
to obtain simpler results. Ponycheck obtains more shrunken samples until
the property is not failing anymore.
The last failing sample, which is considered the most simple one,
is then reported to the user.


```pony
class box Generator[T: T] is
  GenObj[T] box
```

#### Implements

* [GenObj](ponycheck-GenObj.md)\[T\] box

---

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/generator.md#L123)</span>


```pony
new ref create(
  gen: GenObj[T] box)
: Generator[T] ref^
```
#### Parameters

*   gen: [GenObj](ponycheck-GenObj.md)\[T\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[T\] ref^

---

## Public Functions

### generate
<span class="source-link">[[Source]](src/ponycheck/generator.md#L126)</span>


Let this generator generate a value
given a source of `Randomness`.

Also allow for returning a value and pre-generated shrink results
as a `ValueAndShrink[T]` instance, a tuple of `(T^, Seq[T])`.
This helps propagating shrink results through all kinds of Generator
combinators like `filter`, `map` and `flatMap`.

If implementing a custom `Generator` based on another one,
a Generator Combinator, you should use shrunken values
returned by `generate` to also return shrunken values based on them

If generating an example value is costly, it might be more efficient
to simply return the generated value and only shrink in big steps or do no
shrinking at all.
If generating values is lightweight, shrunken values should also be returned.


```pony
fun box generate(
  rnd: Randomness ref)
: (T^ | (T^ , Iterator[T^] ref)) ?
```
#### Parameters

*   rnd: [Randomness](ponycheck-Randomness.md) ref

#### Returns

* (T^ | (T^ , [Iterator](builtin-Iterator.md)\[T^\] ref)) ?

---

### shrink
<span class="source-link">[[Source]](src/ponycheck/generator.md#L147)</span>


Simplify the given value.

As the returned value can also be `iso`, it needs to be consumed and returned

It is preffered to already return a `ValueAndShrink` from `generate`.


```pony
fun box shrink(
  t: T)
: (T^ , Iterator[T^] ref)
```
#### Parameters

*   t: T

#### Returns

* (T^ , [Iterator](builtin-Iterator.md)\[T^\] ref)

---

### generate_value
<span class="source-link">[[Source]](src/ponycheck/generator.md#L157)</span>


```pony
fun box generate_value(
  rnd: Randomness ref)
: T^ ?
```
#### Parameters

*   rnd: [Randomness](ponycheck-Randomness.md) ref

#### Returns

* T^ ?

---

### generate_and_shrink
<span class="source-link">[[Source]](src/ponycheck/generator.md#L160)</span>


```pony
fun box generate_and_shrink(
  rnd: Randomness ref)
: (T^ , Iterator[T^] ref) ?
```
#### Parameters

*   rnd: [Randomness](ponycheck-Randomness.md) ref

#### Returns

* (T^ , [Iterator](builtin-Iterator.md)\[T^\] ref) ?

---

### filter
<span class="source-link">[[Source]](src/ponycheck/generator.md#L163)</span>


apply `predicate` to the values generated by this Generator
and only values for which `predicate` returns `true`.

Example:

```pony
let even_i32s =
  Generators.i32()
    .filter(
      {(t) => (t, ((t % 2) == 0)) })
```


```pony
fun box filter(
  predicate: {(T): (T^, Bool)}[T] box)
: Generator[T] box
```
#### Parameters

*   predicate: {(T): (T^, Bool)}[T] box

#### Returns

* [Generator](ponycheck-Generator.md)\[T\] box

---

### map\[U: U\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L207)</span>


apply function `fn` to each value of this iterator
and yield the results.

Example:

```pony
let single_code_point_string_gen =
  Generators.u32()
    .map[String]({(u) => String.from_utf32(u) })
```


```pony
fun box map[U: U](
  fn: {(T): U^}[T, U] box)
: Generator[U] box
```
#### Parameters

*   fn: {(T): U^}[T, U] box

#### Returns

* [Generator](ponycheck-Generator.md)\[U\] box

---

### flat_map\[U: U\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L254)</span>


For each value of this generator create a generator that is then combined.


```pony
fun box flat_map[U: U](
  fn: {(T): Generator[U]}[T, U] box)
: Generator[U] box
```
#### Parameters

*   fn: {(T): Generator[U]}[T, U] box

#### Returns

* [Generator](ponycheck-Generator.md)\[U\] box

---

### union\[U: U\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L267)</span>


Create a generator that produces the value of this generator or the other
with the same probability, returning a union type of this generator and the other one.


```pony
fun box union[U: U](
  other: Generator[U] box)
: Generator[(T | U)] box
```
#### Parameters

*   other: [Generator](ponycheck-Generator.md)\[U\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[(T | U)\] box

---

### iter
<span class="source-link">[[Source]](src/ponycheck/generator.md#L69)</span>


```pony
fun box iter(
  rnd: Randomness ref)
: Iterator[(T^ | (T^ , Iterator[T^] ref))] ref^
```
#### Parameters

*   rnd: [Randomness](ponycheck-Randomness.md) ref

#### Returns

* [Iterator](builtin-Iterator.md)\[(T^ | (T^ , [Iterator](builtin-Iterator.md)\[T^\] ref))\] ref^

---

### value_iter
<span class="source-link">[[Source]](src/ponycheck/generator.md#L77)</span>


```pony
fun box value_iter(
  rnd: Randomness ref)
: Iterator[T^] ref
```
#### Parameters

*   rnd: [Randomness](ponycheck-Randomness.md) ref

#### Returns

* [Iterator](builtin-Iterator.md)\[T^\] ref

---

### value_and_shrink_iter
<span class="source-link">[[Source]](src/ponycheck/generator.md#L89)</span>


```pony
fun box value_and_shrink_iter(
  rnd: Randomness ref)
: Iterator[(T^ , Iterator[T^] ref)] ref
```
#### Parameters

*   rnd: [Randomness](ponycheck-Randomness.md) ref

#### Returns

* [Iterator](builtin-Iterator.md)\[(T^ , [Iterator](builtin-Iterator.md)\[T^\] ref)\] ref

---

