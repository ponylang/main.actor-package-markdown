# SipHash24Streaming
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L2)</span>

Provides SipHash24 for non-array data
given as separate `U64`s.

### Usage:

```pony
use "collections"

actor Main
  new create(env: Env) =>
    try
      let sip = SipHash24Streaming.create()
      for x in Range[U64](1, 100).values() do
        // feed consecutive U64s to be hashed
        sip.update(x)
      end
      // execute finishing steps, reset internal state so this instance can be
      // reused, and output the computed hash
      let hash = sip.finish()
      env.out.print("HASHED: " + hash.string())
    end
```



```pony
class ref SipHash24Streaming
```

## Constructors

### create
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L35)</span>


```pony
new ref create()
: SipHash24Streaming ref^
```

#### Returns

* [SipHash24Streaming](valbytes-SipHash24Streaming.md) ref^

---

## Public Functions

### reset
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L38)</span>


Reset the internal state.


```pony
fun ref reset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### update
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L48)</span>


Hash the given `m` and update the internal state accordingly.


```pony
fun ref update(
  m: U64 val)
: None val
```
#### Parameters

*   m: [U64](builtin-U64.md) val

#### Returns

* [None](builtin-None.md) val

---

### finish
<span class="source-link">[[Source]](src/valbytes/_siphash.md#L58)</span>


This method finally computes the hash from all the data added with `update`,
and resets the internal state,
so this instance can be conveniently reused for another hash calculation.


```pony
fun ref finish()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

