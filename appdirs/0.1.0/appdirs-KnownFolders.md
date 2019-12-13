# KnownFolders
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L57)</span>

Utility for getting some known folders on windows.

https://docs.microsoft.com/en-ca/windows/desktop/shell/known-folders


```pony
primitive val KnownFolders
```

## Constructors

### create
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L57)</span>


```pony
new val create()
: KnownFolders val^
```

#### Returns

* [KnownFolders](appdirs-KnownFolders.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L63)</span>


```pony
fun box apply(
  folderid: Array[U8 val] val)
: String iso^ ?
```
#### Parameters

*   folderid: [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

#### Returns

* [String](builtin-String.md) iso^ ?

---

### eq
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L63)</span>


```pony
fun box eq(
  that: KnownFolders val)
: Bool val
```
#### Parameters

*   that: [KnownFolders](appdirs-KnownFolders.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L63)</span>


```pony
fun box ne(
  that: KnownFolders val)
: Bool val
```
#### Parameters

*   that: [KnownFolders](appdirs-KnownFolders.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

