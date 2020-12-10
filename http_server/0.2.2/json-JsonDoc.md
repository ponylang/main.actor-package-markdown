# JsonDoc
<span class="source-link">[[Source]](src/json/json_doc.md#L4)</span>

Top level JSON type containing an entire document.
A JSON document consists of exactly 1 value.


```pony
class ref JsonDoc
```

## Constructors

### create
<span class="source-link">[[Source]](src/json/json_doc.md#L24)</span>


Default constructor building a document containing a single null.


```pony
new ref create()
: JsonDoc ref^
```

#### Returns

* [JsonDoc](json-JsonDoc.md) ref^

---

## Public fields

### var data: ([F64](builtin-F64.md) val | [I64](builtin-I64.md) val | [Bool](builtin-Bool.md) val | 
    [None](builtin-None.md) val | [String](builtin-String.md) val | [JsonArray](json-JsonArray.md) ref | 
    [JsonObject](json-JsonObject.md) ref)
<span class="source-link">[[Source]](src/json/json_doc.md#L9)</span>

The parsed JSON structure.

Will be a `None` if `parse(source: String)` has not been called yet.




---

## Public Functions

### string
<span class="source-link">[[Source]](src/json/json_doc.md#L30)</span>


Generate string representation of this document.


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

### parse
<span class="source-link">[[Source]](src/json/json_doc.md#L40)</span>


Parse the given string as a JSON file, building a document.
Raise error on invalid JSON in given source.


```pony
fun ref parse(
  source: String val)
: None val ?
```
#### Parameters

*   source: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val ?

---

### parse_report
<span class="source-link">[[Source]](src/json/json_doc.md#L62)</span>


Give details of the error that occurred last time we attempted to parse.
If parse was successful returns (0, "").


```pony
fun box parse_report()
: (USize val , String val)
```

#### Returns

* ([USize](builtin-USize.md) val , [String](builtin-String.md) val)

---

