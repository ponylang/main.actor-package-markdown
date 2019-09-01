# Glob
<span class="source-link">[[Source]](src/glob/glob.md#L21)</span>

Filename matching and globbing with shell patterns.

`fnmatch(file_name, pattern)` matches according to the local convention.
`fnmatchcase(file_name, pattern)` always takes case into account. The
functions operate by translating the pattern into a regular expression.

The function translate(PATTERN) returns a regular expression corresponding to
PATTERN.

Patterns are Unix shell style:
    *       | matches multiple characters within a directory
    **      | matches multiple characters across directories
    ?       | matches any single character
    [seq]   | matches any character in seq
    [!seq]  | matches any char not in seq


```pony
primitive val Glob
```

## Constructors

### create
<span class="source-link">[[Source]](src/glob/glob.md#L21)</span>


```pony
new val create()
: Glob val^
```

#### Returns

* [Glob](glob-Glob.md) val^

---

## Public Functions

### fnmatch
<span class="source-link">[[Source]](src/glob/glob.md#L40)</span>


Tests whether `name` matches `pattern`.

An initial period in `name` is not special.

Both `name` and `pattern` are first case-normalized if the operating system
requires it. If you don't want this, use `fnmatchcase`.


```pony
fun box fnmatch(
  name: String val,
  pattern: String val)
: Bool val
```
#### Parameters

*   name: [String](builtin-String.md) val
*   pattern: [String](builtin-String.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### fnmatchcase
<span class="source-link">[[Source]](src/glob/glob.md#L51)</span>


Tests whether `name` matches `pattern`, including case.

```pony
fun box fnmatchcase(
  name: String val,
  pattern: String val)
: Bool val
```
#### Parameters

*   name: [String](builtin-String.md) val
*   pattern: [String](builtin-String.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### filter
<span class="source-link">[[Source]](src/glob/glob.md#L59)</span>


Returns `name` and the matching subgroups for `names` that match `pattern`.

All strings are first case-normalized if the operating system requires it.


```pony
fun box filter(
  names: Array[String val] ref,
  pattern: String val)
: Array[(String val , Array[String val] ref)] val
```
#### Parameters

*   names: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref
*   pattern: [String](builtin-String.md) val

#### Returns

* [Array](builtin-Array.md)\[([String](builtin-String.md) val , [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref)\] val

---

### translate
<span class="source-link">[[Source]](src/glob/glob.md#L79)</span>


Translates a shell `pattern` to a regular expression.
There is no way to quote meta-characters.


```pony
fun box translate(
  pat: String val)
: String ref^
```
#### Parameters

*   pat: [String](builtin-String.md) val

#### Returns

* [String](builtin-String.md) ref^

---

### glob
<span class="source-link">[[Source]](src/glob/glob.md#L142)</span>


Returns an Array[FilePath] for each path below `root_path` that matches
`pattern`.

The pattern may contain shell-style wildcards. See the type documentation
on `Glob` for details.


```pony
fun box glob(
  root_path: FilePath val,
  pattern: String val)
: Array[FilePath val] ref
```
#### Parameters

*   root_path: [FilePath](files-FilePath.md) val
*   pattern: [String](builtin-String.md) val

#### Returns

* [Array](builtin-Array.md)\[[FilePath](files-FilePath.md) val\] ref

---

### iglob
<span class="source-link">[[Source]](src/glob/glob.md#L175)</span>


Calls `GlobHandler.apply` for each path below `root` that matches
`pattern`.

The pattern may contain shell-style wildcards. See the type documentation
on `Glob` for details.


```pony
fun box iglob(
  root: FilePath val,
  pattern: String val,
  glob_handler: GlobHandler ref)
: None val
```
#### Parameters

*   root: [FilePath](files-FilePath.md) val
*   pattern: [String](builtin-String.md) val
*   glob_handler: [GlobHandler](glob-GlobHandler.md) ref

#### Returns

* [None](builtin-None.md) val

---

### eq
<span class="source-link">[[Source]](src/glob/glob.md#L40)</span>


```pony
fun box eq(
  that: Glob val)
: Bool val
```
#### Parameters

*   that: [Glob](glob-Glob.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/glob/glob.md#L40)</span>


```pony
fun box ne(
  that: Glob val)
: Bool val
```
#### Parameters

*   that: [Glob](glob-Glob.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

