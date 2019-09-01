# MatchIterator
<span class="source-link">[[Source]](src/regex/match_iterator.md#L1)</span>

MatchIterator allows for calling code to repeatedly perform the same match
against a subject string as an iterator. This lets callers repeat the match 
until no more matches exist.


```pony
class ref MatchIterator is
  Iterator[Match ref] ref
```

#### Implements

* [Iterator](builtin-Iterator.md)\[[Match](regex-Match.md) ref\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/regex/match_iterator.md#L11)</span>


Creates a new Match Iterator from a regular expression and a subject 
string. 


```pony
new ref create(
  regex': Regex box,
  subject': String val,
  offset': USize val = 0)
: MatchIterator ref^
```
#### Parameters

*   regex': [Regex](regex-Regex.md) box
*   subject': [String](builtin-String.md) val
*   offset': [USize](builtin-USize.md) val = 0

#### Returns

* [MatchIterator](regex-MatchIterator.md) ref^

---

## Public Functions

### has_next
<span class="source-link">[[Source]](src/regex/match_iterator.md#L20)</span>


Indicates whether there is another match available.


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next
<span class="source-link">[[Source]](src/regex/match_iterator.md#L31)</span>


Yields the next match to the regular expression or produces
an error if there is no match.


```pony
fun ref next()
: Match ref ?
```

#### Returns

* [Match](regex-Match.md) ref ?

---

