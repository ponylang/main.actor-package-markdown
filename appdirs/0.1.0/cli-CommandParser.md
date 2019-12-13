# CommandParser
<span class="source-link">[[Source]](src/cli/command_parser.md#L3)</span>
```pony
class ref CommandParser
```

## Constructors

### create
<span class="source-link">[[Source]](src/cli/command_parser.md#L7)</span>


Creates a new parser for a given command spec.


```pony
new box create(
  spec': CommandSpec box)
: CommandParser box^
```
#### Parameters

*   spec': [CommandSpec](cli-CommandSpec.md) box

#### Returns

* [CommandParser](cli-CommandParser.md) box^

---

## Public Functions

### parse
<span class="source-link">[[Source]](src/cli/command_parser.md#L18)</span>


Parses all of the command line tokens and env vars and returns a Command,
or the first SyntaxError.


```pony
fun box parse(
  argv: Array[String val] box,
  envs: (Array[String val] box | None val) = reference)
: (Command box | CommandHelp box | SyntaxError val)
```
#### Parameters

*   argv: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] box
*   envs: ([Array](builtin-Array.md)\[[String](builtin-String.md) val\] box | [None](builtin-None.md) val) = reference

#### Returns

* ([Command](cli-Command.md) box | [CommandHelp](cli-CommandHelp.md) box | [SyntaxError](cli-SyntaxError.md) val)

---

