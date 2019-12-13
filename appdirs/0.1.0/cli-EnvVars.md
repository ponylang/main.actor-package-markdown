# EnvVars
<span class="source-link">[[Source]](src/cli/env_vars.md#L3)</span>
```pony
primitive val EnvVars
```

## Constructors

### create
<span class="source-link">[[Source]](src/cli/env_vars.md#L3)</span>


```pony
new val create()
: EnvVars val^
```

#### Returns

* [EnvVars](cli-EnvVars.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/cli/env_vars.md#L4)</span>


Turns an array of strings that look like environment variables, ie.
key=value, into a map of string to string. Can optionally filter for
keys matching a 'prefix', and will squash resulting keys to lowercase
iff 'squash' is true.

So:
  <PREFIX><KEY>=<VALUE>
becomes:
  {KEY, VALUE} or {key, VALUE}


```pony
fun box apply(
  envs: (Array[String val] box | None val),
  prefix: String val = "",
  squash: Bool val = false)
: HashMap[String val, String val, HashEq[String val] val] val
```
#### Parameters

*   envs: ([Array](builtin-Array.md)\[[String](builtin-String.md) val\] box | [None](builtin-None.md) val)
*   prefix: [String](builtin-String.md) val = ""
*   squash: [Bool](builtin-Bool.md) val = false

#### Returns

* [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, [String](builtin-String.md) val, [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] val

---

### eq
<span class="source-link">[[Source]](src/cli/env_vars.md#L4)</span>


```pony
fun box eq(
  that: EnvVars val)
: Bool val
```
#### Parameters

*   that: [EnvVars](cli-EnvVars.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/cli/env_vars.md#L4)</span>


```pony
fun box ne(
  that: EnvVars val)
: Bool val
```
#### Parameters

*   that: [EnvVars](cli-EnvVars.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

