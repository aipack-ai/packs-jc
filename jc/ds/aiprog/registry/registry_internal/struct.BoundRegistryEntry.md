# BoundRegistryEntry in aiprog::registry::registry_internal

## Fields

- [definition](#structfield.definition "definition")
- [handler](#structfield.handler "handler")
- [kind](#structfield.kind "kind")
- [path](#structfield.path "path")

## Auto Trait Implementations

- [!RefUnwindSafe](#impl-RefUnwindSafe-for-BoundRegistryEntry "!RefUnwindSafe")
- [!UnwindSafe](#impl-UnwindSafe-for-BoundRegistryEntry "!UnwindSafe")
- [Freeze](#impl-Freeze-for-BoundRegistryEntry "Freeze")
- [Send](#impl-Send-for-BoundRegistryEntry "Send")
- [Sync](#impl-Sync-for-BoundRegistryEntry "Sync")
- [Unpin](#impl-Unpin-for-BoundRegistryEntry "Unpin")
- [UnsafeUnpin](#impl-UnsafeUnpin-for-BoundRegistryEntry "UnsafeUnpin")

## Blanket Implementations

- [Any](#impl-Any-for-T "Any")
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T "AutoreleaseSafe")
- [Borrow](#impl-Borrow%3CT%3E-for-T "Borrow<T>")
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T "BorrowMut<T>")
- [From](#impl-From%3CT%3E-for-T "From<T>")
- [Instrument](#impl-Instrument-for-T "Instrument")
- [Into](#impl-Into%3CU%3E-for-T "Into<U>")
- [IntoEither](#impl-IntoEither-for-T "IntoEither")
- [MaybeSend](#impl-MaybeSend-for-T "MaybeSend")
- [MaybeSync](#impl-MaybeSync-for-T "MaybeSync")
- [PolicyExt](#impl-PolicyExt-for-T "PolicyExt")
- [TryFrom](#impl-TryFrom%3CU%3E-for-T "TryFrom<U>")
- [TryInto](#impl-TryInto%3CU%3E-for-T "TryInto<U>")
- [WithSubscriber](#impl-WithSubscriber-for-T "WithSubscriber")

# Struct BoundRegistryEntry

```rust
pub struct BoundRegistryEntry {
    pub definition: Arc,
    pub path: String,
    pub kind: AipFnKind,
    pub handler: AipHandlerClosure,
}
```

## Fields

- `definition`: [Arc](https://doc.rust-lang.org/1.97.1/alloc/sync/struct.Arc.html "struct alloc::sync::Arc")
- `path`: [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String")
- `kind`: [AipFnKind](../enum.AipFnKind.html "enum aiprog::registry::AipFnKind")
- `handler`: [AipHandlerClosure](enum.AipHandlerClosure.html "enum aiprog::registry::registry_internal::AipHandlerClosure")

## Auto Trait Implementations

### impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

### impl ! [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

### impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

### impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

### impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

### impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

### impl ! [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [BoundRegistryEntry](struct.BoundRegistryEntry.html "struct aiprog::registry::registry_internal::BoundRegistryEntry")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")

Gets the `TypeId` of `self`.

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Immutably borrows from an owned value.

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Mutably borrows from an owned value.

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

#### fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

Returns the argument unchanged.

### impl Instrument for T

#### fn instrument(self, span: Span) -> Instrumented

Instruments this type with the provided `Span`, returning an `Instrumented` wrapper.

#### fn in_current_span(self) -> Instrumented

Instruments this type with the current `Span`, returning an `Instrumented` wrapper.

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From"),

#### fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

Calls `U::from(self)`.

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

#### fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

Converts `self` into a `Left` or `Right` variant of `Either`.

#### fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

where F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html "trait core::ops::function::FnOnce")(&Self) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html),

Converts `self` into a `Left` or `Right` variant based on a closure.

### impl PolicyExt for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn and(self, other: P) -> And

where T: Policy, P: Policy,

Create a new `Policy` returning `Action::Follow` only if both return it.

#### fn or(self, other: P) -> Or

where T: Policy, P: Policy,

Create a new `Policy` returning `Action::Follow` if either returns it.

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into"),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")

#### fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")

Performs the conversion.

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom"),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error)

#### fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")

Performs the conversion.

### impl WithSubscriber for T

#### fn with_subscriber(self, subscriber: S) -> WithDispatch

where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into"),

Attaches the provided subscriber to this type.

#### fn with_current_subscriber(self) -> WithDispatch

Attaches the current default subscriber to this type.

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

### impl MaybeSend for T

### impl MaybeSync for T
