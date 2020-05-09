# IntPropertySample
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L24)</span>
```pony
class ref IntPropertySample is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L28)</span>


```pony
new ref create(
  choice': U8 val,
  int': U128 val)
: IntPropertySample ref^
```
#### Parameters

*   choice': [U8](builtin-U8.md) val
*   int': [U128](builtin-U128.md) val

#### Returns

* [IntPropertySample](ponycheck-IntPropertySample.md) ref^

---

## Public fields

### let choice: [U8](builtin-U8.md) val
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L25)</span>



---

### let int: [U128](builtin-U128.md) val
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L26)</span>



---

## Public Functions

### string
<span class="source-link">[[Source]](src/ponycheck/int_properties.md#L32)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

