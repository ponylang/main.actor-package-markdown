# PropertyRunner\[T: T\]
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L23)</span>

Actor executing a Property1 implementation
in a way that allows garbage collection between single
property executions, because it uses recursive behaviours
for looping.


```pony
actor tag PropertyRunner[T: T]
```

## Constructors

### create
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L47)</span>


```pony
new tag create(
  p1: Property1[T] iso,
  params: PropertyParams val,
  notify: PropertyResultNotify val,
  logger: PropertyLogger val,
  env: Env val)
: PropertyRunner[T] tag^
```
#### Parameters

*   p1: [Property1](ponycheck-Property1.md)\[T\] iso
*   params: [PropertyParams](ponycheck-PropertyParams.md) val
*   notify: [PropertyResultNotify](ponycheck-PropertyResultNotify.md) val
*   logger: [PropertyLogger](ponycheck-PropertyLogger.md) val
*   env: [Env](builtin-Env.md) val

#### Returns

* [PropertyRunner](ponycheck-PropertyRunner.md)\[T\] tag^

---

## Public Behaviours

### complete_run
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L65)</span>


complete a property run

this behaviour is called from the PropertyHelper
or from `_finished`.


```pony
be complete_run(
  round: USize val,
  success: Bool val)
```
#### Parameters

*   round: [USize](builtin-USize.md) val
*   success: [Bool](builtin-Bool.md) val

---

### run
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L110)</span>


```pony
be run(
  round: USize val = 0)
```
#### Parameters

*   round: [USize](builtin-USize.md) val = 0

---

### complete_shrink
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L157)</span>


```pony
be complete_shrink(
  failed_repr: String val,
  last_repr: String val,
  shrink_round: USize val,
  success: Bool val)
```
#### Parameters

*   failed_repr: [String](builtin-String.md) val
*   last_repr: [String](builtin-String.md) val
*   shrink_round: [USize](builtin-USize.md) val
*   success: [Bool](builtin-Bool.md) val

---

### do_shrink
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L179)</span>


```pony
be do_shrink(
  failed_repr: String val,
  shrink_round: USize val = 0)
```
#### Parameters

*   failed_repr: [String](builtin-String.md) val
*   shrink_round: [USize](builtin-USize.md) val = 0

---

### expect_action
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L230)</span>


```pony
be expect_action(
  name: String val)
```
#### Parameters

*   name: [String](builtin-String.md) val

---

### complete_action
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L234)</span>


```pony
be complete_action(
  name: String val,
  ph: PropertyHelper val)
```
#### Parameters

*   name: [String](builtin-String.md) val
*   ph: [PropertyHelper](ponycheck-PropertyHelper.md) val

---

### fail_action
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L238)</span>


```pony
be fail_action(
  name: String val,
  ph: PropertyHelper val)
```
#### Parameters

*   name: [String](builtin-String.md) val
*   ph: [PropertyHelper](ponycheck-PropertyHelper.md) val

---

### dispose_when_done
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L257)</span>


```pony
be dispose_when_done(
  disposable: DisposableActor tag)
```
#### Parameters

*   disposable: [DisposableActor](builtin-DisposableActor.md) tag

---

### dispose
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L260)</span>


```pony
be dispose()
```

---

### log
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L268)</span>


```pony
be log(
  msg: String val,
  verbose: Bool val = false)
```
#### Parameters

*   msg: [String](builtin-String.md) val
*   verbose: [Bool](builtin-Bool.md) val = false

---

## Public Functions

### complete
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L273)</span>


complete the Property execution successfully


```pony
fun ref complete()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### fail
<span class="source-link">[[Source]](src/ponycheck/property_runner.md#L279)</span>


complete the Property execution
while signalling failure to the notify


```pony
fun ref fail(
  repr: String val,
  rounds: USize val = 0,
  err: Bool val = false)
: None val
```
#### Parameters

*   repr: [String](builtin-String.md) val
*   rounds: [USize](builtin-USize.md) val = 0
*   err: [Bool](builtin-Bool.md) val = false

#### Returns

* [None](builtin-None.md) val

---

