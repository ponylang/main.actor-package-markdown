# PropertyHelper
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L27)</span>

Helper for ponycheck properties.

Mirrors the [TestHelper](ponytest-TestHelper.md) API as close as possible.

Contains assertion functions and functions for completing asynchronous
properties, for expecting and completing or failing actions.

Internally a new PropertyHelper will be created for each call to
a property with a new sample and also for every shrink run.
So don't assume anything about the identity of the PropertyHelper inside of
your Properties.

This class is `val` by default so it can be safely passed around to other
actors.

It exposes the process [Env](builtin-Env.md) as public `env` field in order to
give access to the root authority and other stuff.


```pony
class val PropertyHelper
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L53)</span>


```pony
new val create(
  env': Env val,
  runner: _IPropertyRunner tag,
  run_notify: _PropertyRunNotify val,
  run_context: String val)
: PropertyHelper val^
```
#### Parameters

*   env': [Env](builtin-Env.md) val
*   runner: _IPropertyRunner tag
*   run_notify: _PropertyRunNotify val
*   run_context: [String](builtin-String.md) val

#### Returns

* [PropertyHelper](ponycheck-PropertyHelper.md) val^

---

## Public fields

### let env: [Env](builtin-Env.md) val
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L51)</span>



---

## Public Functions

### log
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L64)</span>


Log the given message.

The verbose parameter allows messages to be printed only when the --verbose
command line option is used. For example, by default assert failures are
logged, but passes are not. With --verbose both passes and fails are
reported.

Logs are printed one test at a time to avoid interleaving log lines from
concurrent tests.


```pony
fun box log(
  msg: String val,
  verbose: Bool val = false)
: None val
```
#### Parameters

*   msg: [String](builtin-String.md) val
*   verbose: [Bool](builtin-Bool.md) val = false

#### Returns

* [None](builtin-None.md) val

---

### fail
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L78)</span>


Flag the test as having failed.


```pony
fun box fail(
  msg: String val = "Test failed")
: None val
```
#### Parameters

*   msg: [String](builtin-String.md) val = "Test failed"

#### Returns

* [None](builtin-None.md) val

---

### assert_false
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L84)</span>


Assert that the given expression is false.


```pony
fun box assert_false(
  predicate: Bool val,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   predicate: [Bool](builtin-Bool.md) val
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_true
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L100)</span>


Assert that the given expression is true.


```pony
fun box assert_true(
  predicate: Bool val,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   predicate: [Bool](builtin-Bool.md) val
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_error
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L116)</span>


Assert that the given test function throws an error when run.


```pony
fun box assert_error(
  test: {(): None ?} box,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   test: {(): None ?} box
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_no_error
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L134)</span>


Assert that the given test function does not throw an error when run.


```pony
fun box assert_no_error(
  test: {(): None ?} box,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   test: {(): None ?} box
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_is\[A: A\]
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L152)</span>


Assert that the 2 given expressions resolve to the same instance


```pony
fun box assert_is[A: A](
  expect: A,
  actual: A,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: A
*   actual: A
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_isnt\[A: A\]
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L176)</span>


Assert that the 2 given expressions resolve to different instances.


```pony
fun box assert_isnt[A: A](
  not_expect: A,
  actual: A,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   not_expect: A
*   actual: A
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_eq\[A: ([Equatable](builtin-Equatable.md)\[A\] #read & [Stringable](builtin-Stringable.md) #read)\]
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L200)</span>


Assert that the 2 given expressions are equal.


```pony
fun box assert_eq[A: (Equatable[A] #read & Stringable #read)](
  expect: A,
  actual: A,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: A
*   actual: A
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_ne\[A: ([Equatable](builtin-Equatable.md)\[A\] #read & [Stringable](builtin-Stringable.md) #read)\]
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L221)</span>


Assert that the 2 given expressions are not equal.


```pony
fun box assert_ne[A: (Equatable[A] #read & Stringable #read)](
  not_expect: A,
  actual: A,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   not_expect: A
*   actual: A
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_array_eq\[A: ([Equatable](builtin-Equatable.md)\[A\] #read & [Stringable](builtin-Stringable.md) #read)\]
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L244)</span>


Assert that the contents of the 2 given ReadSeqs are equal.


```pony
fun box assert_array_eq[A: (Equatable[A] #read & Stringable #read)](
  expect: ReadSeq[A] box,
  actual: ReadSeq[A] box,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: [ReadSeq](builtin-ReadSeq.md)\[A\] box
*   actual: [ReadSeq](builtin-ReadSeq.md)\[A\] box
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### assert_array_eq_unordered\[A: ([Equatable](builtin-Equatable.md)\[A\] #read & [Stringable](builtin-Stringable.md) #read)\]
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L286)</span>


Assert that the contents of the 2 given ReadSeqs are equal ignoring order.


```pony
fun box assert_array_eq_unordered[A: (Equatable[A] #read & Stringable #read)](
  expect: ReadSeq[A] box,
  actual: ReadSeq[A] box,
  msg: String val = "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: [ReadSeq](builtin-ReadSeq.md)\[A\] box
*   actual: [ReadSeq](builtin-ReadSeq.md)\[A\] box
*   msg: [String](builtin-String.md) val = ""
*   loc: [SourceLoc](builtin-SourceLoc.md) val = __loc

#### Returns

* [Bool](builtin-Bool.md) val

---

### expect_action
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L361)</span>


expect some action of the given name to complete
for the property to hold.

If all expected actions are completed successfully,
the property is considered successful.

If 1 action fails, the property is considered failing.

Call `complete_action(name)` or `fail_action(name)`
to mark some action as completed.

Example:

```pony
  actor AsyncActor

    let _ph: PropertyHelper

    new create(ph: PropertyHelper) =>
      _ph = ph

    be complete(s: String) =>
      if (s.size() % 2) == 0 then
        _ph.complete_action("is_even")
      else
        _ph.fail_action("is_even")

  class EvenStringProperty is Property1[String]
    fun name(): String => "even_string"

    fun gen(): Generator[String] =>
      Generators.ascii()

  fun property(arg1: String, ph: PropertyHelper) =>
    ph.expect_action("is_even")
    AsyncActor(ph).check(arg1)
```



```pony
fun box expect_action(
  name: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val

---

### complete_action
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L404)</span>


Complete an expected action successfully.

If all expected actions are completed successfully,
the property is considered successful.

If 1 action fails, the property is considered failing.

If the action `name` was not expected, i.e. was not registered using
`expect_action`, nothing happens.


```pony
fun val complete_action(
  name: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val

---

### fail_action
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L418)</span>


Mark an expected action as failed.

If all expected actions are completed successfully,
the property is considered successful.

If 1 action fails, the property is considered failing.


```pony
fun val fail_action(
  name: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String.md) val

#### Returns

* [None](builtin-None.md) val

---

### complete
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L429)</span>


Complete an asynchronous property successfully.

Once this method is called the property
is considered successful or failing
depending on the value of the parameter `success`.

For more fine grained control over completing or failing
a property that consists of many steps, consider using
`expect_action`, `complete_action` and `fail_action`.


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

### dispose_when_done
<span class="source-link">[[Source]](src/ponycheck/property_helper.md#L443)</span>


Dispose the actor after a property run / a shrink is done.


```pony
fun box dispose_when_done(
  disposable: DisposableActor tag)
: None val
```
#### Parameters

*   disposable: [DisposableActor](builtin-DisposableActor.md) tag

#### Returns

* [None](builtin-None.md) val

---

