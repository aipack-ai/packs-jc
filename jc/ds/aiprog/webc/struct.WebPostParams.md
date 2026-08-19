# Struct WebPostParams

Parameters for a POST web request.

## Overview

- [Fields](#fields)
- [Auto Trait Implementations](#auto-trait-implementations)
- [Blanket Implementations](#blanket-implementations)

## Fields

```rust
pub struct WebPostParams {
    pub url: String,
    pub user_agent: Option<String>,
    pub headers: Option<HashMap<String, HeaderValue>>,
    pub query_params: Option<HashMap<String, HeaderValue>>,
    pub body: Option<RequestBody>,
    pub body_format: BodyFormat,
}
```

- `url` ([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))
- `user_agent` ([Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")>): Per-request User-Agent override. `None` uses the client’s default.
- `headers` ([Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[HashMap](https://doc.rust-lang.org/1.97.1/std/collections/hash/map/struct.HashMap.html "struct std::collections::hash::map::HashMap")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"), [HeaderValue](enum.HeaderValue.html "enum aiprog::webc::HeaderValue")>>): Additional headers to merge with the client’s defaults. Expected TypeScript shape: `{[name:string]: string | string[]}`.
- `query_params` ([Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[HashMap](https://doc.rust-lang.org/1.97.1/std/collections/hash/map/struct.HashMap.html "struct std::collections::hash::map::HashMap")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"), [HeaderValue](enum.HeaderValue.html "enum aiprog::webc::HeaderValue")>>): Optional query parameters appended to the request URL. Expected TypeScript shape: `{[name:string]: string | string[]}`.
- `body` ([Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<[RequestBody](enum.RequestBody.html "enum aiprog::webc::RequestBody")>): Request body. `None` means no body is sent.
- `body_format` ([BodyFormat](enum.BodyFormat.html "enum aiprog::webc::BodyFormat")): Desired format for the response body. Defaults to `Text`.

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [WebPostParams](struct.WebPostParams.html "struct aiprog::webc::WebPostParams")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn type_id(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")`

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn borrow(&self) -> &T`

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn borrow_mut(&mut self) -> &mut T`

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")

- `fn into(self) -> U`

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

- `fn into_either(self, into_left: bool) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")`
- `fn into_either_with(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")` where F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html "trait core::ops::function::FnOnce")(&Self) -> bool

### impl PolicyExt for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn and(self, other: P) -> And` where T: Policy, P: Policy
- `fn or(self, other: P) -> Or` where T: Policy, P: Policy

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

- `type Error = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")

- `type Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, Self::Error>`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")
- `fn with_current_subscriber(self) -> WithDispatch`

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

### impl MaybeSend for T

### impl MaybeSync for T
