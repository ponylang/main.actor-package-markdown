# Arg
<span class="source-link">[[Source]](src/cli/command.md#L122)</span>

Arg contains a spec and an effective value for a given arg.


```pony
class val Arg
```

## Constructors

### create
<span class="source-link">[[Source]](src/cli/command.md#L129)</span>


```pony
new val create(
  spec': ArgSpec val,
  value': (Bool val | String val | I64 val | 
    U64 val | F64 val | _StringSeq val))
: Arg val^
```
#### Parameters

*   spec': [ArgSpec](cli-ArgSpec.md) val
*   value': ([Bool](builtin-Bool.md) val | [String](builtin-String.md) val | [I64](builtin-I64.md) val | 
    [U64](builtin-U64.md) val | [F64](builtin-F64.md) val | _StringSeq val)

#### Returns

* [Arg](cli-Arg.md) val^

---

## Public Functions

### spec
<span class="source-link">[[Source]](src/cli/command.md#L136)</span>


```pony
fun box spec()
: ArgSpec val
```

#### Returns

* [ArgSpec](cli-ArgSpec.md) val

---

### bool
<span class="source-link">[[Source]](src/cli/command.md#L138)</span>


Returns the arg value as a Bool, defaulting to false.


```pony
fun box bool()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### string
<span class="source-link">[[Source]](src/cli/command.md#L144)</span>


Returns the arg value as a String, defaulting to empty.


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### i64
<span class="source-link">[[Source]](src/cli/command.md#L150)</span>


Returns the arg value as an I64, defaulting to 0.


```pony
fun box i64()
: I64 val
```

#### Returns

* [I64](builtin-I64.md) val

---

### u64
<span class="source-link">[[Source]](src/cli/command.md#L156)</span>


Returns the arg value as an U64, defaulting to 0.


```pony
fun box u64()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### f64
<span class="source-link">[[Source]](src/cli/command.md#L162)</span>


Returns the arg value as an F64, defaulting to 0.0.


```pony
fun box f64()
: F64 val
```

#### Returns

* [F64](builtin-F64.md) val

---

### string_seq
<span class="source-link">[[Source]](src/cli/command.md#L168)</span>


Returns the arg value as a ReadSeq[String], defaulting to empty.


```pony
fun box string_seq()
: ReadSeq[String val] val
```

#### Returns

* [ReadSeq](builtin-ReadSeq.md)\[[String](builtin-String.md) val\] val

---

### deb_string
<span class="source-link">[[Source]](src/cli/command.md#L178)</span>


```pony
fun box deb_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

