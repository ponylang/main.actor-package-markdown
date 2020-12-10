# List\[A: A\]
<span class="source-link">[[Source]](src/collections-persistent/list.md#L1)</span>

A persistent list with functional transformations.

## Usage

```pony
use "collections/persistent"

actor Main
  new create(env: Env) =>
    try
      let l1 = Lists[U32]([2; 4; 6; 8]) // List(2, 4, 6, 8)

      let empty = Lists[U32].empty() // List()

      // prepend() returns a new List, leaving the
      // old list unchanged
      let l2 = empty.prepend(3) // List(3)
      let l3 = l2.prepend(2) // List(2, 3)
      let l4 = l3.prepend(1) // List(1, 2, 3)
      let l4_head = l4.head() // 1
      let l4_tail = l4.tail() // List(2, 3)

      l4_head == 1
      Lists[U32].eq(l4, Lists[U32]([1; 2; 3]))?
      Lists[U32].eq(l4_tail, Lists[U32]([2; 3]))?

      let doubled = l4.map[U32]({(x) => x * 2 })

      Lists[U32].eq(doubled, Lists[U32]([2; 4; 6]))?
    end
```


```pony
type List[A: A] is
  (Cons[A] val | Nil[A] val)
```

#### Type Alias For

* ([Cons](collections-persistent-Cons.md)\[A\] val | [Nil](collections-persistent-Nil.md)\[A\] val)

---

