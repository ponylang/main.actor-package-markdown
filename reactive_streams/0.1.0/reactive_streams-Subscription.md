# Subscription
<span class="source-link">[[Source]](src/reactive_streams/subscription.md#L1)</span>

A Subscription represents a one-to-one lifecycle of a Subscriber subscribing
to a Publisher.

It can only be used by a single Subscriber.

It is used to both signal desire for data and cancel demand (and allow
resource cleanup).


```pony
interface ref Subscription
```

## Public Functions

### request
<span class="source-link">[[Source]](src/reactive_streams/subscription.md#L11)</span>


No events will be sent by a Publisher until demand is signaled via this
method.

It can be called however often and whenever needed—but the outstanding
cumulative demand must never exceed U64.max_value.

An outstanding cumulative demand of U64.max_value may be treated by the
Publisher as "effectively unbounded".

Whatever has been requested can be sent by the Publisher so only signal
demand for what can be safely handled.

A Publisher can send less than is requested if the stream ends but then
must emit either Subscriber.on_error or Subscriber.on_complete.


```pony
fun ref request(
  n: U64 val)
: None val
```
#### Parameters

*   n: [U64](builtin-U64.md) val

#### Returns

* [None](builtin-None.md) val

---

### cancel
<span class="source-link">[[Source]](src/reactive_streams/subscription.md#L30)</span>


Request the Publisher to stop sending data and clean up resources.

Data may still be sent to meet previously signalled demand after calling
cancel as this request is asynchronous.


```pony
fun ref cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

