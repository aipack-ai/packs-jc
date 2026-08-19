# Enum Error

Copy item path

[Source](../src/aiprog/error.rs.html#9-36)

```rust
pub enum Error {
    Custom(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"),
    ),
    CustomAndCause(
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"),
        [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"),
    ),
    LuaScript(
        [LuaErrorDetails](struct.LuaErrorDetails.html "struct aiprog::LuaErrorDetails"),
    ),
    Engine(
        [EngineError](enum.EngineError.html "enum aiprog::EngineError"),
    ),
    Io(
        [Error](https://doc.rust-lang.org/1.97.1/std/io/error/struct.Error.html "struct std::io::error::Error"),
    ),
    Json(
        [Error](https://docs.rs/serde_json/1.0.151/serde_json/error/struct.Error.html "struct serde_json::error::Error"),
    ),
    Lua(Error),
    SimpleFs(Error),
}
```

## Variants

- [Custom](#variant.Custom "Custom")
- [CustomAndCause](#variant.CustomAndCause "CustomAndCause")
- [Engine](#variant.Engine "Engine")
- [Io](#variant.Io "Io")
- [Json](#variant.Json "Json")
- [Lua](#variant.Lua "Lua")
- [LuaScript](#variant.LuaScript "LuaScript")
- [SimpleFs](#variant.SimpleFs "SimpleFs")

### Custom([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### CustomAndCause([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"), [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### LuaScript([LuaErrorDetails](struct.LuaErrorDetails.html "struct aiprog::LuaErrorDetails"))

### Engine([EngineError](enum.EngineError.html "enum aiprog::EngineError"))

### Io([Error](https://doc.rust-lang.org/1.97.1/std/io/error/struct.Error.html "struct std::io::error::Error"))

### Json([Error](https://docs.rs/serde_json/1.0.151/serde_json/error/struct.Error.html "struct serde_json::error::Error"))

### Lua(Error)

### SimpleFs(Error)

## Associated Functions and Methods

### impl [Error](enum.Error.html "enum aiprog::Error")

- pub fn [from_error_with_script](#method.from_error_with_script)(lua_error: &Error, script: &[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)) -> [Error](enum.Error.html "enum aiprog::Error")
  Deprecated shim: prefer `LuaErrorDetails::from_lua_error` plus `Error::LuaScript`.

### impl [Error](enum.Error.html "enum aiprog::Error")

- pub fn [custom](#method.custom)(val: impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")>) -> Self
- pub fn [custom_from_err](#method.custom_from_err)(err: impl [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error")) -> Self
- pub fn [cc](#method.cc)(context: impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")>, cause: impl [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display")) -> Self
  Same as custom_and_cause (just a “cute” shortcut)

## Trait Implementations

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [Error](enum.Error.html "enum aiprog::Error")

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")
  Formats the value using the given formatter.

### impl [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") for [Error](enum.Error.html "enum aiprog::Error")

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html#tymethod.fmt)(&self, __derive_more_f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")
  Formats the value using the given formatter.

### impl [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") for [Error](enum.Error.html "enum aiprog::Error")

- fn [source](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.source)(&self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<&(dyn [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") + 'static)>
  Returns the lower-level source of this error, if any.
- fn [description](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.description)(&self) -> &[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)
  Deprecated since 1.42.0.
- fn [cause](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.cause)(&self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<&dyn [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error")>
  Deprecated since 1.33.0.
- fn [provide](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.provide)<'a>(&'a self, request: &mut [Request](https://doc.rust-lang.org/1.97.1/core/error/struct.Request.html "struct core::error::Request")<'a>)
  Provides type-based access to context intended for error reports.

### Conversion Traits

- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&Error> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<&[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[AipRegistryError](registry/enum.AipRegistryError.html "enum aiprog::registry::AipRegistryError")> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[EngineError](enum.EngineError.html "enum aiprog::EngineError")> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[Error](enum.Error.html "enum aiprog::Error")> for Error
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[HandlerError](registry/struct.HandlerError.html "struct aiprog::registry::HandlerError")> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[LuaErrorDetails](struct.LuaErrorDetails.html "struct aiprog::LuaErrorDetails")> for [Error](enum.Error.html "enum aiprog::Error")
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> for [Error](enum.Error.html "enum aiprog::Error")

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [Error](enum.Error.html "enum aiprog::Error")
- impl ![RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [Error](enum.Error.html "enum aiprog::Error")
- impl ![Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [Error](enum.Error.html "enum aiprog::Error")
- impl ![Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [Error](enum.Error.html "enum aiprog::Error")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [Error](enum.Error.html "enum aiprog::Error")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [Error](enum.Error.html "enum aiprog::Error")
- impl ![UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [Error](enum.Error.html "enum aiprog::Error")

## Blanket Implementations

- impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T
- impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T
- impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T
- impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T
- impl [ToString](https://doc.rust-lang.org/1.97.1/alloc/string/trait.ToString.html "trait alloc::string::ToString") for T
- impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T
- impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T
