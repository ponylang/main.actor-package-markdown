# ArgSpec
<span class="source-link">[[Source]](src/cli/command_spec.md#L343)</span>

ArgSpec describes the specification of a positional Arg(ument). They have a
name, descr(iption), a typ(e), and a default value when they are not
required.

Args always come after a leaf command, and are assigned in their positional
order.


```pony
class val ArgSpec
```

## Constructors

### bool
<span class="source-link">[[Source]](src/cli/command_spec.md#L366)</span>


Creates an Arg with a Bool typed value that can be used like
  `<cmd> true`
to yield an arg value like
  `cmd.arg("opt").bool() == true`.


```pony
new val bool(
  name': String val,
  descr': String val = "",
  default': (Bool val | None val) = reference)
: ArgSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   default': ([Bool](builtin-Bool.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [ArgSpec](cli-ArgSpec.md) val^

---

### string
<span class="source-link">[[Source]](src/cli/command_spec.md#L381)</span>


Creates an Arg with a String typed value that can be used like
  `<cmd> filename`
to yield an arg value
  `cmd.arg("file").string() == "filename"`.


```pony
new val string(
  name': String val,
  descr': String val = "",
  default': (String val | None val) = reference)
: ArgSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   default': ([String](builtin-String.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [ArgSpec](cli-ArgSpec.md) val^

---

### i64
<span class="source-link">[[Source]](src/cli/command_spec.md#L396)</span>


Creates an Arg with an I64 typed value that can be used like
  `<cmd> 42`
to yield an arg value like
  `cmd.arg("count").i64() == I64(42)`.


```pony
new val i64(
  name': String val,
  descr': String val = "",
  default': (I64 val | None val) = reference)
: ArgSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   default': ([I64](builtin-I64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [ArgSpec](cli-ArgSpec.md) val^

---

### u64
<span class="source-link">[[Source]](src/cli/command_spec.md#L410)</span>


Creates an Arg with an U64 typed value that can be used like
  `<cmd> 47`
to yield an arg value like
  `cmd.arg("count").u64() == U64(47)`.


```pony
new val u64(
  name': String val,
  descr': String val = "",
  default': (U64 val | None val) = reference)
: ArgSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   default': ([U64](builtin-U64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [ArgSpec](cli-ArgSpec.md) val^

---

### f64
<span class="source-link">[[Source]](src/cli/command_spec.md#L424)</span>


Creates an Arg with a F64 typed value that can be used like
  `<cmd> 1.039`
to yield an arg value like
  `cmd.arg("ratio").f64() == F64(1.039)`.


```pony
new val f64(
  name': String val,
  descr': String val = "",
  default': (F64 val | None val) = reference)
: ArgSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   default': ([F64](builtin-F64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [ArgSpec](cli-ArgSpec.md) val^

---

### string_seq
<span class="source-link">[[Source]](src/cli/command_spec.md#L438)</span>


Creates an Arg with a ReadSeq[String] typed value that can be used like
  `<cmd> file1 file2 file3`
to yield a sequence of three strings equivalent to
  `cmd.arg("file").string_seq() (equiv) ["file1"; "file2"; "file3"]`.


```pony
new val string_seq(
  name': String val,
  descr': String val = "")
: ArgSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""

#### Returns

* [ArgSpec](cli-ArgSpec.md) val^

---

## Public Functions

### name
<span class="source-link">[[Source]](src/cli/command_spec.md#L452)</span>


Returns the name of this arg.


```pony
fun box name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### descr
<span class="source-link">[[Source]](src/cli/command_spec.md#L458)</span>


Returns the description for this arg.


```pony
fun box descr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### required
<span class="source-link">[[Source]](src/cli/command_spec.md#L468)</span>


Returns true iff this arg is required to be present in the command line.


```pony
fun box required()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### help_string
<span class="source-link">[[Source]](src/cli/command_spec.md#L474)</span>


Returns a formated help string for this arg.


```pony
fun box help_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### deb_string
<span class="source-link">[[Source]](src/cli/command_spec.md#L480)</span>


```pony
fun box deb_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

