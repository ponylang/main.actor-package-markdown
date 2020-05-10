# NoSubscription
<span class="source-link">[[Source]](src/reactive_streams/subscription.md#L39)</span>
```pony
class ref NoSubscription is
  Subscription ref
```

#### Implements

* [Subscription](reactive_streams-Subscription.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/reactive_streams/subscription.md#L39)</span>


```pony
new iso create()
: NoSubscription iso^
```

#### Returns

* [NoSubscription](reactive_streams-NoSubscription.md) iso^

---

## Public Functions

### request
<span class="source-link">[[Source]](src/reactive_streams/subscription.md#L11)</span>


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


```pony
fun ref cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

