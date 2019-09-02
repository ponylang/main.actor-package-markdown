# SignalHandler
<span class="source-link">[[Source]](src/signals/signal_handler.md#L10)</span>

Listen for a specific signal.
If the wait parameter is true, the program will not terminate until the SignalHandler's dispose method is called, or if the SignalNotify returns false, after handling the signal as this also disposes the SignalHandler and unsubscribes it.



```pony
actor tag SignalHandler
```

## Constructors

### create
<span class="source-link">[[Source]](src/signals/signal_handler.md#L20)</span>


Create a signal handler.


```pony
new tag create(
  notify: SignalNotify iso,
  sig: U32 val,
  wait: Bool val = false)
: SignalHandler tag^
```
#### Parameters

*   notify: [SignalNotify](signals-SignalNotify.md) iso
*   sig: [U32](builtin-U32.md) val
*   wait: [Bool](builtin-Bool.md) val = false

#### Returns

* [SignalHandler](signals-SignalHandler.md) tag^

---

## Public Behaviours

### raise
<span class="source-link">[[Source]](src/signals/signal_handler.md#L29)</span>


Raise the signal.


```pony
be raise()
```

---

### dispose
<span class="source-link">[[Source]](src/signals/signal_handler.md#L35)</span>


Dispose of the signal handler.


```pony
be dispose()
```

---

