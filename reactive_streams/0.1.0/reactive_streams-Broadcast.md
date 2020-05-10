# Broadcast\[A: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L3)</span>

Broadcasts data to all subscribers.


```pony
class ref Broadcast[A: Any #share] is
  SubscriberManager[A] ref
```

#### Implements

* [SubscriberManager](reactive_streams-SubscriberManager.md)\[A\] ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L14)</span>


Create a Broadcast for a given ManagedPublisher.


```pony
new ref create(
  pub: ManagedPublisher[A] tag,
  qbound: U64 val = call)
: Broadcast[A] ref^
```
#### Parameters

*   pub: [ManagedPublisher](reactive_streams-ManagedPublisher.md)\[A\] tag
*   qbound: [U64](builtin-U64.md) val = call

#### Returns

* [Broadcast](reactive_streams-Broadcast.md)\[A\] ref^

---

## Public Functions

### min_request
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L21)</span>


Returns the lowest request count of all subscribers.


```pony
fun box min_request()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### max_request
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L27)</span>


Returns the highest request count of all subscribers.


```pony
fun box max_request()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### queue_bound
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L33)</span>


Returns the queue bound.


```pony
fun box queue_bound()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### queue_size
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L39)</span>


Returns the current queue size.


```pony
fun box queue_size()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### subscriber_count
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L45)</span>


Returns the current subscriber count.


```pony
fun box subscriber_count()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

### publish
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L51)</span>


Send data to all subscribers.


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
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L123)</span>


A ManagedPublisher should call this when it has no more data to produce.


```pony
fun ref on_complete()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### on_error
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L132)</span>


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
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L151)</span>


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
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L164)</span>


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
<span class="source-link">[[Source]](src/reactive_streams/broadcast.md#L214)</span>


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

