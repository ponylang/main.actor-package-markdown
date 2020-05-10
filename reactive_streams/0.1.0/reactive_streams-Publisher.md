# Publisher\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/reactive_streams/publisher.md#L1)</span>

A Publisher is a provider of a potentially unbounded number of sequenced
elements, publishing them according to the demand received from its
Subscriber(s).

A Publisher can serve multiple Subscribers subscribed dynamically at various
points in time.


```pony
interface tag Publisher[A: Any #share]
```

## Public Behaviours

### subscribe
<span class="source-link">[[Source]](src/reactive_streams/publisher.md#L10)</span>


Request Publisher to start streaming data.

This is a "factory method" and can be called multiple times, each time
starting a new Subscription.

Each Subscription will work for only a single Subscriber.

A Subscriber should only subscribe once to a single Publisher.

If the Publisher rejects the subscription attempt or otherwise fails it
will signal the error via Subscriber.on_error.


```pony
be subscribe(
  s: Subscriber[A] tag)
```
#### Parameters

*   s: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag

---

