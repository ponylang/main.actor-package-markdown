# Paths
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L6)</span>
```pony
primitive val Paths
```

## Constructors

### create
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L6)</span>


```pony
new val create()
: Paths val^
```

#### Returns

* [Paths](appdirs-Paths.md) val^

---

## Public Functions

### join
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L7)</span>


```pony
fun box join(
  paths: ReadSeq[String val] box)
: String val
```
#### Parameters

*   paths: [ReadSeq](builtin-ReadSeq.md)\[[String](builtin-String.md) val\] box

#### Returns

* [String](builtin-String.md) val

---

### eq
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L7)</span>


```pony
fun box eq(
  that: Paths val)
: Bool val
```
#### Parameters

*   that: [Paths](appdirs-Paths.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L7)</span>


```pony
fun box ne(
  that: Paths val)
: Bool val
```
#### Parameters

*   that: [Paths](appdirs-Paths.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

