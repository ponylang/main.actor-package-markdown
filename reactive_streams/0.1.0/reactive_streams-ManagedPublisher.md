# ManagedPublisher\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/reactive_streams/managedpublisher.md#L1)</span>

A ManagedPublisher must have a SubscriberManager and give access to it.


```pony
interface tag ManagedPublisher[A: Any #share] is
  Publisher[A] tag
```

#### Implements

* [Publisher](reactive_streams-Publisher.md)\[A\] tag

---

## Public Behaviours

### subscribe
<span class="source-link">[[Source]](src/reactive_streams/managedpublisher.md#L10)</span>


A ManagedPublisher must respond by calling SubscriberManager._on_subscribe.


```pony
be subscribe(
  s: Subscriber[A] tag)
```
#### Parameters

*   s: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag

---

### on_request
<span class="source-link">[[Source]](src/reactive_streams/managedpublisher.md#L16)</span>


A ManagedPublisher must respond by calling SubscriberManager._on_request.


```pony
be on_request(
  s: Subscriber[A] tag,
  n: U64 val)
```
#### Parameters

*   s: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag
*   n: [U64](builtin-U64.md) val

---

### on_cancel
<span class="source-link">[[Source]](src/reactive_streams/managedpublisher.md#L22)</span>


A ManagedPublisher must respond by calling SubscriberManager._on_cancel.


```pony
be on_cancel(
  s: Subscriber[A] tag)
```
#### Parameters

*   s: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag

---

