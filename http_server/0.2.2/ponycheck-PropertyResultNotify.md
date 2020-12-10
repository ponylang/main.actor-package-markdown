# PropertyResultNotify
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L7)</span>
```pony
interface val PropertyResultNotify
```

## Public Functions

### fail
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L8)</span>


called when a Property has failed (did not hold for a sample)
or when execution errored.

Does not necessarily denote completeness of the property execution,
see `complete(success: Bool)` for that purpose.


```pony
fun box fail(
  msg: String val)
: None val
```
#### Parameters

*   msg: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val

---

### complete
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L17)</span>


called when the Property execution is complete
signalling whether it was successful or not.


```pony
fun box complete(
  success: Bool val)
: None val
```
#### Parameters

*   success: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

