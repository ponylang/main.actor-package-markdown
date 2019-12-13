# CommandHelp
<span class="source-link">[[Source]](src/cli/command_help.md#L37)</span>

CommandHelp encapsulates the information needed to generate a user help
message for a given CommandSpec, optionally with a specific command
identified to print help about. Use `Help.general()` or `Help.for_command()`
to create a CommandHelp instance.


```pony
class box CommandHelp
```

## Public Functions

### fullname
<span class="source-link">[[Source]](src/cli/command_help.md#L51)</span>


```pony
fun box fullname()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/cli/command_help.md#L58)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### help_string
<span class="source-link">[[Source]](src/cli/command_help.md#L60)</span>


Renders the help message as a String.


```pony
fun box help_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### print_help
<span class="source-link">[[Source]](src/cli/command_help.md#L70)</span>


Prints the help message to an OutStream.


```pony
fun box print_help(
  os: OutStream tag)
: None val
```
#### Parameters

*   os: [OutStream](builtin-OutStream.md) tag

#### Returns

* [None](builtin-None.md) val

---

