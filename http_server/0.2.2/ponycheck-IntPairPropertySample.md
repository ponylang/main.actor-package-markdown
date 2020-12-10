# IntPairPropertySample
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L82)</span>
```pony
class ref IntPairPropertySample is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L87)</span>


```pony
new ref create(
  choice': U8 val,
  int1': U128 val,
  int2': U128 val)
: IntPairPropertySample ref^
```
#### Parameters

*   choice': [U8](builtin-U8.md) val
*   int1': [U128](builtin-U128.md) val
*   int2': [U128](builtin-U128.md) val

#### Returns

* [IntPairPropertySample](ponycheck-IntPairPropertySample.md) ref^

---

## Public fields

### let choice: [U8](builtin-U8.md) val
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L83)</span>



---

### let int1: [U128](builtin-U128.md) val
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L84)</span>



---

### let int2: [U128](builtin-U128.md) val
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L85)</span>



---

## Public Functions

### string
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L92)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

