# Headers
<span class="source-link">[[Source]](src/http_server/headers.md#L8)</span>

Collection for headers
based on a sorted array we use bisect to insert and get values.
We compare the strings case-insensitive when sorting, inserting and getting headers.

We want to use the bytes we get to build the headers as is without changing them, in order to avoid allocation.

This isn't using a hashmap because getting the hash in a case-insensitive manner
would require to iterate over single bytes, which isn't as fast as it could be.
Also the amount of headers in a request is usually small, so the penalty of doing
a binary search isn't as bad.

Getting a header is case insensitive, so you don't need to care about header name casing
when asking for a header.

### Usage

```pony
let headers = Headers
header.set("Connection", "Close") // setting a header, possibly overwriting previous values
header.add("Multiple", "1")       // adding a header, concatenating previous and this value with a comma.
header.add("Multiple", "2")

// getting a header is case-insensitive
match header.get("cOnNeCTiOn")
| let value: String => // do something with value
else
  // not found
end

// iterating over headers
for (name, value) in headers.values() do
  env.out.print(name + ": " + value)
end

// remove all headers from this structure
headers.clear()
```



```pony
class ref Headers
```

## Constructors

### create
<span class="source-link">[[Source]](src/http_server/headers.md#L55)</span>


```pony
new ref create()
: Headers ref^
```

#### Returns

* [Headers](http_server-Headers.md) ref^

---

### from_map
<span class="source-link">[[Source]](src/http_server/headers.md#L58)</span>


```pony
new ref from_map(
  headers: HashMap[String val, String val, HashEq[String val] val] ref)
: Headers ref^
```
#### Parameters

*   headers: [HashMap](collections-HashMap.md)\[[String](builtin-String.md) val, [String](builtin-String.md) val, [HashEq](collections-HashEq.md)\[[String](builtin-String.md) val\] val\] ref

#### Returns

* [Headers](http_server-Headers.md) ref^

---

### from_seq
<span class="source-link">[[Source]](src/http_server/headers.md#L64)</span>


```pony
new ref from_seq(
  headers: ReadSeq[(String val , String val)] box)
: Headers ref^
```
#### Parameters

*   headers: [ReadSeq](builtin-ReadSeq.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] box

#### Returns

* [Headers](http_server-Headers.md) ref^

---

### from_iter
<span class="source-link">[[Source]](src/http_server/headers.md#L70)</span>


```pony
new ref from_iter(
  headers: Iterator[(String val , String val)] ref,
  size: USize val = 4)
: Headers ref^
```
#### Parameters

*   headers: [Iterator](builtin-Iterator.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] ref
*   size: [USize](builtin-USize.md) val = 4

#### Returns

* [Headers](http_server-Headers.md) ref^

---

## Public Functions

### set
<span class="source-link">[[Source]](src/http_server/headers.md#L76)</span>


if a header with name already exists, its value will be overriden with this value.


```pony
fun ref set(
  name: String val,
  value: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val

---

### add
<span class="source-link">[[Source]](src/http_server/headers.md#L101)</span>


If a header with this name already exists, value will be
appended after a separating comma.


```pony
fun ref add(
  name: String val,
  value: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String.md) val
*   value: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val

---

### get
<span class="source-link">[[Source]](src/http_server/headers.md#L132)</span>


```pony
fun box get(
  name: String val)
: (String val | None val)
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* ([String](builtin-String.md) val | [None](builtin-None.md) val)

---

### clear
<span class="source-link">[[Source]](src/http_server/headers.md#L153)</span>


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### values
<span class="source-link">[[Source]](src/http_server/headers.md#L156)</span>


```pony
fun box values()
: Iterator[(String val , String val)] ref
```

#### Returns

* [Iterator](builtin-Iterator.md)\[([String](builtin-String.md) val , [String](builtin-String.md) val)\] ref

---

### byte_size
<span class="source-link">[[Source]](src/http_server/headers.md#L158)</span>


size of the given headers including header-separator and crlf.


```pony
fun box byte_size()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

