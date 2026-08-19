# Struct HtmlModule

[Source](../../src/aiprog/modules/mod.rs.html#26)

```rust
pub struct HtmlModule;
```

## Trait Implementations

### impl [AipModule](../registry/trait.AipModule.html "trait aiprog::registry::AipModule") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

- [Source](../../src/aiprog/modules/mod.rs.html#53-57)

#### fn [register](../registry/trait.AipModule.html#tymethod.register)(&self, builder: [AipRegistryBuilder](../registry/struct.AipRegistryBuilder.html "struct aiprog::registry::AipRegistryBuilder")) -> [Result](../type.Result.html "type aiprog::Result")<[AipRegistryBuilder](../registry/struct.AipRegistryBuilder.html "struct aiprog::registry::AipRegistryBuilder")\>

- [Source](../../src/aiprog/modules/mod.rs.html#54-56)

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

- [Source](../../src/aiprog/modules/mod.rs.html#25)

#### fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)

- 1.0.0 (const: [unstable](https://github.com/rust-lang/rust/issues/142757 "Tracking issue for const_clone"))
- [Source](https://doc.rust-lang.org/1.97.1/src/core/clone.rs.html#245-247)

#### fn [clone_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

- [Source](../../src/aiprog/modules/mod.rs.html#25)

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

- [Source](../../src/aiprog/modules/mod.rs.html#25)

#### fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'\_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

- [Source](../../src/aiprog/modules/mod.rs.html#25)

### impl [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html "trait core::default::Default") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

- [Source](../../src/aiprog/modules/mod.rs.html#25)

#### fn [default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)() -> [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

- [Source](../../src/aiprog/modules/mod.rs.html#25)

### impl [Copy](https://doc.rust-lang.org/1.97.1/core/marker/trait.Copy.html "trait core::marker::Copy") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

## Auto Trait Implementations

### impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

### impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

### impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

### impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

### impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

### impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

### impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [HtmlModule](struct.HtmlModule.html "struct aiprog::modules::HtmlModule")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#141)

#### fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#142)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#212)

#### fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#214)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#221)

#### fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#222)

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html "trait core::clone::CloneToUninit") for T

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/clone.rs.html#547)

#### unsafe fn [clone_to_uninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [u8](https://doc.rust-lang.org/1.97.1/std/primitive.u8.html))

🔬This is a nightly-only experimental API. (`clone_to_uninit`)

Performs copy-assignment from `self` to `dest`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)

- [Source](https://doc.rust-lang.org/1.97.1/src/core/clone.rs.html#549)

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html "trait dyn_clone::DynClone") for T

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

- [Source](https://docs.rs/dyn-clone/1.0.20/src/dyn_clone/lib.rs.html#196-198)

#### fn [\_\_clone_box](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, \_: Private) -> [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [()](https://doc.rust-lang.org/1.97.1/std/primitive.unit.html)

- [Source](https://docs.rs/dyn-clone/1.0.20/src/dyn_clone/lib.rs.html#200)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#786)

#### fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

Returns the argument unchanged.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#789)

### impl Instrument for T

#### fn instrument(self, span: Span) -> Instrumented

Instruments this type with the provided `Span`, returning an `Instrumented` wrapper. Read more

#### fn in_current_span(self) -> Instrumented

Instruments this type with the current `Span`, returning an `Instrumented` wrapper. Read more

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#768-770)

#### fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

Calls `U::from(self)`.

That is, this conversion is whatever the implementation of [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for U chooses to do.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#778)

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

- [Source](https://docs.rs/either/1/src/either/into_either.rs.html#64)

#### fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

Converts `self` into a [Left](https://docs.rs/either/1/either/enum.Either.html#variant.Left "variant either::Either::Left") variant of [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") if `into_left` is `true`. Converts `self` into a [Right](https://docs.rs/either/1/either/enum.Either.html#variant.Right "variant either::Either::Right") variant of [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)

- [Source](https://docs.rs/either/1/src/either/into_either.rs.html#29)

#### fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

where F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html "trait core::ops::function::FnOnce")(&Self) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

Converts `self` into a [Left](https://docs.rs/either/1/either/enum.Either.html#variant.Left "variant either::Either::Left") variant of [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") if `into_left(&self)` returns `true`. Converts `self` into a [Right](https://docs.rs/either/1/either/enum.Either.html#variant.Right "variant either::Either::Right") variant of [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either") otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)

- [Source](https://docs.rs/either/1/src/either/into_either.rs.html#55-57)

### impl PolicyExt for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

#### fn and(self, other: P) -> And

where T: Policy, P: Policy

Create a new `Policy` that returns `Action::Follow` only if `self` and `other` return `Action::Follow`. Read more

#### fn or(self, other: P) -> Or

where T: Policy, P: Policy

Create a new `Policy` that returns `Action::Follow` if either `self` or `other` returns `Action::Follow`. Read more

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html "trait alloc::borrow::ToOwned") for T

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

- [Source](https://doc.rust-lang.org/1.97.1/src/alloc/borrow.rs.html#72-74)

#### type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T

The resulting type after obtaining ownership.

- [Source](https://doc.rust-lang.org/1.97.1/src/alloc/borrow.rs.html#76)

#### fn [to_owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T

Creates owned data from borrowed data, usually by cloning. [Read more](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)

- [Source](https://doc.rust-lang.org/1.97.1/src/alloc/borrow.rs.html#77)

#### fn [clone_into](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html))

Uses borrowed data to replace owned data, usually by cloning. [Read more](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)

- [Source](https://doc.rust-lang.org/1.97.1/src/alloc/borrow.rs.html#81)

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#828-830)

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")

The type returned in the event of a conversion error.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#832)

#### fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<T, [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")\>

Performs the conversion.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#835)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#812-814)

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = U::[Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")

The type returned in the event of a conversion error.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#816)

#### fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")<U, U::[Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")\>

Performs the conversion.

- [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#819)

### impl WithSubscriber for T

#### fn with_subscriber(self, subscriber: S) -> WithDispatch

where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

Attaches the provided `Subscriber` to this type, returning a `WithDispatch` wrapper. Read more

#### fn with_current_subscriber(self) -> WithDispatch

Attaches the current default `Subscriber` to this type, returning a `WithDispatch` wrapper. Read more

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [Source](https://docs.rs/objc2/0.6.4/src/objc2/rc/autorelease.rs.html#309)

### impl MaybeSend for T

### impl MaybeSync for T
