# CONNECT
<span class="source-link">[[Source]](src/server/method.md#L11)</span>
```pony
primitive val CONNECT is
  Method val
```

#### Implements

* [Method](server-Method.md) val

---

## Constructors

### create
<span class="source-link">[[Source]](src/server/method.md#L11)</span>


```pony
new val create()
: CONNECT val^
```

#### Returns

* [CONNECT](server-CONNECT.md) val^

---

## Public Functions

### repr
<span class="source-link">[[Source]](src/server/method.md#L12)</span>


```pony
fun box repr()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### string
<span class="source-link">[[Source]](src/server/method.md#L13)</span>


```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String.md) iso^

---

### eq
<span class="source-link">[[Source]](src/server/method.md#L14)</span>


```pony
fun box eq(
  o: Method val)
: Bool val
```
#### Parameters

*   o: [Method](server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne



```pony
fun box ne(
  that: Method val)
: Bool val
```
#### Parameters

*   that: [Method](server-Method.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

