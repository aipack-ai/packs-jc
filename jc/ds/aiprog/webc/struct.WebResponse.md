# Struct WebResponse

Response from a web call.

## Structure

```rust
pub struct WebResponse {
    pub status: u16,
    pub success: bool,
    pub url: String,
    pub headers: HashMap<String, String>,
    pub content_type: String,
    pub body: Body,
}
```

## Fields

- `status`: [u16](https://doc.rust-lang.org/1.97.1/std/primitive.u16.html) - The HTTP status code.
- `success`: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html) - `true` when `status` is 2xx.
- `url`: [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String") - The final URL after any redirects.
- `headers`: [HashMap](https://doc.rust-lang.org/1.97.1/std/collections/hash/map/struct.HashMap.html "struct std::collections::hash::map::HashMap")<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"), [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")> - Response headers, keys are lower-case.
- `content_type`: [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String") - The `Content-Type` header value. Empty string if the header is absent.
- `body`: [Body](enum.Body.html "enum aiprog::webc::Body") - The response body in the format requested via `BodyFormat`.

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [WebResponse](struct.WebResponse.html "struct aiprog::webc::WebResponse")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

- Signature: `fn type_id(&self) -> TypeId`

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

- Signature: `fn borrow(&self) -> &T`

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

- Signature: `fn borrow_mut(&mut self) -> &mut T`

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- Signature: `fn from(t: T) -> T`

### impl Instrument for T

- Signature: `fn instrument(self, span: Span) -> Instrumented`
- Signature: `fn in_current_span(self) -> Instrumented`

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

- Signature: `fn into(self) -> U`

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

- Signature: `fn into_either(self, into_left: bool) -> Either`
- Signature: `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`

### impl PolicyExt for T

- Signature: `fn and(self, other: P) -> And where T: Policy, P: Policy`
- Signature: `fn or(self, other: P) -> Or where T: Policy, P: Policy`

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

- Associated Type: `type Error = Infallible`
- Signature: `fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

- Associated Type: `type Error = <U as TryFrom<T>>::Error`
- Signature: `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

### impl WithSubscriber for T

- Signature: `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into`
- Signature: `fn with_current_subscriber(self) -> WithDispatch`

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

- Implements auto trait `AutoreleaseSafe` for any sized type `T`.

### impl MaybeSend for T

- Implements `MaybeSend` for `T`.

### impl MaybeSync for T

- Implements `MaybeSync` for `T`.
