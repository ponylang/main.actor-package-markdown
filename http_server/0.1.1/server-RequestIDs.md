# RequestIDs
<span class="source-link">[[Source]](src/server/request_ids.md#L5)</span>

Utilities for dealing with type RequestID
in order to not assume anything about its actual implementation.


```pony
primitive val RequestIDs
```

## Constructors

### create
<span class="source-link">[[Source]](src/server/request_ids.md#L5)</span>


```pony
new val create()
: RequestIDs val^
```

#### Returns

* [RequestIDs](server-RequestIDs.md) val^

---

## Public Functions

### max_value
<span class="source-link">[[Source]](src/server/request_ids.md#L10)</span>


```pony
fun box max_value()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### min
<span class="source-link">[[Source]](src/server/request_ids.md#L13)</span>


```pony
fun box min(
  id1: USize val,
  id2: USize val)
: USize val
```
#### Parameters

*   id1: [USize](builtin-USize.md) val
*   id2: [USize](builtin-USize.md) val

#### Returns

* [USize](builtin-USize.md) val

---

### max
<span class="source-link">[[Source]](src/server/request_ids.md#L15)</span>


```pony
fun box max(
  id1: USize val,
  id2: USize val)
: USize val
```
#### Parameters

*   id1: [USize](builtin-USize.md) val
*   id2: [USize](builtin-USize.md) val

#### Returns

* [USize](builtin-USize.md) val

---

### next
<span class="source-link">[[Source]](src/server/request_ids.md#L18)</span>


```pony
fun box next(
  id: USize val)
: USize val
```
#### Parameters

*   id: [USize](builtin-USize.md) val

#### Returns

* [USize](builtin-USize.md) val

---

### gt
<span class="source-link">[[Source]](src/server/request_ids.md#L21)</span>


```pony
fun box gt(
  id1: USize val,
  id2: USize val)
: Bool val
```
#### Parameters

*   id1: [USize](builtin-USize.md) val
*   id2: [USize](builtin-USize.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### gte
<span class="source-link">[[Source]](src/server/request_ids.md#L24)</span>


```pony
fun box gte(
  id1: USize val,
  id2: USize val)
: Bool val
```
#### Parameters

*   id1: [USize](builtin-USize.md) val
*   id2: [USize](builtin-USize.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/server/request_ids.md#L10)</span>


```pony
fun box eq(
  that: RequestIDs val)
: Bool val
```
#### Parameters

*   that: [RequestIDs](server-RequestIDs.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/server/request_ids.md#L10)</span>


```pony
fun box ne(
  that: RequestIDs val)
: Bool val
```
#### Parameters

*   that: [RequestIDs](server-RequestIDs.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

