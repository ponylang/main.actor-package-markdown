# HashMap\[K: [Any](builtin-Any.md) #share, V: [Any](builtin-Any.md) #share, H: [HashFunction](collections-HashFunction.md)\[K\] val\]
<span class="source-link">[[Source]](src/collections-persistent/map.md#L14)</span>

A persistent map based on the Compressed Hash Array Mapped Prefix-tree from
'Optimizing Hash-Array Mapped Tries for Fast and Lean Immutable JVM
Collections' by Michael J. Steindorfer and Jurgen J. Vinju

## Usage
```pony
use "collections/persistent"

actor Main
  new create(env: Env) =>
    try
      let m1 = Map[String, U32] // {}
      // Update returns a new map with the provided key set
      // to the provided value. The old map is unchanged.
      let m2 = m1("a") = 5 // {a: 5}
      let m3 = m2("b") = 10 // {a: 5, b: 10}
      let m4 = m3.remove("a")? // {b: 10}
      // You can create a new map from key value pairs.
      let m5 = Map[String, U32].concat([("a", 2); ("b", 3)].values()) // {a: 2, b: 3}
    end
```


```pony
class val HashMap[K: Any #share, V: Any #share, H: HashFunction[K] val]
```

## Constructors

### create
<span class="source-link">[[Source]](src/collections-persistent/map.md#L41)</span>


```pony
new val create()
: HashMap[K, V, H] val^
```

#### Returns

* [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val^

---

## Public Functions

### apply
<span class="source-link">[[Source]](src/collections-persistent/map.md#L49)</span>


Attempt to get the value corresponding to k.


```pony
fun val apply(
  k: K)
: val->V ?
```
#### Parameters

*   k: K

#### Returns

* val->V ?

---

### size
<span class="source-link">[[Source]](src/collections-persistent/map.md#L55)</span>


Return the amount of key-value pairs in the Map.


```pony
fun val size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### update
<span class="source-link">[[Source]](src/collections-persistent/map.md#L61)</span>


Update the value associated with the provided key.


```pony
fun val update(
  key: K,
  value: val->V)
: HashMap[K, V, H] val
```
#### Parameters

*   key: K
*   value: val->V

#### Returns

* [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

---

### remove
<span class="source-link">[[Source]](src/collections-persistent/map.md#L74)</span>


Try to remove the provided key from the Map.


```pony
fun val remove(
  k: K)
: HashMap[K, V, H] val ?
```
#### Parameters

*   k: K

#### Returns

* [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val ?

---

### get_or_else
<span class="source-link">[[Source]](src/collections-persistent/map.md#L80)</span>


Get the value associated with provided key if present. Otherwise,
return the provided alternate value.


```pony
fun val get_or_else(
  k: K,
  alt: val->V)
: val->V
```
#### Parameters

*   k: K
*   alt: val->V

#### Returns

* val->V

---

### contains
<span class="source-link">[[Source]](src/collections-persistent/map.md#L94)</span>


Check whether the node contains the provided key.


```pony
fun val contains(
  k: K)
: Bool val
```
#### Parameters

*   k: K

#### Returns

* [Bool](builtin-Bool.md) val

---

### concat
<span class="source-link">[[Source]](src/collections-persistent/map.md#L102)</span>


Add the K, V pairs from the given iterator to the map.


```pony
fun val concat(
  iter: Iterator[(val->K , val->V)] ref)
: HashMap[K, V, H] val
```
#### Parameters

*   iter: [Iterator](builtin-Iterator.md)\[(val->K , val->V)\] ref

#### Returns

* [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

---

### add
<span class="source-link">[[Source]](src/collections-persistent/map.md#L112)</span>


Return this Map with the given (key, value) mapping.


```pony
fun val add(
  key: K,
  value: val->V)
: HashMap[K, V, H] val
```
#### Parameters

*   key: K
*   value: val->V

#### Returns

* [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

---

### sub
<span class="source-link">[[Source]](src/collections-persistent/map.md#L118)</span>


Return this Map without the given key.


```pony
fun val sub(
  key: K)
: HashMap[K, V, H] val
```
#### Parameters

*   key: K

#### Returns

* [HashMap](collections-persistent-HashMap.md)\[K, V, H\] val

---

### keys
<span class="source-link">[[Source]](src/collections-persistent/map.md#L128)</span>


```pony
fun val keys()
: MapKeys[K, V, H] ref
```

#### Returns

* [MapKeys](collections-persistent-MapKeys.md)\[K, V, H\] ref

---

### values
<span class="source-link">[[Source]](src/collections-persistent/map.md#L130)</span>


```pony
fun val values()
: MapValues[K, V, H] ref
```

#### Returns

* [MapValues](collections-persistent-MapValues.md)\[K, V, H\] ref

---

### pairs
<span class="source-link">[[Source]](src/collections-persistent/map.md#L132)</span>


```pony
fun val pairs()
: MapPairs[K, V, H] ref
```

#### Returns

* [MapPairs](collections-persistent-MapPairs.md)\[K, V, H\] ref

---

