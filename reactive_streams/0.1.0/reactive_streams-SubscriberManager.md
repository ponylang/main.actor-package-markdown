# SubscriberManager\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L1)</span>

Manages a subscriber list.


```pony
interface ref SubscriberManager[A: Any #share]
```

## Public Functions

### min_request
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L5)</span>


Returns the lowest request count of all subscribers.


```pony
fun box min_request()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### max_request
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L10)</span>


Returns the highest request count of all subscribers.


```pony
fun box max_request()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### queue_bound
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L15)</span>


Returns the queue bound.


```pony
fun box queue_bound()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### queue_size
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L20)</span>


Returns the current queue size.


```pony
fun box queue_size()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### subscriber_count
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L25)</span>


Returns the current subscriber count.


```pony
fun box subscriber_count()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### publish
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L30)</span>


A ManagedPublisher should call this when it has data to publish.
Subscribers with pending demand will be sent the data immediately. If any
subscribers with no pending demand exist, the data will be kept on a
queue to be sent when subscribers request additional data.

The queue size can be bounded. If so, undelivered old data will be dropped
if new data must be queued and the queue has hit its size limit.


```pony
fun ref publish(
  a: A)
: None val
```
#### Parameters

*   a: A

#### Returns

* [None](builtin-None.md) val

---

### on_complete
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L41)</span>


A ManagedPublisher should call this when it has no more data to produce.


```pony
fun ref on_complete()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### on_error
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L46)</span>


A ManagedPublisher should call this when its internal state has resulted in
an error that should be propagated to all subscribers.


```pony
fun ref on_error(
  e: ReactiveError val)
: None val
```
#### Parameters

*   e: [ReactiveError](reactive_streams-ReactiveError.md) val

#### Returns

* [None](builtin-None.md) val

---

### on_subscribe
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L52)</span>


A ManagedPublisher should call this when it receives Publisher.subscribe.


```pony
fun ref on_subscribe(
  sub: Subscriber[A] tag)
: None val
```
#### Parameters

*   sub: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag

#### Returns

* [None](builtin-None.md) val

---

### on_request
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L57)</span>


A ManagedPublisher should call this when it receives
ManagedPublisher._on_request.


```pony
fun ref on_request(
  sub: Subscriber[A] tag,
  n: U64 val)
: None val
```
#### Parameters

*   sub: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag
*   n: [U64](builtin-U64.md) val

#### Returns

* [None](builtin-None.md) val

---

### on_cancel
<span class="source-link">[[Source]](src/reactive_streams/subscribermanager.md#L63)</span>


A ManagedPublisher should call this when it receives
ManagedPublisher._on_cancel.


```pony
fun ref on_cancel(
  sub: Subscriber[A] tag)
: None val
```
#### Parameters

*   sub: [Subscriber](reactive_streams-Subscriber.md)\[A\] tag

#### Returns

* [None](builtin-None.md) val

---

