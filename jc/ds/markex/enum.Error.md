# Enum Error

[Source](../src/markex/error.rs.html#9-13)

```rust
pub enum Error {
    Custom(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
    ),
}
```

## Variants

- [Custom](#variant.Custom "Custom")

## Associated Functions

- [custom_from_err](#method.custom_from_err "custom_from_err")
- [custom](#method.custom "custom")

## Trait Implementations

- [Debug](#impl-Debug-for-Error "Debug")
- [Display](#impl-Display-for-Error "Display")
- [Error](#impl-Error-for-Error "Error")
- [From<&String>](#impl-From%3C%26String%3E-for-Error "From<&String>")
- [From<&str>](#impl-From%3C%26str%3E-for-Error "From<&str>")
- [From](#impl-From%3CString%3E-for-Error "From<String>")

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-Error "Freeze")
- [RefUnwindSafe](#impl-RefUnwindSafe-for-Error "RefUnwindSafe")
- [Send](#impl-Send-for-Error "Send")
- [Sync](#impl-Sync-for-Error "Sync")
- [Unpin](#impl-Unpin-for-Error "Unpin")
- [UnsafeUnpin](#impl-UnsafeUnpin-for-Error "UnsafeUnpin")
- [UnwindSafe](#impl-UnwindSafe-for-Error "UnwindSafe")

## Blanket Implementations

- [Any](#impl-Any-for-T "Any")
- [Borrow](#impl-Borrow%3CT%3E-for-T "Borrow<T>")
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T "BorrowMut<T>")
- [From](#impl-From%3CT%3E-for-T "From<T>")
- [Into](#impl-Into%3CU%3E-for-T "Into<U>")
- [ToString](#impl-ToString-for-T "ToString")
- [TryFrom](#impl-TryFrom%3CU%3E-for-T "TryFrom<U>")
- [TryInto](#impl-TryInto%3CU%3E-for-T "TryInto<U>")

## Details

### Variants

#### Custom([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### Implementations

#### impl [Error](enum.Error.html "enum markex::Error")

- [Source](../src/markex/error.rs.html#18-20)
  ```rust
  pub fn custom_from_err(err: impl [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error")) -> Self
  ```

- [Source](../src/markex/error.rs.html#22-24)
  ```rust
  pub fn custom(val: impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")>) -> Self
  ```

### Trait Implementations

#### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [Error](enum.Error.html "enum markex::Error")

- [Source](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)
  ```rust
  fn fmt(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")
  ```
  Formats the value using the given formatter.

#### impl [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") for [Error](enum.Error.html "enum markex::Error")

- [Source](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html#tymethod.fmt)
  ```rust
  fn fmt(&self, __derive_more_f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")
  ```
  Formats the value using the given formatter.

#### impl [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") for [Error](enum.Error.html "enum markex::Error")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/error.rs.html#111)
  ```rust
  fn source(&self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<&(dyn [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") + 'static)>
  ```
  Returns the lower-level source of this error, if any.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/error.rs.html#137)
  ```rust
  fn description(&self) -> &[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)
  ```
  Deprecated since 1.42.0: use the Display impl or to_string()

- [Source](https://doc.rust-lang.org/1.97.1/src/core/error.rs.html#147)
  ```rust
  fn cause(&self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<&dyn [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error")>
  ```
  Deprecated since 1.33.0: replaced by Error::source

- [Source](https://doc.rust-lang.org/1.97.1/src/core/error.rs.html#260)
  ```rust
  fn provide<'a>(&'a self, request: &mut [Request](https://doc.rust-lang.org/1.97.1/core/error/struct.Request.html "struct core::error::Request")<'a>)
  ```
  Provides type-based access to context intended for error reports.

#### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> for [Error](enum.Error.html "enum markex::Error")

- [Source](../src/markex/error.rs.html#7)
  ```rust
  fn from(value: &[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")) -> Self
  ```

#### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)> for [Error](enum.Error.html "enum markex::Error")

- [Source](../src/markex/error.rs.html#7)
  ```rust
  fn from(value: &[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)) -> Self
  ```

#### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> for [Error](enum.Error.html "enum markex::Error")

- [Source](../src/markex/error.rs.html#7)
  ```rust
  fn from(value: [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")) -> Self
  ```

### Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [Error](enum.Error.html "enum markex::Error")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [Error](enum.Error.html "enum markex::Error")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [Error](enum.Error.html "enum markex::Error")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [Error](enum.Error.html "enum markex::Error")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [Error](enum.Error.html "enum markex::Error")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [Error](enum.Error.html "enum markex::Error")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [Error](enum.Error.html "enum markex::Error")

### Blanket Implementations

#### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#142)
  ```rust
  fn type_id(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")
  ```

#### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#214)
  ```rust
  fn borrow(&self) -> &[T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)
  ```

#### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#222)
  ```rust
  fn borrow_mut(&mut self) -> &mut [T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)
  ```

#### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#789)
  ```rust
  fn from(t: T) -> T
  ```

#### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#778)
  ```rust
  fn into(self) -> U
  ```

#### impl [ToString](https://doc.rust-lang.org/1.97.1/alloc/string/trait.ToString.html "trait alloc::string::ToString") for T where T: [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/alloc/string.rs.html#2906)
  ```rust
  fn to_string(&self) -> [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
  ```

#### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#832)
  ```rust
  type Error = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")
  ```
- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#835)
  ```rust
  fn try_from(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<Self, Self::Error>
  ```

#### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#816)
  ```rust
  type Error = U::Error
  ```
- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#819)
  ```rust
  fn try_into(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<U, U::Error>
  ```
