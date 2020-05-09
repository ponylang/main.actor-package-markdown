# ANSITerm
<span class="source-link">[[Source]](src/term/ansi_term.md#L45)</span>

Handles ANSI escape codes from stdin.


```pony
actor tag ANSITerm
```

## Constructors

### create
<span class="source-link">[[Source]](src/term/ansi_term.md#L59)</span>


Create a new ANSI term.


```pony
new tag create(
  notify: ANSINotify iso,
  source: DisposableActor tag,
  timers: Timers tag = reference)
: ANSITerm tag^
```
#### Parameters

*   notify: [ANSINotify](term-ANSINotify.md) iso
*   source: [DisposableActor](builtin-DisposableActor.md) tag
*   timers: [Timers](time-Timers.md) tag = reference

#### Returns

* [ANSITerm](term-ANSITerm.md) tag^

---

## Public Behaviours

### apply
<span class="source-link">[[Source]](src/term/ansi_term.md#L77)</span>


Receives input from stdin.


```pony
be apply(
  data: Array[U8 val] iso)
```
#### Parameters

*   data: [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] iso

---

### prompt
<span class="source-link">[[Source]](src/term/ansi_term.md#L187)</span>


Pass a prompt along to the notifier.


```pony
be prompt(
  value: String val)
```
#### Parameters

*   value: [String](builtin-String.md) val

---

### size
<span class="source-link">[[Source]](src/term/ansi_term.md#L193)</span>


```pony
be size()
```

---

### dispose
<span class="source-link">[[Source]](src/term/ansi_term.md#L206)</span>


Stop accepting input, inform the notifier we have closed, and dispose of
our source.


```pony
be dispose()
```

---

