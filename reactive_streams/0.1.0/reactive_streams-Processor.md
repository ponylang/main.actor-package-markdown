# Processor\[A: [Any](builtin-Any.md) #share, B: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/reactive_streams/processor.md#L1)</span>

A Processor represents a processing stage—which is both a Subscriber and a
Publisher and obeys the contracts of both.


```pony
interface tag Processor[A: Any #share, B: Any #share] is
  Subscriber[A] tag,
  Publisher[B] tag
```

#### Implements

* [Subscriber](reactive_streams-Subscriber.md)\[A\] tag
* [Publisher](reactive_streams-Publisher.md)\[B\] tag

---

## Public Behaviours

### on_subscribe
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L19)</span>


```pony
be on_subscribe(
  s: Subscription iso)
```
#### Parameters

*   s: [Subscription](reactive_streams-Subscription.md) iso

---

### on_next
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L33)</span>


```pony
be on_next(
  a: A)
```
#### Parameters

*   a: A

---

### on_error
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L40)</span>


```pony
be on_error(
  e: ReactiveError val)
```
#### Parameters

*   e: [ReactiveError](reactive_streams-ReactiveError.md) val

---

### on_complete
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L49)</span>


```pony
be on_complete()
```

---

### subscribe
<span class="source-link">[[Source]](src/reactive_streams/publisher.md#L10)</span>


```pony
be subscribe(
  s: Subscriber[B] tag)
```
#### Parameters

*   s: [Subscriber](reactive_streams-Subscriber.md)\[B\] tag

---

