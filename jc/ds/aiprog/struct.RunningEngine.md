# Struct RunningEngine

```rust
pub struct RunningEngine { /* private fields */ }
```

## Methods

- [exec](#method.exec)

## Auto Trait Implementations

- [!RefUnwindSafe](#impl-RefUnwindSafe-for-RunningEngine)
- [!Send](#impl-Send-for-RunningEngine)
- [!Sync](#impl-Sync-for-RunningEngine)
- [!UnwindSafe](#impl-UnwindSafe-for-RunningEngine)
- [Freeze](#impl-Freeze-for-RunningEngine)
- [Unpin](#impl-Unpin-for-RunningEngine)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-RunningEngine)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow](#impl-Borrow-for-T)
- [BorrowMut](#impl-BorrowMut-for-T)
- [From](#impl-From-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into](#impl-Into-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [TryFrom](#impl-TryFrom-for-T)
- [TryInto](#impl-TryInto-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

## Implementations

### impl [RunningEngine](struct.RunningEngine.html)

#### pub async fn [exec](#method.exec)(&mut self, script: &[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html), context: [RunningContext](struct.RunningContext.html)) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)<[RunOutcome](struct.RunOutcome.html)<[Value](https://docs.rs/serde_json/1.0.151/serde_json/value/enum.Value.html)>, [EngineError](enum.EngineError.html)>

## Auto Trait Implementations

### impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [RunningEngine](struct.RunningEngine.html)

### impl ![RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [RunningEngine](struct.RunningEngine.html)

### impl ![Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [RunningEngine](struct.RunningEngine.html)

### impl ![Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [RunningEngine](struct.RunningEngine.html)

### impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [RunningEngine](struct.RunningEngine.html)

### impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [RunningEngine](struct.RunningEngine.html)

### impl ![UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [RunningEngine](struct.RunningEngine.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T
where
    T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T
where
    T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> &[T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T
where
    T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> &mut [T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

#### fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

### impl Instrument for T

#### fn instrument(self, span: Span) -> Instrumented

#### fn in_current_span(self) -> Instrumented

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T
where
    U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html),

#### fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

#### fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html)

#### fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html)
where
    F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html)(&Self) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html),

### impl PolicyExt for T
where
    T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

#### fn and(self, other: P) -> And
where
    T: Policy,
    P: Policy,

#### fn or(self, other: P) -> Or
where
    T: Policy,
    P: Policy,

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T
where
    U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html)

#### fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)<T, <T as TryFrom<U>>::Error>

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T
where
    U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html),

#### type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = <U as TryFrom<T>>::Error

#### fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)<U, <U as TryFrom<T>>::Error>

### impl WithSubscriber for T

#### fn with_subscriber(self, subscriber: S) -> WithDispatch
where
    S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html),

#### fn with_current_subscriber(self) -> WithDispatch

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T
where
    T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

### impl MaybeSend for T

### impl MaybeSync for T
