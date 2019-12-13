# OptionSpec
<span class="source-link">[[Source]](src/cli/command_spec.md#L159)</span>

OptionSpec describes the specification of a named Option. They have a name,
descr(iption), a short-name, a typ(e), and a default value when they are not
required.

Options can be placed anywhere before or after commands, and can be thought
of as named arguments.


```pony
class val OptionSpec
```

## Constructors

### bool
<span class="source-link">[[Source]](src/cli/command_spec.md#L183)</span>


Creates an Option with a Bool typed value that can be used like
  `--opt` or `-O` or `--opt=true` or `-O=true`
to yield an option value like
  `cmd.option("opt").bool() == true`.


```pony
new val bool(
  name': String val,
  descr': String val = "",
  short': (U8 val | None val) = reference,
  default': (Bool val | None val) = reference)
: OptionSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   short': ([U8](builtin-U8.md) val | [None](builtin-None.md) val) = reference
*   default': ([Bool](builtin-Bool.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [OptionSpec](cli-OptionSpec.md) val^

---

### string
<span class="source-link">[[Source]](src/cli/command_spec.md#L200)</span>


Creates an Option with a String typed value that can be used like
  `--file=dir/filename` or `-F=dir/filename` or `-Fdir/filename`
to yield an option value like
  `cmd.option("file").string() == "dir/filename"`.


```pony
new val string(
  name': String val,
  descr': String val = "",
  short': (U8 val | None val) = reference,
  default': (String val | None val) = reference)
: OptionSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   short': ([U8](builtin-U8.md) val | [None](builtin-None.md) val) = reference
*   default': ([String](builtin-String.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [OptionSpec](cli-OptionSpec.md) val^

---

### i64
<span class="source-link">[[Source]](src/cli/command_spec.md#L217)</span>


Creates an Option with an I64 typed value that can be used like
  `--count=42 -C=42`
to yield an option value like
  `cmd.option("count").i64() == I64(42)`.


```pony
new val i64(
  name': String val,
  descr': String val = "",
  short': (U8 val | None val) = reference,
  default': (I64 val | None val) = reference)
: OptionSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   short': ([U8](builtin-U8.md) val | [None](builtin-None.md) val) = reference
*   default': ([I64](builtin-I64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [OptionSpec](cli-OptionSpec.md) val^

---

### u64
<span class="source-link">[[Source]](src/cli/command_spec.md#L233)</span>


Creates an Option with an U64 typed value that can be used like
  `--count=47 -C=47`
to yield an option value like
  `cmd.option("count").u64() == U64(47)`.


```pony
new val u64(
  name': String val,
  descr': String val = "",
  short': (U8 val | None val) = reference,
  default': (U64 val | None val) = reference)
: OptionSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   short': ([U8](builtin-U8.md) val | [None](builtin-None.md) val) = reference
*   default': ([U64](builtin-U64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [OptionSpec](cli-OptionSpec.md) val^

---

### f64
<span class="source-link">[[Source]](src/cli/command_spec.md#L249)</span>


Creates an Option with a F64 typed value that can be used like
  `--ratio=1.039` or `-R=1.039`
to yield an option value like
  `cmd.option("ratio").f64() == F64(1.039)`.


```pony
new val f64(
  name': String val,
  descr': String val = "",
  short': (U8 val | None val) = reference,
  default': (F64 val | None val) = reference)
: OptionSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   short': ([U8](builtin-U8.md) val | [None](builtin-None.md) val) = reference
*   default': ([F64](builtin-F64.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [OptionSpec](cli-OptionSpec.md) val^

---

### string_seq
<span class="source-link">[[Source]](src/cli/command_spec.md#L265)</span>


Creates an Option with a ReadSeq[String] typed value that can be used like
  `--files=file1 --files=files2 --files=files2`
to yield a sequence of three strings equivalent to
  `cmd.option("ratio").string_seq() (equiv) ["file1"; "file2"; "file3"]`.


```pony
new val string_seq(
  name': String val,
  descr': String val = "",
  short': (U8 val | None val) = reference)
: OptionSpec val^
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   short': ([U8](builtin-U8.md) val | [None](builtin-None.md) val) = reference

#### Returns

* [OptionSpec](cli-OptionSpec.md) val^

---

## Public Functions

### name
<span class="source-link">[[Source]](src/cli/command_spec.md#L281)</span>


Returns the name of this option.


```pony
fun box name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### descr
<span class="source-link">[[Source]](src/cli/command_spec.md#L287)</span>


Returns the description for this option.


```pony
fun box descr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### required
<span class="source-link">[[Source]](src/cli/command_spec.md#L297)</span>


Returns true iff this option is required to be present in the command line.


```pony
fun box required()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### help_string
<span class="source-link">[[Source]](src/cli/command_spec.md#L326)</span>


Returns a formated help string for this option.


```pony
fun box help_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### deb_string
<span class="source-link">[[Source]](src/cli/command_spec.md#L339)</span>


```pony
fun box deb_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

