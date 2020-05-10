# Consts
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L5)</span>
```pony
primitive val Consts
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L5)</span>


```pony
new val create()
: Consts val^
```

#### Returns

* [Consts](semver-..-version-Consts.md) val^

---

## Public Functions

### alphas
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L6)</span>


```pony
fun box alphas()
: HashSet[U8 val, HashEq[U8 val] val] ref
```

#### Returns

* [HashSet](collections-HashSet.md)\[[U8](builtin-U8.md) val, [HashEq](collections-HashEq.md)\[[U8](builtin-U8.md) val\] val\] ref

---

### nums
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L10)</span>


```pony
fun box nums()
: HashSet[U8 val, HashEq[U8 val] val] ref
```

#### Returns

* [HashSet](collections-HashSet.md)\[[U8](builtin-U8.md) val, [HashEq](collections-HashEq.md)\[[U8](builtin-U8.md) val\] val\] ref

---

### alphanums
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L13)</span>


```pony
fun box alphanums()
: HashSet[U8 val, HashEq[U8 val] val] ref
```

#### Returns

* [HashSet](collections-HashSet.md)\[[U8](builtin-U8.md) val, [HashEq](collections-HashEq.md)\[[U8](builtin-U8.md) val\] val\] ref

---

### eq
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L6)</span>


```pony
fun box eq(
  that: Consts val)
: Bool val
```
#### Parameters

*   that: [Consts](semver-..-version-Consts.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-version/consts.md#L6)</span>


```pony
fun box ne(
  that: Consts val)
: Bool val
```
#### Parameters

*   that: [Consts](semver-..-version-Consts.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

