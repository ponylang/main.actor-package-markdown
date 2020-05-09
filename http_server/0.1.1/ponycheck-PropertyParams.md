# PropertyParams
<span class="source-link">[[Source]](src/ponycheck/property.md#L3)</span>

Parameters to control Property Execution

* seed: the seed for the source of Randomness
* num_samples: the number of samples to produce from the property generator
* max_shrink_rounds: the maximum rounds of shrinking to perform
* max_generator_retries: the maximum number of retries to do if a generator fails to generate a sample
* timeout: the timeout for the ponytest runner, in nanoseconds
* async: if true the property is expected to finish asynchronously by calling
  `PropertyHelper.complete(...)`


```pony
class val PropertyParams is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/property.md#L22)</span>


```pony
new val create(
  num_samples': USize val = 100,
  seed': U64 val = call,
  max_shrink_rounds': USize val = 10,
  max_generator_retries': USize val = 5,
  timeout': U64 val = 60000000000,
  async': Bool val = false)
: PropertyParams val^
```
#### Parameters

*   num_samples': [USize](builtin-USize.md) val = 100
*   seed': [U64](builtin-U64.md) val = call
*   max_shrink_rounds': [USize](builtin-USize.md) val = 10
*   max_generator_retries': [USize](builtin-USize.md) val = 5
*   timeout': [U64](builtin-U64.md) val = 60000000000
*   async': [Bool](builtin-Bool.md) val = false

#### Returns

* [PropertyParams](ponycheck-PropertyParams.md) val^

---

## Public fields

### let seed: [U64](builtin-U64.md) val
<span class="source-link">[[Source]](src/ponycheck/property.md#L15)</span>



---

### let num_samples: [USize](builtin-USize.md) val
<span class="source-link">[[Source]](src/ponycheck/property.md#L16)</span>



---

### let max_shrink_rounds: [USize](builtin-USize.md) val
<span class="source-link">[[Source]](src/ponycheck/property.md#L17)</span>



---

### let max_generator_retries: [USize](builtin-USize.md) val
<span class="source-link">[[Source]](src/ponycheck/property.md#L18)</span>



---

### let timeout: [U64](builtin-U64.md) val
<span class="source-link">[[Source]](src/ponycheck/property.md#L19)</span>



---

### let async: [Bool](builtin-Bool.md) val
<span class="source-link">[[Source]](src/ponycheck/property.md#L20)</span>



---

## Public Functions

### string
<span class="source-link">[[Source]](src/ponycheck/property.md#L37)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

