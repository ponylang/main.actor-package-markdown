# PonyTest
<span class="source-link">[[Source]](src/ponytest/pony_test.md#L245)</span>

Main test framework actor that organises tests, collates information and
prints results.


```pony
actor tag PonyTest
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponytest/pony_test.md#L270)</span>


Create a PonyTest object and use it to run the tests from the given
TestList


```pony
new tag create(
  env: Env val,
  list: TestList tag)
: PonyTest tag^
```
#### Parameters

*   env: [Env](builtin-Env.md) val
*   list: [TestList](ponytest-TestList.md) tag

#### Returns

* [PonyTest](ponytest-PonyTest.md) tag^

---

## Public Behaviours

### apply
<span class="source-link">[[Source]](src/ponytest/pony_test.md#L282)</span>


Run the given test, subject to our filters and options.


```pony
be apply(
  test: UnitTest iso)
```
#### Parameters

*   test: [UnitTest](ponytest-UnitTest.md) iso

---

