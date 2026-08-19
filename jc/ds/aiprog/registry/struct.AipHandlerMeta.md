# AipHandlerMeta in aiprog::registry

## Overview

Metadata extracted from handler doc comments.

Carries the optional title (first ATX heading) and description (remaining doc lines). The `#[aip_handler]` proc-macro populates this via a generated `__aiprog_meta_()` helper.

## Struct Definition

```js
pub struct AipHandlerMeta {
    pub description: Option<String>,
    pub title: Option<String>,
}
```

## Fields

- [description](#structfield.description) `description: Option<String>`
- [title](#structfield.title) `title: Option<String>`

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [AipHandlerMeta](struct.AipHandlerMeta.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T
where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html)

- [fn type_id(&self) -> TypeId](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T
where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html)

- [fn borrow(&self) -> &T](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T
where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html)

- [fn borrow_mut(&mut self) -> &mut T](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

- [fn from(t: T) -> T](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)

### impl Instrument for T

- fn instrument(self, span: Span) -> Instrumented
- fn in_current_span(self) -> Instrumented

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T
where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html)

- [fn into(self) -> U](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

- [fn into_either(self, into_left: bool) -> Either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)
- [fn into_either_with(self, into_left: F) -> Either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with) where F: FnOnce(&Self) -> bool

### impl PolicyExt for T
where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html)

- fn and(self, other: P) -> And where T: Policy, P: Policy
- fn or(self, other: P) -> Or where T: Policy, P: Policy

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T
where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html)

- [type Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html)
- [fn try_from(value: U) -> Result](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T
where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html)

- [type Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error)
- [fn try_into(self) -> Result](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)

### impl WithSubscriber for T

- fn with_subscriber(self, subscriber: S) -> WithDispatch where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html)
- fn with_current_subscriber(self) -> WithDispatch

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T
where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html)

### impl MaybeSend for T

### impl MaybeSync for T
