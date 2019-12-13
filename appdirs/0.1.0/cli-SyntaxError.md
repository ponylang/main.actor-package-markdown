# SyntaxError
<span class="source-link">[[Source]](src/cli/command.md#L181)</span>

SyntaxError summarizes a syntax error in a given parsed command line.


```pony
class val SyntaxError
```

## Constructors

### create
<span class="source-link">[[Source]](src/cli/command.md#L188)</span>


```pony
new val create(
  token': String val,
  msg': String val)
: SyntaxError val^
```
#### Parameters

*   token': [String](builtin-String.md) val
*   msg': [String](builtin-String.md) val

#### Returns

* [SyntaxError](cli-SyntaxError.md) val^

---

## Public Functions

### token
<span class="source-link">[[Source]](src/cli/command.md#L192)</span>


```pony
fun box token()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/cli/command.md#L194)</span>


```pony
fun box string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

