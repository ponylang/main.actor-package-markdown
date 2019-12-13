# Help
<span class="source-link">[[Source]](src/cli/command_help.md#L3)</span>
```pony
primitive val Help
```

## Constructors

### create
<span class="source-link">[[Source]](src/cli/command_help.md#L3)</span>


```pony
new val create()
: Help val^
```

#### Returns

* [Help](cli-Help.md) val^

---

## Public Functions

### general
<span class="source-link">[[Source]](src/cli/command_help.md#L4)</span>


Creates a command help that can print a general program help message.


```pony
fun box general(
  cs: CommandSpec box)
: CommandHelp box
```
#### Parameters

*   cs: [CommandSpec](cli-CommandSpec.md) box

#### Returns

* [CommandHelp](cli-CommandHelp.md) box

---

### for_command
<span class="source-link">[[Source]](src/cli/command_help.md#L10)</span>


Creates a command help for a specific command that can print a detailed
help message.


```pony
fun box for_command(
  cs: CommandSpec box,
  argv: Array[String val] box)
: (CommandHelp box | SyntaxError val)
```
#### Parameters

*   cs: [CommandSpec](cli-CommandSpec.md) box
*   argv: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] box

#### Returns

* ([CommandHelp](cli-CommandHelp.md) box | [SyntaxError](cli-SyntaxError.md) val)

---

### eq
<span class="source-link">[[Source]](src/cli/command_help.md#L4)</span>


```pony
fun box eq(
  that: Help val)
: Bool val
```
#### Parameters

*   that: [Help](cli-Help.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/cli/command_help.md#L4)</span>


```pony
fun box ne(
  that: Help val)
: Bool val
```
#### Parameters

*   that: [Help](cli-Help.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

