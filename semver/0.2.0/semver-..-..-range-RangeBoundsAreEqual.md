# RangeBoundsAreEqual
<span class="source-link">[[Source]](src/semver-__-__-range/range_bounds_are_equal.md#L3)</span>
```pony
primitive val RangeBoundsAreEqual
```

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-range/range_bounds_are_equal.md#L3)</span>


```pony
new val create()
: RangeBoundsAreEqual val^
```

#### Returns

* [RangeBoundsAreEqual](semver-..-..-range-RangeBoundsAreEqual.md) val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/semver-__-__-range/range_bounds_are_equal.md#L4)</span>


```pony
fun box apply(
  vrb1: (Version box | None box),
  vrb2: (Version box | None box))
: Bool val
```
#### Parameters

*   vrb1: ([Version](semver-..-version-Version.md) box | [None](builtin-None.md) box)
*   vrb2: ([Version](semver-..-version-Version.md) box | [None](builtin-None.md) box)

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/semver-__-__-range/range_bounds_are_equal.md#L4)</span>


```pony
fun box eq(
  that: RangeBoundsAreEqual val)
: Bool val
```
#### Parameters

*   that: [RangeBoundsAreEqual](semver-..-..-range-RangeBoundsAreEqual.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/semver-__-__-range/range_bounds_are_equal.md#L4)</span>


```pony
fun box ne(
  that: RangeBoundsAreEqual val)
: Bool val
```
#### Parameters

*   that: [RangeBoundsAreEqual](semver-..-..-range-RangeBoundsAreEqual.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

