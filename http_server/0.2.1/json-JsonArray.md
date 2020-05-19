# JsonArray
<span class="source-link">[[Source]](src/json/json_type.md#L8)</span>
```pony
class ref JsonArray
```

## Constructors

### create
<span class="source-link">[[Source]](src/json/json_type.md#L14)</span>


Create an array with zero elements, but space for len elements.


```pony
new ref create(
  len: USize val = 0)
: JsonArray ref^
```
#### Parameters

*   len: [USize](builtin-USize.md) val = 0

#### Returns

* [JsonArray](json-JsonArray.md) ref^

---

### from_array
<span class="source-link">[[Source]](src/json/json_type.md#L20)</span>


Create a Json array from an actual array.


```pony
new ref from_array(
  data': Array[(F64 val | I64 val | Bool val | None val | String val | JsonArray ref | JsonObject ref)] ref)
: JsonArray ref^
```
#### Parameters

*   data': [Array](builtin-Array.md)\[([F64](builtin-F64.md) val | [I64](builtin-I64.md) val | [Bool](builtin-Bool.md) val | [None](builtin-None.md) val | [String](builtin-String.md) val | [JsonArray](json-JsonArray.md) ref | [JsonObject](json-JsonObject.md) ref)\] ref

#### Returns

* [JsonArray](json-JsonArray.md) ref^

---

## Public fields

### var data: [Array](builtin-Array.md)\[([F64](builtin-F64.md) val | [I64](builtin-I64.md) val | [Bool](builtin-Bool.md) val | [None](builtin-None.md) val | [String](builtin-String.md) val | [JsonArray](json-JsonArray.md) ref | [JsonObject](json-JsonObject.md) ref)\] ref
<span class="source-link">[[Source]](src/json/json_type.md#L9)</span>

The actual array containing JSON structures.




---

## Public Functions

### string
<span class="source-link">[[Source]](src/json/json_type.md#L26)</span>


Generate string representation of this array.


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

