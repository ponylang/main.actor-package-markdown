```````pony-full-source
/*

Copyright 2017 The Pony MessagePack Developers

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

*/

use "buffered"

primitive MessagePackEncoder
  """
  Implements low-level encoding into the [MessagePack serialization format](https://github.com/msgpack/msgpack/blob/master/spec.md).

  You should be familiar with how MessagePack encodes messages if you use this
  API directly. There are very few guardrails preventing you from creating
  invalid documents. This is particularly true when using the `array` and `map`
  format family encoding methods.
  """
  //
  // nil format family
  //

  fun nil(b: Writer) =>
    """
    nil format stores nil in 1 byte.
    """
    _write_type(b, _FormatName.nil())

  //
  // bool format family
  //

  fun bool(b: Writer, t_or_f: Bool) =>
    """
    bool format family stores false or true in 1 byte.
    """
    if t_or_f then
      _write_type(b, _FormatName.truthy())
    else
      _write_type(b, _FormatName.falsey())
    end

  //
  // int format family
  //

  fun positive_fixint(b: Writer, v: U8) ? =>
    """
    positive fixnum stores 7-bit positive integer.

    - Max value that can be encoded is `127`.

    Attemping to encode an out of range value will result in an `error`.
    """
    if v <= _Limit.positive_fixint() then
      _write_fixed_value(b, v)
    else
      error
    end

  fun negative_fixint(b: Writer, v: I8) ? =>
    """
    negative fixnum stores 5-bit negative integer.

    - Max value that can be encoded is `-1`.
    - Min value that can be encoded is `-32`.

    Attemping to encode an out of range value will result in an `error`.
    """
    if (v >= _Limit.negative_fixint_low()) and
      (v <= _Limit.negative_fixint_high())
    then
      _write_fixed_value(b, v.u8())
    else
      error
    end

  fun uint_8(b: Writer, v: U8) =>
    """
    uint 8 stores a 8-bit unsigned integer.
    """
    _write_type(b, _FormatName.uint_8())
    b.u8(v)

  fun uint_16(b: Writer, v: U16) =>
    """
    uint 16 stores a 16-bit big-endian unsigned integer.
    """
    _write_type(b, _FormatName.uint_16())
    b.u16_be(v)

  fun uint_32(b: Writer, v: U32) =>
    """
    uint 32 stores a 32-bit big-endian unsigned integer.
    """
    _write_type(b, _FormatName.uint_32())
    b.u32_be(v)

  fun uint_64(b: Writer, v: U64) =>
    """
    uint 64 stores a 64-bit big-endian unsigned integer.
    """
    _write_type(b, _FormatName.uint_64())
    b.u64_be(v)

  fun int_8(b: Writer, v: I8) =>
    """
    int 8 stores a 8-bit signed integer.
    """
    _write_type(b, _FormatName.int_8())
    b.u8(v.u8())

  fun int_16(b: Writer, v: I16) =>
    """
    int 16 stores a 16-bit big-endian signed integer.
    """
    _write_type(b, _FormatName.int_16())
    b.i16_be(v)

  fun int_32(b: Writer, v: I32) =>
    """
    int 32 stores a 32-bit big-endian signed integer.
    """
    _write_type(b, _FormatName.int_32())
    b.i32_be(v)

  fun int_64(b: Writer, v: I64) =>
    """
    int 64 stores a 64-bit big-endian signed integer.
    """
    _write_type(b, _FormatName.int_64())
    b.i64_be(v)

  //
  // float format family
  //

  fun float_32(b: Writer, v: F32) =>
    """
    float 32 stores a floating point number in IEEE 754 single precision
    floating point number format.
    """
    _write_type(b, _FormatName.float_32())
    b.f32_be(v)

  fun float_64(b: Writer, v: F64) =>
    """
    float 64 stores a floating point number in IEEE 754 double precision
    floating point number format.
    """
    _write_type(b, _FormatName.float_64())
    b.f64_be(v)

  //
  // str format family
  //

  fun fixstr(b: Writer, v: ByteSeq) ? =>
    """
    fixstr stores a byte array whose length is upto 31 bytes.

    Attempting to encode a `ByteSeq` larger than 31 bytes will result in
    an `error`.
    """
    if v.size() <= _Limit.fixstr() then
      _write_type(b, (_FormatName.fixstr() or v.size().u8()))
      b.write(v)
    else
      error
    end

  fun str_8(b: Writer, v: ByteSeq) ? =>
    """
    str 8 stores a byte array whose length is upto (2^8)-1 bytes.

    Attempting to encode a `ByteSeq` larger than (2^8)-1 bytes will result in
    an `error`.
    """
    _write_btye_array_8(b, v, _FormatName.str_8())?

  fun str_16(b: Writer, v: ByteSeq) ? =>
    """
    str 16 stores a byte array whose length is upto (2^16)-1 bytes.

    Attempting to encode a `ByteSeq` larger than (2^16)-1 bytes will result in
    an `error`.
    """
    _write_btye_array_16(b, v, _FormatName.str_16())?

   fun str_32(b: Writer, v: ByteSeq) ? =>
    """
    str 32 stores a byte array whose length is upto (2^32)-1.

    Attempting to encode a `ByteSeq` larger than (2^32)-1 bytes will result in
    an `error`.
    """
    _write_btye_array_32(b, v, _FormatName.str_32())?

  //
  // bin format family
  //

  fun bin_8(b: Writer, v: ByteSeq) ? =>
    """
    bin 8 stores a byte array whose length is upto (2^8)-1 bytes.

    Attempting to encode a `ByteSeq` larger than (2^8)-1 bytes will result in
    an `error`.
    """
    _write_btye_array_8(b, v, _FormatName.bin_8())?

  fun bin_16(b: Writer, v: ByteSeq) ? =>
    """
    bin 16 stores a byte array whose length is upto (2^16)-1 bytes.

    Attempting to encode a `ByteSeq` larger than (2^16)-1 bytes will result in
    an `error`.
    """
    _write_btye_array_16(b, v, _FormatName.bin_16())?

   fun bin_32(b: Writer, v: ByteSeq) ? =>
     """
     bin 32 stores a byte array whose length is upto (2^32)-1 bytes.

     Attempting to encode a `ByteSeq` larger than (2^32)-1 bytes will result in
     an `error`.
     """
    _write_btye_array_32(b, v, _FormatName.bin_32())?

  //
  // array format family
  //

  fun fixarray(b: Writer, s: U8) ? =>
    """
    Creates a header for a MessagePack "fixarray". This only creates the
    header. `s` number of array items should be written via other methods
    after this is called.

    fixarray stores an array whose length is upto 15 elements.

    Attempting to encode a value larger than 15 will result in an `error`.
    """
    if s <= _Limit.fixarray() then
      _write_type(b, (_FormatName.fixarray() or s))
    else
      error
    end

  fun array_16(b: Writer, s: U16) =>
    """
    Creates a header for a MessagePack "array_16". This only creates the
    header. `s` number of array items should be written via other methods
    after this is called.

    array 16 stores an array whose length is upto (2^16)-1 elements.

    Attempting to encode a value larger than (2^16)-1 bytes will result in
    an `error`.
    """
    _write_type(b, _FormatName.array_16())
    b.u16_be(s)

  fun array_32(b: Writer, s: U32) =>
    """
    Creates a header for a MessagePack "array_32". This only creates the
    header. `s` number of array items should be written via other methods
    after this is called.

    array 32 stores an array whose length is upto (2^32)-1 elements.

    Attempting to encode a value larger than (2^32)-1 bytes will result in
    an `error`.
    """
    _write_type(b, _FormatName.array_32())
    b.u32_be(s)

  //
  // map format family
  //

  fun fixmap(b: Writer, s: U8) ? =>
    """
    Creates a header for a MessagePack "fixmap". This only creates the
    header. `s` number of map items should be written via other methods
    after this is called.

    fixmap stores a map whose length is upto 15 elements.

    Attempting to encode a value larger than 15 will result in an `error`.
    """
    if s <= _Limit.fixmap() then
      _write_type(b, (_FormatName.fixmap() or s))
    else
      error
    end

  fun map_16(b: Writer, s: U16) =>
    """
    Creates a header for a MessagePack "map_16". This only creates the
    header. `s` number of map items should be written via other methods
    after this is called.

    map 16 stores an array whose length is upto (2^16)-1 elements.

    Attempting to encode a value larger than (2^16)-1 bytes will result in
    an `error`.
    """
    _write_type(b, _FormatName.map_16())
    b.u16_be(s)

  fun map_32(b: Writer, s: U32) =>
    """
    Creates a header for a MessagePack "map_32". This only creates the
    header. `s` number of map items should be written via other methods
    after this is called.

    map 32 stores an array whose length is upto (2^32)-1 elements.

    Attempting to encode a value larger than (2^32)-1 bytes will result in
    an `error`.
    """
    _write_type(b, _FormatName.map_32())
    b.u32_be(s)

  //
  // ext format family
  //

  fun fixext_1(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    fixext 1 stores an integer and a byte array whose length is 1 byte.

    Attempting to encode a `ByteSeq` that is not 1 element in size will result
    in an `error`.
    """
    if v.size() == _Size.fixext_1() then
      _write_type(b, _FormatName.fixext_1())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun fixext_2(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    fixext 2 stores an integer and a byte array whose length is 2 byte.

    Attempting to encode a `ByteSeq` that is not 2 element in size will result
    in an `error`.
    """
    if v.size() == _Size.fixext_2() then
      _write_type(b, _FormatName.fixext_2())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun fixext_4(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    fixext 4 stores an integer and a byte array whose length is 4 byte.

    Attempting to encode a `ByteSeq` that is not 4 element in size will result
    in an `error`.
    """
    if v.size() == _Size.fixext_4() then
      _write_type(b, _FormatName.fixext_4())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun fixext_8(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    fixext 8 stores an integer and a byte array whose length is 8 byte.

    Attempting to encode a `ByteSeq` that is not 8 element in size will result
    in an `error`.
    """
    if v.size() == _Size.fixext_8() then
      _write_type(b, _FormatName.fixext_8())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun fixext_16(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    fixext 16 stores an integer and a byte array whose length is 16 byte.

    Attempting to encode a `ByteSeq` that is not 16 element in size will result
    in an `error`.
    """
    if v.size() == _Size.fixext_16() then
      _write_type(b, _FormatName.fixext_16())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun ext_8(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    ext 8 stores an integer and a byte array whose length is
    upto (2^8)-1 bytes.

    Attempting to encode a `ByteSeq` that is larger than (2^8)-1 bytes in
    size will result in an `error`.
    """
    if v.size() <= U8.max_value().usize() then
      _write_type(b, _FormatName.ext_8())
      b.u8(v.size().u8())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun ext_16(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    ext 16 stores an integer and a byte array whose length is
    upto (2^16)-1 bytes.

    Attempting to encode a `ByteSeq` that is larger than (2^16)-1 bytes in
    size will result in an `error`.
    """
    if v.size() <= U16.max_value().usize() then
      _write_type(b, _FormatName.ext_16())
      b.u16_be(v.size().u16())
      b.u8(t)
      b.write(v)
    else
      error
    end

  fun ext_32(b: Writer, t: U8, v: ByteSeq) ? =>
    """
    Allows for the creation of user supplied extensions to the MessagePack
    format. User should provide not just the value `v` to be encoded, but a
    unique type identifier `t` as well.

    Type identifiers `0` to `127` are valid for user supplied types.
    MessagePack reserves -1 to -128 for future extension to add predefined
    types.

    ext 32 stores an integer and a byte array whose length is
    upto (2^32)-1 bytes.

    Attempting to encode a `ByteSeq` that is larger than (2^32)-1 bytes in
    size will result in an `error`.
    """
    if v.size() <= U32.max_value().usize() then
      _write_type(b, _FormatName.ext_32())
      b.u32_be(v.size().u32())
      b.u8(t)
      b.write(v)
    else
      error
    end

  //
  // support methods
  //

  fun _write_type(b: Writer, t: U8) =>
    b.u8(t)

  fun _write_fixed_value(b: Writer, v: U8) =>
    b.u8(v)

  fun _write_btye_array_8(b: Writer, v: ByteSeq, t: U8) ? =>
    if v.size() <= U8.max_value().usize() then
      _write_type(b, t)
      b.u8(v.size().u8())
      b.write(v)
    else
      error
    end

  fun _write_btye_array_16(b: Writer, v: ByteSeq, t: U8) ? =>
    if v.size() <= U16.max_value().usize() then
      _write_type(b, t)
      b.u16_be(v.size().u16())
      b.write(v)
    else
      error
    end

  fun _write_btye_array_32(b: Writer, v: ByteSeq, t: U8) ? =>
    if v.size() <= U32.max_value().usize() then
      _write_type(b, t)
      b.u32_be(v.size().u32())
      b.write(v)
    else
      error
    end

```````