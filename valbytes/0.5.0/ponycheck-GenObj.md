# GenObj\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L41)</span>
```pony
trait box GenObj[T: T]
```

## Public Functions

### generate
<span class="source-link">[[Source]](src/ponycheck/generator.md#L42)</span>


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
<span class="source-link">[[Source]](src/ponycheck/generator.md#L44)</span>


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
<span class="source-link">[[Source]](src/ponycheck/generator.md#L47)</span>


simply generate a value and ignore any possible
shrink values


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
<span class="source-link">[[Source]](src/ponycheck/generator.md#L58)</span>


generate a value and also return a shrink result
even if the generator does not return any when calling `generate`.


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

