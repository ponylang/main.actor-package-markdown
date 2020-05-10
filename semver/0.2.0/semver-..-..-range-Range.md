# Range
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L3)</span>
```pony
class ref Range is
  Equatable[Range ref] ref,
  Stringable box
```

#### Implements

* [Equatable](builtin-Equatable.md)\[[Range](semver-..-..-range-Range.md) ref\] ref
* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L11)</span>


```pony
new ref create(
  from': (Version box | None box),
  to': (Version box | None box),
  from_inc': Bool val = true,
  to_inc': Bool val = true)
: Range ref^
```
#### Parameters

*   from': ([Version](semver-..-version-Version.md) box | [None](builtin-None.md) box)
*   to': ([Version](semver-..-version-Version.md) box | [None](builtin-None.md) box)
*   from_inc': [Bool](builtin-Bool.md) val = true
*   to_inc': [Bool](builtin-Bool.md) val = true

#### Returns

* [Range](semver-..-..-range-Range.md) ref^

---

## Public fields

### let from: ([Version](semver-..-version-Version.md) box | [None](builtin-None.md) box)
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L4)</span>



---

### let to: ([Version](semver-..-version-Version.md) box | [None](builtin-None.md) box)
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L5)</span>



---

### let from_inc: [Bool](builtin-Bool.md) val
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L6)</span>



---

### let to_inc: [Bool](builtin-Bool.md) val
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L7)</span>



---

## Public Functions

### contains
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L29)</span>


```pony
fun box contains(
  v: Version ref)
: Bool val
```
#### Parameters

*   v: [Version](semver-..-version-Version.md) ref

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L48)</span>


```pony
fun box eq(
  that: Range box)
: Bool val
```
#### Parameters

*   that: [Range](semver-..-..-range-Range.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

### merge
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L55)</span>


```pony
fun box merge(
  that: Range ref)
: Range ref
```
#### Parameters

*   that: [Range](semver-..-..-range-Range.md) ref

#### Returns

* [Range](semver-..-..-range-Range.md) ref

---

### overlaps
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L80)</span>


```pony
fun box overlaps(
  that: Range ref)
: Bool val
```
#### Parameters

*   that: [Range](semver-..-..-range-Range.md) ref

#### Returns

* [Bool](builtin-Bool.md) val

---

### string
<span class="source-link">[[Source]](src/semver-__-__-range/range.md#L93)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### ne
<span class="source-link">[[Source]](src/builtin/compare.md#L20)</span>


```pony
fun box ne(
  that: Range box)
: Bool val
```
#### Parameters

*   that: [Range](semver-..-..-range-Range.md) box

#### Returns

* [Bool](builtin-Bool.md) val

---

