# Subscriber\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L1)</span>

Will receive call to on_subscribe once after passing an instance of
Subscriber to Publisher.subscribe.

No further notifications will be received until Subscription.request is
called.

After signaling demand:

* One or more invocations of on_next up to the maximum number defined by
  Subscription.request
* Single invocation of on_error or on_complete which signals a terminal
  state after which no further events will be sent.

Demand can be signaled via Subscription.request whenever the Subscriber
instance is capable of handling more.


```pony
interface tag Subscriber[A: Any #share]
```

## Public Behaviours

### on_subscribe
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L19)</span>


Invoked after calling Publisher.subscribe.

No data will start flowing until Subscription.request is invoked.

It is the responsibility of this Subscriber instance to call
Subscription.request whenever more data is wanted.

The Publisher will send notifications only in response to
Subscription.request.


```pony
be on_subscribe(
  s: Subscription iso)
```
#### Parameters

*   s: [Subscription](reactive_streams-Subscription.md) iso

---

### on_next
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L33)</span>


Data notification sent by the Publisher in response to requests to
Subscription.request.


```pony
be on_next(
  a: A)
```
#### Parameters

*   a: A

---

### on_error
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L40)</span>


Failed terminal state.

No further events will be sent even if Subscription.request is invoked
again.


```pony
be on_error(
  e: ReactiveError val)
```
#### Parameters

*   e: [ReactiveError](reactive_streams-ReactiveError.md) val

---

### on_complete
<span class="source-link">[[Source]](src/reactive_streams/subscriber.md#L49)</span>


Successful terminal state.

No further events will be sent even if Subscription.request is invoked
again.


```pony
be on_complete()
```

---

