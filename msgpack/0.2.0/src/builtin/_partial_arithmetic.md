```````pony-full-source

trait _PartialArithmetic
  fun add_partial[T: (Integer[T] val & Int)](x: T, y: T): T? =>
    (let r: T, let overflow: Bool) = x.addc(y)
    if overflow then error else r end

  fun sub_partial[T: (Integer[T] val & Int)](x: T, y: T): T? =>
    (let r: T, let overflow: Bool) = x.subc(y)
    if overflow then error else r end

  fun mul_partial[T: (Integer[T] val & Int)](x: T, y: T): T? =>
    (let r: T, let overflow: Bool) = x.mulc(y)
    if overflow then error else r end

primitive _UnsignedPartialArithmetic is _PartialArithmetic

  fun div_checked[T: UnsignedInteger[T] val](x: T, y: T): (T, Bool) =>
    (x / y, (y == T.from[U8](0)))

  fun rem_checked[T: UnsignedInteger[T] val](x: T, y: T): (T, Bool) =>
    (x % y, y == T.from[U8](0))

  fun div_partial[T: UnsignedInteger[T] val](x: T, y: T): T? =>
    if (y == T.from[U8](0)) then
      error
    else
      x /~ y
    end

  fun rem_partial[T: UnsignedInteger[T] val](x: T, y: T): T? =>
    if (y == T.from[U8](0)) then
      error
    else
      x %~ y
    end

  fun divrem_partial[T: UnsignedInteger[T] val](x: T, y: T): (T, T)? =>
    if (y == T.from[U8](0)) then
      error
    else
      (x /~ y, x %~ y)
    end

primitive _SignedPartialArithmetic is _PartialArithmetic

  fun div_checked[T: (SignedInteger[T, U] val & Signed), U: UnsignedInteger[U] val](x: T, y: T): (T, Bool) =>
    (x / y, (y == T.from[I8](0)) or ((y == T.from[I8](I8(-1))) and (x == T.min_value())))

  fun rem_checked[T: (SignedInteger[T, U] val & Signed), U: UnsignedInteger[U] val](x: T, y: T): (T, Bool) =>
    (x % y, (y == T.from[I8](0)) or ((y == T.from[I8](I8(-1))) and (x == T.min_value())))

  fun div_partial[T: (SignedInteger[T, U] val & Signed), U: UnsignedInteger[U] val](x: T, y: T): T? =>
    if (y == T.from[I8](0)) or ((y == T.from[I8](I8(-1))) and (x == T.min_value())) then
      error
    else
      x /~ y
    end

  fun rem_partial[T: (SignedInteger[T, U] val & Signed), U: UnsignedInteger[U] val](x: T, y: T): T? =>
    if (y == T.from[I8](0)) or ((y == T.from[I8](I8(-1))) and (x == T.min_value())) then
      error
    else
      x %~ y
    end

  fun divrem_partial[T: (SignedInteger[T, U] val & Signed), U: UnsignedInteger[U] val](x: T, y: T): (T, T)? =>
    if (y == T.from[I8](0)) or ((y == T.from[I8](I8(-1))) and (x == T.min_value())) then
      error
    else
      (x/~y, x %~ y)
    end

  fun neg_partial[T: (SignedInteger[T, U] val & Signed), U: UnsignedInteger[U] val](x: T): T? =>
    if x == T.min_value() then
      error
    else
      -~x
    end

```````