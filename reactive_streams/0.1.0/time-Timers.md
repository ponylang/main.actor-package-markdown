# Timers
<span class="source-link">[[Source]](src/time/timers.md#L13)</span>

A hierarchical set of timing wheels.


```pony
actor tag Timers
```

## Constructors

### create
<span class="source-link">[[Source]](src/time/timers.md#L24)</span>


Create a timer handler with the specified number of slop bits. No slop bits
means trying for nanosecond resolution. 10 slop bits is approximately
microsecond resolution, 20 slop bits is approximately millisecond
resolution.


```pony
new tag create(
  slop: USize val = 20)
: Timers tag^
```
#### Parameters

*   slop: [USize](builtin-USize.md) val = 20

#### Returns

* [Timers](time-Timers.md) tag^

---

## Public Behaviours

### apply
<span class="source-link">[[Source]](src/time/timers.md#L38)</span>


Sets a timer. Fire it if need be, schedule it on the right timing wheel,
then rearm the timer.


```pony
be apply(
  timer: Timer iso)
```
#### Parameters

*   timer: [Timer](time-Timer.md) iso

---

### cancel
<span class="source-link">[[Source]](src/time/timers.md#L49)</span>


Cancels a timer.


```pony
be cancel(
  timer: Timer tag)
```
#### Parameters

*   timer: [Timer](time-Timer.md) tag

---

### dispose
<span class="source-link">[[Source]](src/time/timers.md#L64)</span>


Dispose of this set of timing wheels.


```pony
be dispose()
```

---

