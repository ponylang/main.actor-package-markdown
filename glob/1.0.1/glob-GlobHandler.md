# GlobHandler
<span class="source-link">[[Source]](src/glob/glob.md#L13)</span>

A handler for `Glob.iglob`. Each path which matches the glob will be called
with the groups that matched the various wildcards supplies in the
`match_groups` array.


```pony
interface ref GlobHandler
```

## Public Functions

### apply
<span class="source-link">[[Source]](src/glob/glob.md#L19)</span>


```pony
fun ref apply(
  path: FilePath val,
  match_groups: Array[String val] ref)
: None val
```
#### Parameters

*   path: [FilePath](files-FilePath.md) val
*   match_groups: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] ref

#### Returns

* [None](builtin-None.md) val

---

