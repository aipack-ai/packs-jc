# Body in aiprog::webc

Parsed response body.

## Enum Definition

```rust
pub enum Body {
    Text(String),
    Json(Value),
    Binary(Vec<u8>),
}
```

## Variants

- [Binary](#variant.Binary)
- [Json](#variant.Json)
- [Text](#variant.Text)

### Text

- [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html)

### Json

- [Value](https://docs.rs/serde_json/1.0.151/serde_json/value/enum.Value.html)

### Binary

- [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[u8](https://doc.rust-lang.org/1.97.1/std/primitive.u8.html)>

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html) for [Body](enum.Body.html)

- fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [Body](enum.Body.html)
- fn [clone_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html) for [Body](enum.Body.html)

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html)<'\_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html)

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [Body](enum.Body.html)
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [Body](enum.Body.html)
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [Body](enum.Body.html)
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [Body](enum.Body.html)
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [Body](enum.Body.html)
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [Body](enum.Body.html)
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [Body](enum.Body.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T

- fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T

- fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T

- fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html) for T

- unsafe fn [clone_to_uninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html)[u8](https://doc.rust-lang.org/1.97.1/std/primitive.u8.html))

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html) for T

- fn [\_\_clone_box](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, _: Private) -> [\*mut](https://doc.rust-lang.org/1.97.1/std/primitive.pointer.html)[()](https://doc.rust-lang.org/1.97.1/std/primitive.unit.html)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

- fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

### impl Instrument for T

- fn instrument(self, span: Span) -> Instrumented
- fn in_current_span(self) -> Instrumented

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T

- fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

- fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html)
- fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html)

### impl PolicyExt for T

- fn and(self, other: P) -> And
- fn or(self, other: P) -> Or

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html) for T

- type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T
- fn [to_owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T
- fn [clone_into](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html))

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html)
- fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = TryFrom::Error
- fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)

### impl WithSubscriber for T

- fn with_subscriber(self, subscriber: S) -> WithDispatch
- fn with_current_subscriber(self) -> WithDispatch

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T

### impl MaybeSend for T

### impl MaybeSync for T
