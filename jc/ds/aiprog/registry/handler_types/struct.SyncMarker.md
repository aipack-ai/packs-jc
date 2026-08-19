# Struct SyncMarker

[Source](https://github.com/aiprog/aiprog/blob/master/src/aiprog/registry/handler_types.rs#L45)

```rust
pub struct SyncMarker;
```

Marker type for synchronous handler implementations.

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [SyncMarker](struct.SyncMarker.html "struct aiprog::registry::handler_types::SyncMarker")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> &[T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> &mut [T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

### impl Instrument for T

- fn instrument(self, span: Span) -> Instrumented
- fn in_current_span(self) -> Instrumented

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")

- fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

- fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")
- fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") where F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html "trait core::ops::function::FnOnce")(&Self) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

### impl PolicyExt for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- fn and(self, other: P) -> And where T: Policy, P: Policy
- fn or(self, other: P) -> Or where T: Policy, P: Policy

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")
- fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<T, <T as [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")>::[Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")>

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = <U as [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")>::[Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")
- fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<U, <U as [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")>::[Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")>

### impl WithSubscriber for T

- fn with_subscriber(self, subscriber: S) -> WithDispatch where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")
- fn with_current_subscriber(self) -> WithDispatch

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

### impl MaybeSend for T

### impl MaybeSync for T
