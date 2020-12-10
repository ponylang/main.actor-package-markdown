# Randomness
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L3)</span>

Source of randomness, providing methods for generatic uniformly distributed
values from a given closed interval: [min, max]
in order for the user to be able to generate every possible value for a given
primitive numeric type.

All primitive number method create numbers in range [min, max)


```pony
class ref Randomness
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L14)</span>


```pony
new ref create(
  seed1: U64 val = 42,
  seed2: U64 val = 0)
: Randomness ref^
```
#### Parameters

*   seed1: [U64](builtin-U64.md) val = 42
*   seed2: [U64](builtin-U64.md) val = 0

#### Returns

* [Randomness](ponycheck-Randomness.md) ref^

---

## Public Functions

### u8
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L17)</span>


generates a U8 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref u8(
  min: U8 val = call,
  max: U8 val = call)
: U8 val
```
#### Parameters

*   min: [U8](builtin-U8.md) val = call
*   max: [U8](builtin-U8.md) val = call

#### Returns

* [U8](builtin-U8.md) val

---

### u16
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L30)</span>


generates a U16 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref u16(
  min: U16 val = call,
  max: U16 val = call)
: U16 val
```
#### Parameters

*   min: [U16](builtin-U16.md) val = call
*   max: [U16](builtin-U16.md) val = call

#### Returns

* [U16](builtin-U16.md) val

---

### u32
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L43)</span>


generates a U32 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref u32(
  min: U32 val = call,
  max: U32 val = call)
: U32 val
```
#### Parameters

*   min: [U32](builtin-U32.md) val = call
*   max: [U32](builtin-U32.md) val = call

#### Returns

* [U32](builtin-U32.md) val

---

### u64
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L56)</span>


generates a U64 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref u64(
  min: U64 val = call,
  max: U64 val = call)
: U64 val
```
#### Parameters

*   min: [U64](builtin-U64.md) val = call
*   max: [U64](builtin-U64.md) val = call

#### Returns

* [U64](builtin-U64.md) val

---

### u128
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L81)</span>


generates a U128 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref u128(
  min: U128 val = call,
  max: U128 val = call)
: U128 val
```
#### Parameters

*   min: [U128](builtin-U128.md) val = call
*   max: [U128](builtin-U128.md) val = call

#### Returns

* [U128](builtin-U128.md) val

---

### ulong
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L114)</span>


generates a ULong in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref ulong(
  min: ULong val = call,
  max: ULong val = call)
: ULong val
```
#### Parameters

*   min: [ULong](builtin-ULong.md) val = call
*   max: [ULong](builtin-ULong.md) val = call

#### Returns

* [ULong](builtin-ULong.md) val

---

### usize
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L127)</span>


generates a USize in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref usize(
  min: USize val = call,
  max: USize val = call)
: USize val
```
#### Parameters

*   min: [USize](builtin-USize.md) val = call
*   max: [USize](builtin-USize.md) val = call

#### Returns

* [USize](builtin-USize.md) val

---

### i8
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L140)</span>


generates a I8 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref i8(
  min: I8 val = call,
  max: I8 val = call)
: I8 val
```
#### Parameters

*   min: [I8](builtin-I8.md) val = call
*   max: [I8](builtin-I8.md) val = call

#### Returns

* [I8](builtin-I8.md) val

---

### i16
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L149)</span>


generates a I16 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref i16(
  min: I16 val = call,
  max: I16 val = call)
: I16 val
```
#### Parameters

*   min: [I16](builtin-I16.md) val = call
*   max: [I16](builtin-I16.md) val = call

#### Returns

* [I16](builtin-I16.md) val

---

### i32
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L158)</span>


generates a I32 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref i32(
  min: I32 val = call,
  max: I32 val = call)
: I32 val
```
#### Parameters

*   min: [I32](builtin-I32.md) val = call
*   max: [I32](builtin-I32.md) val = call

#### Returns

* [I32](builtin-I32.md) val

---

### i64
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L167)</span>


generates a I64 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref i64(
  min: I64 val = call,
  max: I64 val = call)
: I64 val
```
#### Parameters

*   min: [I64](builtin-I64.md) val = call
*   max: [I64](builtin-I64.md) val = call

#### Returns

* [I64](builtin-I64.md) val

---

### i128
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L177)</span>


generates a I128 in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref i128(
  min: I128 val = call,
  max: I128 val = call)
: I128 val
```
#### Parameters

*   min: [I128](builtin-I128.md) val = call
*   max: [I128](builtin-I128.md) val = call

#### Returns

* [I128](builtin-I128.md) val

---

### ilong
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L191)</span>


generates a ILong in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref ilong(
  min: ILong val = call,
  max: ILong val = call)
: ILong val
```
#### Parameters

*   min: [ILong](builtin-ILong.md) val = call
*   max: [ILong](builtin-ILong.md) val = call

#### Returns

* [ILong](builtin-ILong.md) val

---

### isize
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L204)</span>


generates a ISize in closed interval [min, max]
(default: [min_value, max_value])

behavior is undefined if min > max.


```pony
fun ref isize(
  min: ISize val = call,
  max: ISize val = call)
: ISize val
```
#### Parameters

*   min: [ISize](builtin-ISize.md) val = call
*   max: [ISize](builtin-ISize.md) val = call

#### Returns

* [ISize](builtin-ISize.md) val

---

### f32
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L218)</span>


generates a F32 in closed interval [min, max]
(default: [0.0, 1.0])


```pony
fun ref f32(
  min: F32 val = 0.0,
  max: F32 val = 1.0)
: F32 val
```
#### Parameters

*   min: [F32](builtin-F32.md) val = 0.0
*   max: [F32](builtin-F32.md) val = 1.0

#### Returns

* [F32](builtin-F32.md) val

---

### f64
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L226)</span>


generates a F64 in closed interval [min, max]
(default: [0.0, 1.0])


```pony
fun ref f64(
  min: F64 val = 0.0,
  max: F64 val = 1.0)
: F64 val
```
#### Parameters

*   min: [F64](builtin-F64.md) val = 0.0
*   max: [F64](builtin-F64.md) val = 1.0

#### Returns

* [F64](builtin-F64.md) val

---

### bool
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L233)</span>


generates a random Bool value


```pony
fun ref bool()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### shuffle\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/randomness.md#L239)</span>


```pony
fun ref shuffle[T: T](
  array: Array[T] ref)
: None val
```
#### Parameters

*   array: [Array](builtin-Array.md)\[T\] ref

#### Returns

* [None](builtin-None.md) val

---

