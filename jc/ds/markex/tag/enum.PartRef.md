# Enum PartRef

Represents a part of parsed content as a reference, either plain text or a tag element reference.

## Type Definition

[Source](../../src/markex/tag/tag_ref_iter.rs.html#9-15)

```js
pub enum PartRef<'a> {
    Text(&'a [str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)),
    TagElemRef([TagElemRef](struct.TagElemRef.html "struct markex::tag::TagElemRef")<'a>),
}
```

## Variants

- [TagElemRef](#variant.TagElemRef)
- [Text](#variant.Text)

### Text(&'a [str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html))

Plain text content outside of any tag.

### TagElemRef([TagElemRef](struct.TagElemRef.html "struct markex::tag::TagElemRef")<'a>)

A tag element reference with its content.

## Trait Implementations

- [Debug](#impl-Debug-for-PartRef%3C'a%3E)
- [From](#impl-From%3CPartRef%3C'a%3E%3E-for-Part)
- [PartialEq](#impl-PartialEq-for-PartRef%3C'a%3E)
- [StructuralPartialEq](#impl-StructuralPartialEq-for-PartRef%3C'a%3E)

### impl<'a> [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>

[Source](../../src/markex/tag/tag_ref_iter.rs.html#8)

- `fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'\_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")`

Formats the value using the given formatter.

### impl<'a> [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")<[PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>> for [Part](enum.Part.html "enum markex::tag::Part")

[Source](../../src/markex/tag/parts.rs.html#15-22)

- `fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(part\_ref: [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>) -> Self`

Converts to this type from the input type.

### impl<'a> [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html "trait core::cmp::PartialEq") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>

[Source](../../src/markex/tag/tag_ref_iter.rs.html#8)

- `fn [eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html#tymethod.eq)(&self, other: &[PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)`

Tests for `self` and `other` values to be equal, and is used by `==`.

- `fn [ne](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html#method.ne)(&self, other: [&Rhs](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)`

Tests for `!=`.

### impl<'a> [StructuralPartialEq](https://doc.rust-lang.org/1.97.1/core/marker/trait.StructuralPartialEq.html "trait core::marker::StructuralPartialEq") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-PartRef%3C'a%3E)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-PartRef%3C'a%3E)
- [Send](#impl-Send-for-PartRef%3C'a%3E)
- [Sync](#impl-Sync-for-PartRef%3C'a%3E)
- [Unpin](#impl-Unpin-for-PartRef%3C'a%3E)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-PartRef%3C'a%3E)
- [UnwindSafe](#impl-UnwindSafe-for-PartRef%3C'a%3E)

### impl<'a> [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>
### impl<'a> [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>
### impl<'a> [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>
### impl<'a> [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>
### impl<'a> [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>
### impl<'a> [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>
### impl<'a> [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [PartRef](enum.PartRef.html "enum markex::tag::PartRef")<'a>

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [Borrow](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T)
- [From](#impl-From%3CT%3E-for-T)
- [Into](#impl-Into%3CU%3E-for-T)
- [TryFrom](#impl-TryFrom%3CU%3E-for-T)
- [TryInto](#impl-TryInto%3CU%3E-for-T)

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T

where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn [type\_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")`

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)`

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- `fn [borrow\_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)`

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- `fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T`

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")

- `fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U`

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

- `type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")`
- `fn [try\_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")`

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")

- `type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error)`
- `fn [try\_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")`
