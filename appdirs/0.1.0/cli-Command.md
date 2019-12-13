# Command
<span class="source-link">[[Source]](src/cli/command.md#L3)</span>

Command contains all of the information describing a command with its spec
and effective options and arguments, ready to use.


```pony
class box Command
```

## Public Functions

### string
<span class="source-link">[[Source]](src/cli/command.md#L24)</span>


Returns a representational string for this command.


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### spec
<span class="source-link">[[Source]](src/cli/command.md#L39)</span>


Returns the spec for this command.


```pony
fun box spec()
: CommandSpec box
```

#### Returns

* [CommandSpec](cli-CommandSpec.md) box

---

### fullname
<span class="source-link">[[Source]](src/cli/command.md#L45)</span>


Returns the full name of this command, with its parents prefixed.


```pony
fun box fullname()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### option
<span class="source-link">[[Source]](src/cli/command.md#L51)</span>


Returns the Option by name, defaulting to a fake Option if unknown.


```pony
fun box option(
  name: String val)
: Option val
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* [Option](cli-Option.md) val

---

### arg
<span class="source-link">[[Source]](src/cli/command.md#L57)</span>


Returns the Arg by name, defaulting to a fake Arg if unknown.


```pony
fun box arg(
  name: String val)
: Arg val
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* [Arg](cli-Arg.md) val

---

