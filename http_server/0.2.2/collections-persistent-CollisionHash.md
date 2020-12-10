# CollisionHash
<span class="source-link">[[Source]](src/collections-persistent/_test.md#L341)</span>
```pony
primitive val CollisionHash is
  HashFunction[U64 val] val
```

#### Implements

* [HashFunction](collections-HashFunction.md)\[[U64](builtin-U64.md) val\] val

---

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/_test.md#L341)</span>


```pony
new val create()
: CollisionHash val^
```

#### Returns

* [CollisionHash](collections-persistent-CollisionHash.md) val^

---

## Public Functions

### hash
<span class="source-link">[[Source]](src/collections-persistent/_test.md#L342)</span>


```pony
fun box hash(
  x: U64 val)
: USize val
```
#### Parameters

*   x: [U64](builtin-U64.md) val

#### Returns

* [USize](builtin-USize.md) val

---

### eq
<span class="source-link">[[Source]](src/collections-persistent/_test.md#L343)</span>


```pony
fun box eq(
  x: U64 val,
  y: U64 val)
: Bool val
```
#### Parameters

*   x: [U64](builtin-U64.md) val
*   y: [U64](builtin-U64.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/collections-persistent/_test.md#L342)</span>


```pony
fun box ne(
  that: CollisionHash val)
: Bool val
```
#### Parameters

*   that: [CollisionHash](collections-persistent-CollisionHash.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

