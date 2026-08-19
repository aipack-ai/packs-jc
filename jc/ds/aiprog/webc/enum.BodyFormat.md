# BodyFormat in aiprog::webc - Rust

## Variants

- [Binary](#variant.Binary)
- [Json](#variant.Json)
- [Text](#variant.Text)

## Trait Implementations

- [Clone](#impl-Clone-for-BodyFormat)
- [Debug](#impl-Debug-for-BodyFormat)
- [Default](#impl-Default-for-BodyFormat)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-BodyFormat)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-BodyFormat)
- [Send](#impl-Send-for-BodyFormat)
- [Sync](#impl-Sync-for-BodyFormat)
- [Unpin](#impl-Unpin-for-BodyFormat)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-BodyFormat)
- [UnwindSafe](#impl-UnwindSafe-for-BodyFormat)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow&lt;T&gt;](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut&lt;T&gt;](#impl-BorrowMut%3CT%3E-for-T)
- [CloneToUninit](#impl-CloneToUninit-for-T)
- [DynClone](#impl-DynClone-for-T)
- [From&lt;T&gt;](#impl-From%3CT%3E-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into&lt;U&gt;](#impl-Into%3CU%3E-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [ToOwned](#impl-ToOwned-for-T)
- [TryFrom&lt;U&gt;](#impl-TryFrom%3CU%3E-for-T)
- [TryInto&lt;U&gt;](#impl-TryInto%3CU%3E-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

# Enum BodyFormat

```rust
pub enum BodyFormat {
    Text,
    Json,
    Binary,
}
```

Desired response body format.

## Variants

### Text

### Json

### Binary

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html) for [BodyFormat](enum.BodyFormat.html)

#### fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [BodyFormat](enum.BodyFormat.html)

Returns a duplicate of the value.

#### fn [clone\_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

Performs copy-assignment from `source`.

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html) for [BodyFormat](enum.BodyFormat.html)

#### fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html)<'\_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html)

Formats the value using the given formatter.

### impl [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html) for [BodyFormat](enum.BodyFormat.html)

#### fn [default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)() -> [BodyFormat](enum.BodyFormat.html)

Returns the “default value” for a type.

## Auto Trait Implementations

### impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [BodyFormat](enum.BodyFormat.html)

### impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [BodyFormat](enum.BodyFormat.html)

### impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [BodyFormat](enum.BodyFormat.html)

### impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [BodyFormat](enum.BodyFormat.html)

### impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [BodyFormat](enum.BodyFormat.html)

### impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [BodyFormat](enum.BodyFormat.html)

### impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [BodyFormat](enum.BodyFormat.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T

where T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn [type\_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html)

Gets the `TypeId` of `self`.

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Immutably borrows from an owned value.

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn [borrow\_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

Mutably borrows from an owned value.

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html) for T

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html),

#### unsafe fn [clone\_to\_uninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [u8](https://doc.rust-lang.org/1.97.1/std/primitive.u8.html))

Performs copy-assignment from `self` to `dest`.

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html) for T

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html),

#### fn [\_\_clone\_box](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, \_: Private) -> [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html) [()](https://doc.rust-lang.org/1.97.1/std/primitive.unit.html)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

#### fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

Returns the argument unchanged.

### impl Instrument for T

#### fn instrument(self, span: Span) -> Instrumented

Instruments this type with the provided `Span`, returning an `Instrumented` wrapper.

#### fn in\_current\_span(self) -> Instrumented

Instruments this type with the current `Span`, returning an `Instrumented` wrapper.

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html),

#### fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

Calls `U::from(self)`.

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

#### fn [into\_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into\_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html)

Converts `self` into a `Left` or `Right` variant of `Either`.

#### fn [into\_either\_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into\_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html)

where F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html)(&Self) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html),

Converts `self` into an `Either` variant conditionally based on a function.

### impl PolicyExt for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn and(self, other: P) -> And

where T: Policy, P: Policy,

Create a new `Policy` that returns `Action::Follow` only if both return it.

#### fn or(self, other: P) -> Or

where T: Policy, P: Policy,

Create a new `Policy` that returns `Action::Follow` if either returns it.

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html) for T

where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html),

#### type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T

The resulting type after obtaining ownership.

#### fn [to\_owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T

Creates owned data from borrowed data, usually by cloning.

#### fn [clone\_into](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html))

Uses borrowed data to replace owned data.

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html)

The type returned in the event of a conversion error.

#### fn [try\_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)<T, <T as TryFrom<U>>::Error>

Performs the conversion.

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = <U as TryFrom<T>>::Error

The type returned in the event of a conversion error.

#### fn [try\_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)<T, <U as TryFrom<T>>::Error>

Performs the conversion.

### impl WithSubscriber for T

#### fn with\_subscriber(self, subscriber: S) -> WithDispatch

where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html),

Attaches the provided subscriber to this type.

#### fn with\_current\_subscriber(self) -> WithDispatch

Attaches the current default subscriber to this type.

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

### impl MaybeSend for T

### impl MaybeSync for T
