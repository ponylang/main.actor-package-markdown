# CommandSpec
<span class="source-link">[[Source]](src/cli/command_spec.md#L9)</span>

CommandSpec describes the specification of a parent or leaf command. Each
command has the following attributes:

- a name: a simple string token that identifies the command.
- a description: used in the syntax message.
- a map of options: the valid options for this command.
- an optional help option+command name for help parsing
- one of:
   - a Map of child commands.
   - an Array of arguments.


```pony
class ref CommandSpec
```

## Constructors

### parent
<span class="source-link">[[Source]](src/cli/command_spec.md#L33)</span>


Creates a command spec that can accept options and child commands, but not
arguments.


```pony
new ref parent(
  name': String val,
  descr': String val = "",
  options': Array[OptionSpec val] box = call,
  commands': Array[CommandSpec ref] box = call)
: CommandSpec ref^ ?
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   options': [Array](builtin-Array.md)\[[OptionSpec](cli-OptionSpec.md) val\] box = call
*   commands': [Array](builtin-Array.md)\[[CommandSpec](cli-CommandSpec.md) ref\] box = call

#### Returns

* [CommandSpec](cli-CommandSpec.md) ref^ ?

---

### leaf
<span class="source-link">[[Source]](src/cli/command_spec.md#L53)</span>


Creates a command spec that can accept options and arguments, but not child
commands.


```pony
new ref leaf(
  name': String val,
  descr': String val = "",
  options': Array[OptionSpec val] box = call,
  args': Array[ArgSpec val] box = call)
: CommandSpec ref^ ?
```
#### Parameters

*   name': [String](builtin-String.md) val
*   descr': [String](builtin-String.md) val = ""
*   options': [Array](builtin-Array.md)\[[OptionSpec](cli-OptionSpec.md) val\] box = call
*   args': [Array](builtin-Array.md)\[[ArgSpec](cli-ArgSpec.md) val\] box = call

#### Returns

* [CommandSpec](cli-CommandSpec.md) ref^ ?

---

## Public Functions

### add_command
<span class="source-link">[[Source]](src/cli/command_spec.md#L84)</span>


Adds an additional child command to this parent command.


```pony
fun ref add_command(
  cmd: CommandSpec box)
: None val ?
```
#### Parameters

*   cmd: [CommandSpec](cli-CommandSpec.md) box

#### Returns

* [None](builtin-None.md) val ?

---

### add_help
<span class="source-link">[[Source]](src/cli/command_spec.md#L91)</span>


Adds a standard help option and, optionally command, to a root command.


```pony
fun ref add_help(
  hname: String val = "help",
  descr': String val = "")
: None val ?
```
#### Parameters

*   hname: [String](builtin-String.md) val = "help"
*   descr': [String](builtin-String.md) val = ""

#### Returns

* [None](builtin-None.md) val ?

---

### name
<span class="source-link">[[Source]](src/cli/command_spec.md#L106)</span>


Returns the name of this command.


```pony
fun box name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### descr
<span class="source-link">[[Source]](src/cli/command_spec.md#L112)</span>


Returns the description for this command.


```pony
fun box descr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### options
<span class="source-link">[[Source]](src/cli/command_spec.md#L118)</span>


Returns a map by name of the named options of this command.


```pony
fun box options()
: HashMap[String val, OptionSpec val, HashEq[String val] val] box
```

#### Returns

* [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, [OptionSpec](cli-OptionSpec.md) val, [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] box

---

### commands
<span class="source-link">[[Source]](src/cli/command_spec.md#L124)</span>


Returns a map by name of the child commands of this command.


```pony
fun box commands()
: HashMap[String val, CommandSpec box, HashEq[String val] val] box
```

#### Returns

* [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, [CommandSpec](cli-CommandSpec.md) box, [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] box

---

### args
<span class="source-link">[[Source]](src/cli/command_spec.md#L130)</span>


Returns an array of the positional arguments of this command.


```pony
fun box args()
: Array[ArgSpec val] box
```

#### Returns

* [Array](builtin-Array.md)\[[ArgSpec](cli-ArgSpec.md) val\] box

---

### is_leaf
<span class="source-link">[[Source]](src/cli/command_spec.md#L136)</span>


```pony
fun box is_leaf()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_parent
<span class="source-link">[[Source]](src/cli/command_spec.md#L138)</span>


```pony
fun box is_parent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### help_name
<span class="source-link">[[Source]](src/cli/command_spec.md#L140)</span>


Returns the name of the help command, which defaults to "help".


```pony
fun box help_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### help_string
<span class="source-link">[[Source]](src/cli/command_spec.md#L146)</span>


Returns a formated help string for this command and all of its arguments.


```pony
fun box help_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

