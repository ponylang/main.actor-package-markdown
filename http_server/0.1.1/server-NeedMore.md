# NeedMore
<span class="source-link">[[Source]](src/server/request_parser.md#L30)</span>
```pony
primitive val NeedMore is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable.md) box

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_parser.md#L30)</span>


```pony
new val create()
: NeedMore val^
```

#### Returns

* [NeedMore](server-NeedMore.md) val^

---

## Public Functions

### string
<span class="source-link">[[Source]](src/server/request_parser.md#L31)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/request_parser.md#L31)</span>


```pony
fun box eq(
  that: NeedMore val)
: Bool val
```
#### Parameters

*   that: [NeedMore](server-NeedMore.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_parser.md#L31)</span>


```pony
fun box ne(
  that: NeedMore val)
: Bool val
```
#### Parameters

*   that: [NeedMore](server-NeedMore.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

