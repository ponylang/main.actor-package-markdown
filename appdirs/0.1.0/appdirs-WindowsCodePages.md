# WindowsCodePages
<span class="source-link">[[Source]](src/appdirs/windows_codepages.md#L1)</span>

identifiers/constant for windows codepages for converting from one encoding to another.

See: https://docs.microsoft.com/en-us/windows/desktop/Intl/code-page-identifiers


```pony
primitive val WindowsCodePages
```

## Constructors

### create
<span class="source-link">[[Source]](src/appdirs/windows_codepages.md#L1)</span>


```pony
new val create()
: WindowsCodePages val^
```

#### Returns

* [WindowsCodePages](appdirs-WindowsCodePages.md) val^

---

## Public Functions

### utf8
<span class="source-link">[[Source]](src/appdirs/windows_codepages.md#L7)</span>


```pony
fun box utf8()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### eq
<span class="source-link">[[Source]](src/appdirs/windows_codepages.md#L7)</span>


```pony
fun box eq(
  that: WindowsCodePages val)
: Bool val
```
#### Parameters

*   that: [WindowsCodePages](appdirs-WindowsCodePages.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/appdirs/windows_codepages.md#L7)</span>


```pony
fun box ne(
  that: WindowsCodePages val)
: Bool val
```
#### Parameters

*   that: [WindowsCodePages](appdirs-WindowsCodePages.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

