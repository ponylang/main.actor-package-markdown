# Generators
<span class="source-link">[[Source]](src/ponycheck/generator.md#L294)</span>

Convenience combinators and factories for common types and kind of Generators.


```pony
primitive val Generators
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/generator.md#L294)</span>


```pony
new val create()
: Generators val^
```

#### Returns

* [Generators](ponycheck-Generators.md) val^

---

## Public Functions

### unit\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L299)</span>


Generate a reference to the same value over and over again.

This reference will be of type ``box->T`` and not just ``T``
as this generator will need to keep a reference to the given value.


```pony
fun box unit[T: T](
  t: T,
  do_shrink: Bool val = false)
: Generator[box->T] box
```
#### Parameters

*   t: T
*   do_shrink: [Bool](builtin-Bool.md) val = false

#### Returns

* [Generator](ponycheck-Generator.md)\[box->T\] box

---

### none\[T: [None](builtin-None.md) val\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L317)</span>


```pony
fun box none[T: None val]()
: Generator[(T | None val)] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[(T | [None](builtin-None.md) val)\] box

---

### repeatedly\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L319)</span>


Generate values by calling the lambda ``f`` repeatedly,
once for every invocation of ``generate``.

``f`` needs to return an ephemeral type ``T^``, that means
in most cases it needs to consume its returned value.
Otherwise we would end up with
an alias for ``T`` which is ``T!``.
(e.g. ``String iso`` would be returned as ``String iso!``
which is a ``String tag``).

Example:

```pony
Generators.repeatedly[Writer]({(): Writer^ =>
  let writer = Writer.>write("consume me, please")
  consume writer
})
```


```pony
fun box repeatedly[T: T](
  f: {(): T^ ?}[T] box)
: Generator[T] box
```
#### Parameters

*   f: {(): T^ ?}[T] box

#### Returns

* [Generator](ponycheck-Generator.md)\[T\] box

---

### seq_of\[T: T, S: [Seq](builtin-Seq.md)\[T\] ref\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L347)</span>


Create a `Seq` from the values of the given Generator with an optional minimum and
maximum size, defaults are 0 and 100 respectively.


```pony
fun box seq_of[T: T, S: Seq[T] ref](
  gen: Generator[T] box,
  min: USize val = 0,
  max: USize val = 100)
: Generator[S] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] box
*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[S\] box

---

### iso_seq_of\[T: [Any](builtin-Any.md) #send, S: [Seq](builtin-Seq.md)\[T\] iso\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L382)</span>


Generate a `Seq[T]` where `T` must be sendable (have a reference capability of `tag`, `val` or `iso`).

The constraint of the elements being sendable stems from the fact that there is no other way to populate
the iso seq if the elements might be non-sendable (i.e. ref), as then the seq would leak references via its elements.


```pony
fun box iso_seq_of[T: Any #send, S: Seq[T] iso](
  gen: Generator[T] box,
  min: USize val = 0,
  max: USize val = 100)
: Generator[S] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] box
*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[S\] box

---

### array_of\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L431)</span>


```pony
fun box array_of[T: T](
  gen: Generator[T] box,
  min: USize val = 0,
  max: USize val = 100)
: Generator[Array[T] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] box
*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[Array](builtin-Array.md)\[T\] ref\] box

---

### shuffled_array_gen\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L439)</span>


```pony
fun box shuffled_array_gen[T: T](
  gen: Generator[Array[T] ref] box)
: Generator[Array[T] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[[Array](builtin-Array.md)\[T\] ref\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[[Array](builtin-Array.md)\[T\] ref\] box

---

### shuffled_iter\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L460)</span>


```pony
fun box shuffled_iter[T: T](
  array: Array[T] ref)
: Generator[Iterator[this->T!] ref] box
```
#### Parameters

*   array: [Array](builtin-Array.md)\[T\] ref

#### Returns

* [Generator](ponycheck-Generator.md)\[[Iterator](builtin-Iterator.md)\[this->T!\] ref\] box

---

### list_of\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L470)</span>


```pony
fun box list_of[T: T](
  gen: Generator[T] box,
  min: USize val = 0,
  max: USize val = 100)
: Generator[List[T] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] box
*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[List](collections-List.md)\[T\] ref\] box

---

### set_of\[T: ([Hashable](collections-Hashable.md) #read & [Equatable](builtin-Equatable.md)\[T\] #read)\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L478)</span>


Create a generator for ``Set`` filled with values
of the given generator ``gen``.
The returned sets will have a size up to ``max``
but tend to have fewer than ``max``
depending on the source generator ``gen``.

E.g. if the given generator is for ``U8`` values and ``max`` is set to 1024
the set will only ever be of size 256 max.

Also for efficiency purposes and to not loop forever
this generator will only try to add at most ``max`` values to the set.
If there are duplicates, the set won't grow.


```pony
fun box set_of[T: (Hashable #read & Equatable[T] #read)](
  gen: Generator[T] box,
  max: USize val = 100)
: Generator[HashSet[T, HashEq[T] val] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] box
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[HashSet](collections-HashSet.md)\[T, [HashEq](collections-HashEq.md)\[T\] val\] ref\] box

---

### set_is_of\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L519)</span>


Create a generator for ``SetIs`` filled with values
of the given generator ``gen``.
The returned ``SetIs`` will have a size up to ``max``
but tend to have fewer entries
depending on the source generator ``gen``.

E.g. if the given generator is for ``U8`` values and ``max`` is set to 1024
the set will only ever be of size 256 max.

Also for efficiency purposes and to not loop forever
this generator will only try to add at most ``max`` values to the set.
If there are duplicates, the set won't grow.


```pony
fun box set_is_of[T: T](
  gen: Generator[T] box,
  max: USize val = 100)
: Generator[HashSet[T, HashIs[T!] val] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[T\] box
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[HashSet](collections-HashSet.md)\[T, [HashIs](collections-HashIs.md)\[T!\] val\] ref\] box

---

### map_of\[K: ([Hashable](collections-Hashable.md) #read & [Equatable](builtin-Equatable.md)\[K\] #read), V: V\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L561)</span>


Create a generator for ``Map`` from a generator of key-value tuples.
The generated maps will have a size up to ``max``
but tend to have fewer entries depending on the source generator ``gen``.

If the generator generates key-value pairs with
duplicate keys (based on structural equality)
the pair that is generated later will overwrite earlier entries in the map.


```pony
fun box map_of[K: (Hashable #read & Equatable[K] #read), V: V](
  gen: Generator[(K , V)] box,
  max: USize val = 100)
: Generator[HashMap[K, V, HashEq[K] val] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[(K , V)\] box
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[HashMap](collections-HashMap.md)\[K, V, [HashEq](collections-HashEq.md)\[K\] val\] ref\] box

---

### map_is_of\[K: K, V: V\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L598)</span>


Create a generator for ``MapIs`` from a generator of key-value tuples.
The generated maps will have a size up to ``max``
but tend to have fewer entries depending on the source generator ``gen``.

If the generator generates key-value pairs with
duplicate keys (based on identity)
the pair that is generated later will overwrite earlier entries in the map.


```pony
fun box map_is_of[K: K, V: V](
  gen: Generator[(K , V)] box,
  max: USize val = 100)
: Generator[HashMap[K, V, HashIs[K] val] ref] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[(K , V)\] box
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[HashMap](collections-HashMap.md)\[K, V, [HashIs](collections-HashIs.md)\[K\] val\] ref\] box

---

### one_of\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L635)</span>


Generate a random value from the given ReadSeq.
This generator will generate nothing if the given xs is empty.

Generators created with this method do not support shrinking.
If `do_shrink` is set to `true`, it will return the same value
for each shrink round. Otherwise it will return nothing.


```pony
fun box one_of[T: T](
  xs: ReadSeq[T] box,
  do_shrink: Bool val = false)
: Generator[box->T] box
```
#### Parameters

*   xs: [ReadSeq](builtin-ReadSeq.md)\[T\] box
*   do_shrink: [Bool](builtin-Bool.md) val = false

#### Returns

* [Generator](ponycheck-Generator.md)\[box->T\] box

---

### one_of_safe\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L657)</span>


Version of `one_of` that will error if `xs` is empty.


```pony
fun box one_of_safe[T: T](
  xs: ReadSeq[T] box,
  do_shrink: Bool val = false)
: Generator[box->T] box ?
```
#### Parameters

*   xs: [ReadSeq](builtin-ReadSeq.md)\[T\] box
*   do_shrink: [Bool](builtin-Bool.md) val = false

#### Returns

* [Generator](ponycheck-Generator.md)\[box->T\] box ?

---

### frequency\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L664)</span>


chose a value of one of the given Generators,
while controlling the distribution with the associated weights.

The weights are of type ``USize`` and control how likely a value is chosen.
The likelihood of a value ``v`` to be chosen
is ``weight_v`` / ``weights_sum``.
If all ``weighted_generators`` have equal size the distribution
will be uniform.

Example of a generator to output odd ``U8`` values
twice as likely as even ones:

```pony
Generators.frequency[U8]([
  (1, Generators.u8().filter({(u) => (u, (u % 2) == 0 }))
  (2, Generators.u8().filter({(u) => (u, (u % 2) != 0 }))
])
```


```pony
fun box frequency[T: T](
  weighted_generators: ReadSeq[(USize val , Generator[T] box)] box)
: Generator[T] box
```
#### Parameters

*   weighted_generators: [ReadSeq](builtin-ReadSeq.md)\[([USize](builtin-USize.md) val , [Generator](ponycheck-Generator.md)\[T\] box)\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[T\] box

---

### frequency_safe\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L725)</span>


Version of `frequency` that errors if the given `weighted_generators` is
empty.


```pony
fun box frequency_safe[T: T](
  weighted_generators: ReadSeq[(USize val , Generator[T] box)] box)
: Generator[T] box ?
```
#### Parameters

*   weighted_generators: [ReadSeq](builtin-ReadSeq.md)\[([USize](builtin-USize.md) val , [Generator](ponycheck-Generator.md)\[T\] box)\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[T\] box ?

---

### zip2\[T1: T1, T2: T2\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L737)</span>


zip two generators into a generator of a 2-tuple
containing the values generated by both generators.


```pony
fun box zip2[T1: T1, T2: T2](
  gen1: Generator[T1] box,
  gen2: Generator[T2] box)
: Generator[(T1 , T2)] box
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] box
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[(T1 , T2)\] box

---

### zip3\[T1: T1, T2: T2, T3: T3\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L764)</span>


zip three generators into a generator of a 3-tuple
containing the values generated by those three generators.


```pony
fun box zip3[T1: T1, T2: T2, T3: T3](
  gen1: Generator[T1] box,
  gen2: Generator[T2] box,
  gen3: Generator[T3] box)
: Generator[(T1 , T2 , T3)] box
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] box
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] box
*   gen3: [Generator](ponycheck-Generator.md)\[T3\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[(T1 , T2 , T3)\] box

---

### zip4\[T1: T1, T2: T2, T3: T3, T4: T4\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L796)</span>


zip four generators into a generator of a 4-tuple
containing the values generated by those four generators.


```pony
fun box zip4[T1: T1, T2: T2, T3: T3, T4: T4](
  gen1: Generator[T1] box,
  gen2: Generator[T2] box,
  gen3: Generator[T3] box,
  gen4: Generator[T4] box)
: Generator[(T1 , T2 , T3 , T4)] box
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] box
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] box
*   gen3: [Generator](ponycheck-Generator.md)\[T3\] box
*   gen4: [Generator](ponycheck-Generator.md)\[T4\] box

#### Returns

* [Generator](ponycheck-Generator.md)\[(T1 , T2 , T3 , T4)\] box

---

### map2\[T1: T1, T2: T2, T3: T3\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L833)</span>


convenience combinator for mapping 2 generators into 1


```pony
fun box map2[T1: T1, T2: T2, T3: T3](
  gen1: Generator[T1] box,
  gen2: Generator[T2] box,
  fn: {(T1, T2): T3^}[T1, T2, T3] ref)
: Generator[T3] box
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] box
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] box
*   fn: {(T1, T2): T3^}[T1, T2, T3] ref

#### Returns

* [Generator](ponycheck-Generator.md)\[T3\] box

---

### map3\[T1: T1, T2: T2, T3: T3, T4: T4\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L848)</span>


convenience combinator for mapping 3 generators into 1


```pony
fun box map3[T1: T1, T2: T2, T3: T3, T4: T4](
  gen1: Generator[T1] box,
  gen2: Generator[T2] box,
  gen3: Generator[T3] box,
  fn: {(T1, T2, T3): T4^}[T1, T2, T3, T4] ref)
: Generator[T4] box
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] box
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] box
*   gen3: [Generator](ponycheck-Generator.md)\[T3\] box
*   fn: {(T1, T2, T3): T4^}[T1, T2, T3, T4] ref

#### Returns

* [Generator](ponycheck-Generator.md)\[T4\] box

---

### map4\[T1: T1, T2: T2, T3: T3, T4: T4, T5: T5\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L864)</span>


convenience combinator for mapping 4 generators into 1


```pony
fun box map4[T1: T1, T2: T2, T3: T3, T4: T4, T5: T5](
  gen1: Generator[T1] box,
  gen2: Generator[T2] box,
  gen3: Generator[T3] box,
  gen4: Generator[T4] box,
  fn: {(T1, T2, T3, T4): T5^}[T1, T2, T3, T4, T5] ref)
: Generator[T5] box
```
#### Parameters

*   gen1: [Generator](ponycheck-Generator.md)\[T1\] box
*   gen2: [Generator](ponycheck-Generator.md)\[T2\] box
*   gen3: [Generator](ponycheck-Generator.md)\[T3\] box
*   gen4: [Generator](ponycheck-Generator.md)\[T4\] box
*   fn: {(T1, T2, T3, T4): T5^}[T1, T2, T3, T4, T5] ref

#### Returns

* [Generator](ponycheck-Generator.md)\[T5\] box

---

### bool
<span class="source-link">[[Source]](src/ponycheck/generator.md#L881)</span>


create a generator of bool values.


```pony
fun box bool()
: Generator[Bool val] box
```

#### Returns

* [Generator](ponycheck-Generator.md)\[[Bool](builtin-Bool.md) val\] box

---

### u8
<span class="source-link">[[Source]](src/ponycheck/generator.md#L949)</span>


create a generator for U8 values


```pony
fun box u8(
  min: U8 val = call,
  max: U8 val = call)
: Generator[U8 val] box
```
#### Parameters

*   min: [U8](builtin-U8.md) val = call
*   max: [U8](builtin-U8.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[U8](builtin-U8.md) val\] box

---

### u16
<span class="source-link">[[Source]](src/ponycheck/generator.md#L967)</span>


create a generator for U16 values


```pony
fun box u16(
  min: U16 val = call,
  max: U16 val = call)
: Generator[U16 val] box
```
#### Parameters

*   min: [U16](builtin-U16.md) val = call
*   max: [U16](builtin-U16.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[U16](builtin-U16.md) val\] box

---

### u32
<span class="source-link">[[Source]](src/ponycheck/generator.md#L985)</span>


create a generator for U32 values


```pony
fun box u32(
  min: U32 val = call,
  max: U32 val = call)
: Generator[U32 val] box
```
#### Parameters

*   min: [U32](builtin-U32.md) val = call
*   max: [U32](builtin-U32.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[U32](builtin-U32.md) val\] box

---

### u64
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1003)</span>


create a generator for U64 values


```pony
fun box u64(
  min: U64 val = call,
  max: U64 val = call)
: Generator[U64 val] box
```
#### Parameters

*   min: [U64](builtin-U64.md) val = call
*   max: [U64](builtin-U64.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[U64](builtin-U64.md) val\] box

---

### u128
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1021)</span>


create a generator for U128 values


```pony
fun box u128(
  min: U128 val = call,
  max: U128 val = call)
: Generator[U128 val] box
```
#### Parameters

*   min: [U128](builtin-U128.md) val = call
*   max: [U128](builtin-U128.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[U128](builtin-U128.md) val\] box

---

### usize
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1039)</span>


create a generator for USize values


```pony
fun box usize(
  min: USize val = call,
  max: USize val = call)
: Generator[USize val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = call
*   max: [USize](builtin-USize.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[USize](builtin-USize.md) val\] box

---

### ulong
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1057)</span>


create a generator for ULong values


```pony
fun box ulong(
  min: ULong val = call,
  max: ULong val = call)
: Generator[ULong val] box
```
#### Parameters

*   min: [ULong](builtin-ULong.md) val = call
*   max: [ULong](builtin-ULong.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[ULong](builtin-ULong.md) val\] box

---

### i8
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1075)</span>


create a generator for I8 values


```pony
fun box i8(
  min: I8 val = call,
  max: I8 val = call)
: Generator[I8 val] box
```
#### Parameters

*   min: [I8](builtin-I8.md) val = call
*   max: [I8](builtin-I8.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[I8](builtin-I8.md) val\] box

---

### i16
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1093)</span>


create a generator for I16 values


```pony
fun box i16(
  min: I16 val = call,
  max: I16 val = call)
: Generator[I16 val] box
```
#### Parameters

*   min: [I16](builtin-I16.md) val = call
*   max: [I16](builtin-I16.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[I16](builtin-I16.md) val\] box

---

### i32
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1111)</span>


create a generator for I32 values


```pony
fun box i32(
  min: I32 val = call,
  max: I32 val = call)
: Generator[I32 val] box
```
#### Parameters

*   min: [I32](builtin-I32.md) val = call
*   max: [I32](builtin-I32.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[I32](builtin-I32.md) val\] box

---

### i64
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1129)</span>


create a generator for I64 values


```pony
fun box i64(
  min: I64 val = call,
  max: I64 val = call)
: Generator[I64 val] box
```
#### Parameters

*   min: [I64](builtin-I64.md) val = call
*   max: [I64](builtin-I64.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[I64](builtin-I64.md) val\] box

---

### i128
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1147)</span>


create a generator for I128 values


```pony
fun box i128(
  min: I128 val = call,
  max: I128 val = call)
: Generator[I128 val] box
```
#### Parameters

*   min: [I128](builtin-I128.md) val = call
*   max: [I128](builtin-I128.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[I128](builtin-I128.md) val\] box

---

### ilong
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1165)</span>


create a generator for ILong values


```pony
fun box ilong(
  min: ILong val = call,
  max: ILong val = call)
: Generator[ILong val] box
```
#### Parameters

*   min: [ILong](builtin-ILong.md) val = call
*   max: [ILong](builtin-ILong.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[ILong](builtin-ILong.md) val\] box

---

### isize
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1183)</span>


create a generator for ISize values


```pony
fun box isize(
  min: ISize val = call,
  max: ISize val = call)
: Generator[ISize val] box
```
#### Parameters

*   min: [ISize](builtin-ISize.md) val = call
*   max: [ISize](builtin-ISize.md) val = call

#### Returns

* [Generator](ponycheck-Generator.md)\[[ISize](builtin-ISize.md) val\] box

---

### byte_string
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1202)</span>


create a generator for strings
generated from the bytes returned by the generator ``gen``
with a minimum length of ``min`` (default: 0)
and a maximum length of ``max`` (default: 100).


```pony
fun box byte_string(
  gen: Generator[U8 val] box,
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[[U8](builtin-U8.md) val\] box
*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### ascii
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1251)</span>


create a generator for strings withing the given ``range``
with a minimum length of ``min`` (default: 0)
and a maximum length of ``max`` (default: 100).


```pony
fun box ascii(
  min: USize val = 0,
  max: USize val = 100,
  range: (ASCIINUL val | ASCIIDigits val | ASCIIWhiteSpace val | 
    ASCIIPunctuation val | ASCIILettersLower val | ASCIILettersUpper val | 
    ASCIILetters val | ASCIIPrintable val | ASCIINonPrintable val | 
    ASCIIAll val | ASCIIAllWithNUL val) = reference)
: Generator[String val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100
*   range: ([ASCIINUL](ponycheck-ASCIINUL.md) val | [ASCIIDigits](ponycheck-ASCIIDigits.md) val | [ASCIIWhiteSpace](ponycheck-ASCIIWhiteSpace.md) val | 
    [ASCIIPunctuation](ponycheck-ASCIIPunctuation.md) val | [ASCIILettersLower](ponycheck-ASCIILettersLower.md) val | [ASCIILettersUpper](ponycheck-ASCIILettersUpper.md) val | 
    [ASCIILetters](ponycheck-ASCIILetters.md) val | [ASCIIPrintable](ponycheck-ASCIIPrintable.md) val | [ASCIINonPrintable](ponycheck-ASCIINonPrintable.md) val | 
    [ASCIIAll](ponycheck-ASCIIAll.md) val | [ASCIIAllWithNUL](ponycheck-ASCIIAllWithNUL.md) val) = reference

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### ascii_printable
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1274)</span>


create a generator for strings of printable ascii characters
with a minimum length of ``min`` (default: 0)
and a maximum length of ``max`` (default: 100).


```pony
fun box ascii_printable(
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### ascii_numeric
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1286)</span>


create a generator for strings of numeric ascii characters
with a minimum length of ``min`` (default: 0)
and a maximum length of ``max`` (default: 100).


```pony
fun box ascii_numeric(
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### ascii_letters
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1298)</span>


create a generator for strings of ascii letters
with a minimum length of ``min`` (default: 0)
and a maximum length of ``max`` (default: 100).


```pony
fun box ascii_letters(
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### utf32_codepoint_string
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1310)</span>


create a generator for strings
from a generator of unicode codepoints
with a minimum length of ``min`` codepoints (default: 0)
and a maximum length of ``max`` codepoints (default: 100).

Note that the byte length of the generated string can be up to 4 times
the size in code points.


```pony
fun box utf32_codepoint_string(
  gen: Generator[U32 val] box,
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   gen: [Generator](ponycheck-Generator.md)\[[U32](builtin-U32.md) val\] box
*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### unicode
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1376)</span>


create a generator for unicode strings
with a minimum length of ``min`` codepoints (default: 0)
and a maximum length of ``max`` codepoints (default: 100).

Note that the byte length of the generated string can be up to 4 times
the size in code points.


```pony
fun box unicode(
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### unicode_bmp
<span class="source-link">[[Source]](src/ponycheck/generator.md#L1403)</span>


create a generator for unicode strings
from the basic multilingual plane only
with a minimum length of ``min`` codepoints (default: 0)
and a maximum length of ``max`` codepoints (default: 100).

Note that the byte length of the generated string can be up to 4 times
the size in code points.


```pony
fun box unicode_bmp(
  min: USize val = 0,
  max: USize val = 100)
: Generator[String val] box
```
#### Parameters

*   min: [USize](builtin-USize.md) val = 0
*   max: [USize](builtin-USize.md) val = 100

#### Returns

* [Generator](ponycheck-Generator.md)\[[String](builtin-String.md) val\] box

---

### eq
<span class="source-link">[[Source]](src/ponycheck/generator.md#L299)</span>


```pony
fun box eq(
  that: Generators val)
: Bool val
```
#### Parameters

*   that: [Generators](ponycheck-Generators.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/ponycheck/generator.md#L299)</span>


```pony
fun box ne(
  that: Generators val)
: Bool val
```
#### Parameters

*   that: [Generators](ponycheck-Generators.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

