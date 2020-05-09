# Methods
<span class="source-link">[[Source]](src/server/method.md#L56)</span>
```pony
primitive val Methods
```

## Constructors

### create
<span class="source-link">[[Source]](src/server/method.md#L56)</span>


```pony
new val create()
: Methods val^
```

#### Returns

* [Methods](server-Methods.md) val^

---

## Public Functions

### parse
<span class="source-link">[[Source]](src/server/method.md#L57)</span>


```pony
fun box parse(
  maybe_method: ReadSeq[U8 val] box)
: (Method val | None val)
```
#### Parameters

*   maybe_method: [ReadSeq](builtin-ReadSeq.md)\[[U8](builtin-U8.md) val\] box

#### Returns

* ([Method](server-Method.md) val | [None](builtin-None.md) val)

---

### eq
<span class="source-link">[[Source]](src/server/method.md#L57)</span>


```pony
fun box eq(
  that: Methods val)
: Bool val
```
#### Parameters

*   that: [Methods](server-Methods.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/method.md#L57)</span>


```pony
fun box ne(
  that: Methods val)
: Bool val
```
#### Parameters

*   that: [Methods](server-Methods.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

