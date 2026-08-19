# Struct TagFence

A delimiter configuration used to parse tagged elements.

```rust
pub struct TagFence {
    pub name: &'static str,
    pub open_delim: &'static str,
    pub close_delim: &'static str,
    pub close_delim_alts: Option<&'static [&'static str]>,
    pub closing_tag_prefix: &'static str,
    pub self_closing_suffix: &'static str,
}
```

## Fields

- [`name`](#structfield.name): A descriptive name for the fence configuration.
- [`open_delim`](#structfield.open_delim): The delimiter that starts an opening or closing tag.
- [`close_delim`](#structfield.close_delim): The delimiter that ends an opening or closing tag.
- [`close_delim_alts`](#structfield.close_delim_alts): Optional fallback delimiters accepted in addition to `close_delim`.
- [`closing_tag_prefix`](#structfield.closing_tag_prefix): The prefix between the opening delimiter and a closing tag name.
- [`self_closing_suffix`](#structfield.self_closing_suffix): The suffix between tag attributes and the closing delimiter of a self-closing tag.

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

- `fn clone(&self) -> TagFence`
- `fn clone_from(&mut self, source: &Self)`

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html "trait core::cmp::PartialEq") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

- `fn eq(&self, other: &TagFence) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl [Copy](https://doc.rust-lang.org/1.97.1/core/marker/trait.Copy.html "trait core::marker::Copy") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

### impl [Eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.Eq.html "trait core::cmp::Eq") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

### impl [StructuralPartialEq](https://doc.rust-lang.org/1.97.1/core/marker/trait.StructuralPartialEq.html "trait core::marker::StructuralPartialEq") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [TagFence](struct.TagFence.html "struct markex::tag::TagFence")

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId`

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T where T: ?Sized

- `fn borrow(&self) -> &T`

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T`

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html "trait core::clone::CloneToUninit") for T where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- `fn from(t: T) -> T`

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T where U: From

- `fn into(self) -> U`

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html "trait alloc::borrow::ToOwned") for T where T: Clone

- type `Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T where U: Into

- type `Error = Infallible`
- `fn try_from(value: U) -> Result`

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T where U: TryFrom

- type `Error = TryFrom::Error`
- `fn try_into(self) -> Result`
