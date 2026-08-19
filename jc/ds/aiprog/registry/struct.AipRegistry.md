# Struct AipRegistry

Copy item path

[Source](../../src/aiprog/registry/registry_impl.rs.html#24-26)

```rust
pub struct AipRegistry { /* private fields */ }
```

## Implementations

[Source](../../src/aiprog/registry/registry_impl.rs.html#38-107)

### impl [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

[Source](../../src/aiprog/registry/registry_impl.rs.html#39-41)

#### pub fn [from\_empty](#method.from_empty)() -> [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

[Source](../../src/aiprog/registry/registry_impl.rs.html#43-45)

#### pub fn [from\_aip\_modules](#method.from_aip_modules)() -> [Result](../type.Result.html "type aiprog::Result")<[AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")>

[Source](../../src/aiprog/registry/registry_impl.rs.html#47-55)

#### pub fn [to\_builder](#method.to_builder)(&self) -> [AipRegistryBuilder](struct.AipRegistryBuilder.html "struct aiprog::registry::AipRegistryBuilder")

[Source](../../src/aiprog/registry/registry_impl.rs.html#57-71)

#### pub fn [list\_registered\_fns](#method.list_registered_fns)(&self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html "struct alloc::vec::Vec")<[AipRegisteredFn](struct.AipRegisteredFn.html "struct aiprog::regisry::AipRegisteredFn")>

[Source](../../src/aiprog/registry/registry_impl.rs.html#73-79)

#### pub fn [select](#method.select)(&self, patterns: I, options: [RegistrySelectionOptions](struct.RegistrySelectionOptions.html "struct aiprog::registry::RegistrySelectionOptions")) -> [RegistrySelectionResult](type.RegistrySelectionResult.html "type aiprog::registry::RegistrySelectionResult")<[AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")>

where
    I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"),
    S: [AsRef](https://doc.rust-lang.org/1.97.1/core/convert/trait.AsRef.html "trait core::convert::AsRef")<[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)>,

[Source](../../src/aiprog/registry/registry_impl.rs.html#81-87)

#### pub fn [exclude](#method.exclude)(&self, patterns: I, options: [RegistrySelectionOptions](struct.RegistrySelectionOptions.html "struct aiprog::registry::RegistrySelectionOptions")) -> [RegistrySelectionResult](type.RegistrySelectionResult.html "type aiprog::registry::RegistrySelectionResult")<[AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")>

where
    I: [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html "trait core::iter::traits::collect::IntoIterator"),
    S: [AsRef](https://doc.rust-lang.org/1.97.1/core/convert/trait.AsRef.html "trait core::convert::AsRef")<[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)>,

## Trait Implementations

[Source](../../src/aiprog/registry/registry_impl.rs.html#23)

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

[Source](../../src/aiprog/registry/registry_impl.rs.html#23)

#### fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)

1.0.0 (const: [unstable](https://github.com/rust-lang/rust/issues/142757 "Tracking issue for const_clone")) · [Source](https://doc.rust-lang.org/1.97.1/src/core/clone.rs.html#245-247)

#### fn [clone\_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

## Auto Trait Implementations

### impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

### impl ! [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

### impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

### impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

### impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

### impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

### impl ! [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [AipRegistry](struct.AipRegistry.html "struct aiprog::registry::AipRegistry")

## Blanket Implementations

[Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#141)

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where
    T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn [type\_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

[Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#212)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where
    T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

[Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#221)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where
    T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn [borrow\_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

[Source](https://doc.rust-lang.org/1.97.1/src/core/clone.rs.html#547)

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html "trait core::clone::CloneToUninit") for T

where
    T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone"),

#### unsafe fn [clone\_to\_uninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [u8](https://doc.rust-lang.org/1.97.1/std/primitive.u8.html))

🔬This is a nightly-only experimental API. (`clone_to_uninit`)

Performs copy-assignment from `self` to `dest`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)

[Source](https://docs.rs/dyn-clone/1.0.20/src/dyn_clone/lib.rs.html#196-198)

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html "trait dyn_clone::DynClone") for T

where
    T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone"),

#### fn [\_\_clone\_box](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, \_: Private) -> [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [()](https://doc.rust-lang.org/1.97.1/std/primitive.unit.html)

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#786)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

#### fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

Returns the argument unchanged.

### impl Instrument for T

#### fn instrument(self, span: Span) -> Instrumented

Instruments this type with the provided [`Span`], returning an `Instrumented` wrapper. Read more

#### fn in\_current\_span(self) -> Instrumented

Instruments this type with the [current](super::Span::current()) [`Span`](crate::Span), returning an `Instrumented` wrapper. Read more

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#768-770)

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where
    U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From"),

#### fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

Calls `U::from(self)`.

That is, this conversion is whatever the implementation of `[From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for U` chooses to do.

[Source](https://docs.rs/either/1/src/either/into_either.rs.html#64)

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

#### fn [into\_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into\_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left "variant either::Either::Left") variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") if `into_left` is `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right "variant either::Either::Right") variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)

#### fn [into\_either\_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into\_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

where
    F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html "trait core::ops::function::FnOnce")(&Self) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html),

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left "variant either::Either::Left") variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") if `into_left(&self)` returns `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right "variant either::Either::Right") variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)

### impl PolicyExt for T

where
    T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

#### fn and(self, other: P) -> And

where
    T: Policy,
    P: Policy,

Create a new `Policy` that returns [`Action::Follow`] only if `self` and `other` return `Action::Follow`. Read more

#### fn or(self, other: P) -> Or

where
    T: Policy,
    P: Policy,

Create a new `Policy` that returns [`Action::Follow`] if either `self` or `other` returns `Action::Follow`. Read more

[Source](https://doc.rust-lang.org/1.97.1/src/alloc/borrow.rs.html#72-74)

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html "trait alloc::borrow::ToOwned") for T

where
    T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone"),

#### type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T

The resulting type after obtaining ownership.

#### fn [to\_owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T

Creates owned data from borrowed data, usually by cloning. [Read more](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)

#### fn [clone\_into](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html))

Uses borrowed data to replace owned data, usually by cloning. [Read more](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#828-830)

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where
    U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into"),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")

The type returned in the event of a conversion error.

#### fn [try\_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<T, [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")>

Performs the conversion.

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#812-814)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where
    U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom"),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = <U as [TryFrom]<T>>::[Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")

The type returned in the event of a conversion error.

#### fn [try\_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<U, [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error "type core::convert::TryInto::Error")>

Performs the conversion.

### impl WithSubscriber for T

#### fn with\_subscriber(self, subscriber: S) -> WithDispatch

where
    S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into"),

Attaches the provided [`Subscriber`](super::Subscriber) to this type, returning a [`WithDispatch`] wrapper. Read more

#### fn with\_current\_subscriber(self) -> WithDispatch

Attaches the current [default](dispatcher#setting-the-default-subscriber) [`Subscriber`](super::Subscriber) to this type, returning a [`WithDispatch`] wrapper. Read more

[Source](https://docs.rs/objc2/0.6.4/src/objc2/rc/autorelease.rs.html#309)

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

where
    T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"),

### impl MaybeSend for T

### impl MaybeSync for T
