# Enum Error

[Source](../../src/aiprog/webc/error.rs.html#8-21)

```js
pub enum Error {
    Custom(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
    ),
    BuildFailed(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
    ),
    RequestFailed(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
    ),
    BodyParseFailed(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
    ),
}
```

Error for the webc module.

## Variants

- [BodyParseFailed](#variant.BodyParseFailed "BodyParseFailed")
- [BuildFailed](#variant.BuildFailed "BuildFailed")
- [Custom](#variant.Custom "Custom")
- [RequestFailed](#variant.RequestFailed "RequestFailed")

### Custom([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### BuildFailed([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### RequestFailed([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### BodyParseFailed([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

## Associated Functions and Implementations

- [custom](#method.custom "custom")
- [build_failed](#method.build_failed "build_failed")
- [request_failed](#method.request_failed "request_failed")
- [body_parse_failed](#method.body_parse_failed "body_parse_failed")
- [custom_from_err](#method.custom_from_err "custom_from_err")

### impl [Error](enum.Error.html "enum aiprog::webc::Error")

- [Source](../../src/aiprog/webc/error.rs.html#26-28)
  - `pub fn custom(val: impl Into<String>) -> Self`
- [Source](../../src/aiprog/webc/error.rs.html#30-32)
  - `pub fn build_failed(val: impl Into<String>) -> Self`
- [Source](../../src/aiprog/webc/error.rs.html#34-36)
  - `pub fn request_failed(val: impl Into<String>) -> Self`
- [Source](../../src/aiprog/webc/error.rs.html#38-40)
  - `pub fn body_parse_failed(val: impl Into<String>) -> Self`
- [Source](../../src/aiprog/webc/error.rs.html#42-44)
  - `pub fn custom_from_err(err: impl Error) -> Self`

## Trait Implementations

- [Debug](#impl-Debug-for-Error "Debug")
- [Display](#impl-Display-for-Error "Display")
- [Error](#impl-Error-for-Error "Error")
- [From<&String>](#impl-From%3C%26String%3E-for-Error "From<&String>")
- [From<&str>](#impl-From%3C%26str%3E-for-Error "From<&str>")
- [From](#impl-From%3CString%3E-for-Error "From<String>")

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [Error](enum.Error.html "enum aiprog::webc::Error")

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` - Formats the value using the given formatter.

### impl [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") for [Error](enum.Error.html "enum aiprog::webc::Error")

- `fn fmt(&self, __derive_more_f: &mut Formatter<'_>) -> Result` - Formats the value using the given formatter.

### impl [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") for [Error](enum.Error.html "enum aiprog::webc::Error")

- `fn source(&self) -> Option<&(dyn Error + 'static)>` - Returns the lower-level source of this error, if any.
- `fn description(&self) -> &str` - 👎Deprecated since 1.42.0: use the Display impl or to_string()
- `fn cause(&self) -> Option<&dyn Error>` - 👎Deprecated since 1.33.0: replaced by Error::source, which can support downcasting
- `fn provide<'a>(&'a self, request: &mut Request<'a>)` - 🔬This is a nightly-only experimental API. (`error_generic_member_access`)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> for [Error](enum.Error.html "enum aiprog::webc::Error")

- `fn from(value: &String) -> Self` - Converts to this type from the input type.

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)> for [Error](enum.Error.html "enum aiprog::webc::Error")

- `fn from(value: &str) -> Self` - Converts to this type from the input type.

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> for [Error](enum.Error.html "enum aiprog::webc::Error")

- `fn from(value: String) -> Self` - Converts to this type from the input type.

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
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T "AutoreleaseSafe")
- [Borrow](#impl-Borrow%3CT%3E-for-T "Borrow<T>")
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T "BorrowMut<T>")
- [ExternalError](#impl-ExternalError-for-E "ExternalError")
- [From](#impl-From%3CT%3E-for-T "From<T>")
- [Instrument](#impl-Instrument-for-T "Instrument")
- [Into](#impl-Into%3CU%3E-for-T "Into<U>")
- [IntoEither](#impl-IntoEither-for-T "IntoEither")
- [MaybeSend](#impl-MaybeSend-for-T "MaybeSend")
- [MaybeSync](#impl-MaybeSync-for-T "MaybeSync")
- [PolicyExt](#impl-PolicyExt-for-T "PolicyExt")
- [ToString](#impl-ToString-for-T "ToString")
- [TryFrom](#impl-TryFrom%3CU%3E-for-T "TryFrom<U>")
- [TryInto](#impl-TryInto%3CU%3E-for-T "TryInto<U>")
- [WithSubscriber](#impl-WithSubscriber-for-T "WithSubscriber")
