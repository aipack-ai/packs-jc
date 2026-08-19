# Enum AbsolutePathPolicy

Controls whether callers may supply absolute paths.

```rust
pub enum AbsolutePathPolicy {
    Allow,
    Deny,
}
```

## Variants

- Allow
- Deny

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

- fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- fn [clone_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'\_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")

### impl [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html "trait core::cmp::PartialEq") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

- fn [eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html#tymethod.eq)(&self, other: &[AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)
- fn [ne](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html#method.ne)(&self, other: &[Rhs](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

### impl [Copy](https://doc.rust-lang.org/1.97.1/core/marker/trait.Copy.html "trait core::marker::Copy") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

### impl [Eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.Eq.html "trait core::cmp::Eq") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

### impl [StructuralPartialEq](https://doc.rust-lang.org/1.97.1/core/marker/trait.StructuralPartialEq.html "trait core::marker::StructuralPartialEq") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [AbsolutePathPolicy](enum.AbsolutePathPolicy.html "enum aiprog::modules::AbsolutePathPolicy")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

- fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

- fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

- fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html "trait core::clone::CloneToUninit") for T

- unsafe fn [clone_to_uninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [u8](https://doc.rust-lang.org/1.97.1/std/primitive.u8.html))

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html "trait dyn_clone::DynClone") for T

- fn [\_\_clone_box](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, \_: Private) -> [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [()](https://doc.rust-lang.org/1.97.1/std/primitive.unit.html)

### impl Equivalent for Q

- fn equivalent(&self, key: [&K](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

### impl Equivalent for Q

- fn equivalent(&self, key: [&K](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

### impl Instrument for T

- fn instrument(self, span: Span) -> Instrumented
- fn in_current_span(self) -> Instrumented

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

- fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

- fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")
- fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")

### impl PolicyExt for T

- fn and(self, other: P) -> And
- fn or(self, other: P) -> Or

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html "trait alloc::borrow::ToOwned") for T

- type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T
- fn [to_owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T
- fn [clone_into](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html))

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")
- fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = TryFrom\>:: [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error "type core::convert::TryFrom::Error")
- fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")

### impl WithSubscriber for T

- fn with_subscriber(self, subscriber: S) -> WithDispatch
- fn with_current_subscriber(self) -> WithDispatch

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T

### impl MaybeSend for T

### impl MaybeSync for T
