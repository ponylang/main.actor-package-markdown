# Timer
<span class="source-link">[[Source]](src/time/timer.md#L3)</span>

The `Timer` class represents a timer that fires after an expiration
time, and then fires at an interval. When a `Timer` fires, it calls
the `apply` method of the `TimerNotify` object that was passed to it
when it was created.

The following example waits 5 seconds and then fires every 2
seconds, and when it fires the `TimerNotify` object prints how many
times it has been called:

```pony
use "time"

actor Main
  new create(env: Env) =>
    let timers = Timers
    let timer = Timer(Notify(env), 5_000_000_000, 2_000_000_000)
    timers(consume timer)

class Notify is TimerNotify
  let _env: Env
  var _counter: U32 = 0
  new iso create(env: Env) =>
    _env = env
  fun ref apply(timer: Timer, count: U64): Bool =>
    _env.out.print(_counter.string())
    _counter = _counter + 1
    true
```


```pony
class ref Timer
```

## Constructors

### create
<span class="source-link">[[Source]](src/time/timer.md#L39)</span>


Create a new timer. The expiration time should be a nanosecond count
until the first expiration. The interval should also be in nanoseconds.


```pony
new iso create(
  notify: TimerNotify iso,
  expiration: U64 val,
  interval: U64 val = 0)
: Timer iso^
```
#### Parameters

*   notify: [TimerNotify](time-TimerNotify.md) iso
*   expiration: [U64](builtin-U64.md) val
*   interval: [U64](builtin-U64.md) val = 0

#### Returns

* [Timer](time-Timer.md) iso^

---

### abs
<span class="source-link">[[Source]](src/time/timer.md#L54)</span>


Creates a new timer with an absolute expiration time rather than a relative
time. The expiration time is wall-clock adjusted system time.


```pony
new ref abs(
  notify: TimerNotify ref,
  expiration: (I64 val , I64 val),
  interval: U64 val = 0)
: Timer ref^
```
#### Parameters

*   notify: [TimerNotify](time-TimerNotify.md) ref
*   expiration: ([I64](builtin-I64.md) val , [I64](builtin-I64.md) val)
*   interval: [U64](builtin-U64.md) val = 0

#### Returns

* [Timer](time-Timer.md) ref^

---

