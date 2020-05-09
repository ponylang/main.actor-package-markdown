# JsonObject
<span class="source-link">[[Source]](src/json/json_type.md#L77)</span>
```pony
class ref JsonObject
```

## Constructors

### create
<span class="source-link">[[Source]](src/json/json_type.md#L84)</span>


Create a map with space for prealloc elements without triggering a
resize. Defaults to 6.


```pony
new ref create(
  prealloc: USize val = 6)
: JsonObject ref^
```
#### Parameters

*   prealloc: [USize](builtin-USize.md) val = 6

#### Returns

* [JsonObject](json-JsonObject.md) ref^

---

### from_map
<span class="source-link">[[Source]](src/json/json_type.md#L91)</span>


Create a Json object from a map.


```pony
new ref from_map(
  data': HashMap[String val, (F64 val | I64 val | Bool val | None val | String val | JsonArray ref | JsonObject ref), HashEq[String val] val] ref)
: JsonObject ref^
```
#### Parameters

*   data': [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, ([F64](builtin-F64.md) val | [I64](builtin-I64.md) val | [Bool](builtin-Bool.md) val | [None](builtin-None.md) val | [String](builtin-String.md) val | [JsonArray](json-JsonArray.md) ref | [JsonObject](json-JsonObject.md) ref), [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] ref

#### Returns

* [JsonObject](json-JsonObject.md) ref^

---

## Public fields

### var data: [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, ([F64](builtin-F64.md) val | [I64](builtin-I64.md) val | [Bool](builtin-Bool.md) val | [None](builtin-None.md) val | [String](builtin-String.md) val | [JsonArray](json-JsonArray.md) ref | [JsonObject](json-JsonObject.md) ref), [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] ref
<span class="source-link">[[Source]](src/json/json_type.md#L78)</span>

The actual JSON object structure,
mapping `String` keys to other JSON structures.




---

## Public Functions

### string
<span class="source-link">[[Source]](src/json/json_type.md#L97)</span>


Generate string representation of this object.


```pony
fun box string(
  indent: String val = "",
  pretty_print: Bool val = false)
: String val
```
#### Parameters

*   indent: [String](builtin-String.md) val = ""
*   pretty_print: [Bool](builtin-Bool.md) val = false

#### Returns

* [String](builtin-String.md) val

---

