# CountdownIter\[optional T: (([I8](builtin-I8.md) val | [I16](builtin-I16.md) val | [I32](builtin-I32.md) val | [I64](builtin-I64.md) val | [I128](builtin-I128.md) val | [ILong](builtin-ILong.md) val | [ISize](builtin-ISize.md) val | [U8](builtin-U8.md) val | [U16](builtin-U16.md) val | [U32](builtin-U32.md) val | [U64](builtin-U64.md) val | [U128](builtin-U128.md) val | [ULong](builtin-ULong.md) val | [USize](builtin-USize.md) val) & [Integer](builtin-Integer.md)\[T\] val)\]
<span class="source-link">[[Source]](src/ponycheck/generator.md#L20)</span>

workaround until 0.21.0 is released and Range supports negative steps

`from` is exclusive, `to` is inclusive


```pony
class ref CountdownIter[optional T: ((I8 val | I16 val | I32 val | 
    I64 val | I128 val | ILong val | 
    ISize val | U8 val | U16 val | 
    U32 val | U64 val | U128 val | 
    ULong val | USize val) & Integer[T] val)] is
  Iterator[T] ref
```

#### Implements

* [Iterator](builtin-Iterator.md)\[T\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/generator.md#L29)</span>


```pony
new ref create(
  from: T,
  to: T = call)
: CountdownIter[T] ref^
```
#### Parameters

*   from: T
*   to: T = call

#### Returns

* [CountdownIter](ponycheck-CountdownIter.md)\[T\] ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/ponycheck/generator.md#L33)</span>


```pony
fun ref has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/ponycheck/generator.md#L36)</span>


```pony
fun ref next()
: T
```

#### Returns

* T

---

