# Enum DirPolicyError

[Source](../../src/aiprog/modules/aip_file/file_types.rs.html#212-219)

```rust
pub enum DirPolicyError {
    NoAllowedRoots,
    InvalidRoot(String, String),
    InvalidPath(String),
    InvalidBaseDir(String),
    AbsolutePathDenied(String),
    OutsideAllowedRoots(String),
}
```

## Variants

- [AbsolutePathDenied](#variant.AbsolutePathDenied)
- [InvalidBaseDir](#variant.InvalidBaseDir)
- [InvalidPath](#variant.InvalidPath)
- [InvalidRoot](#variant.InvalidRoot)
- [NoAllowedRoots](#variant.NoAllowedRoots)
- [OutsideAllowedRoots](#variant.OutsideAllowedRoots)

### NoAllowedRoots

### InvalidRoot([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"), [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### InvalidPath([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### InvalidBaseDir([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### AbsolutePathDenied([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

### OutsideAllowedRoots([String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html "struct alloc::string::String"))

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

- fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- fn [clone_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")

### impl [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html#tymethod.fmt)(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")

### impl [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

- fn [source](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.source)(&self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<&(dyn [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error") + 'static)>
- fn [description](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.description)(&self) -> &[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)
- fn [cause](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.cause)(&self) -> [Option](https://doc.rust-lang.org/1.97.1/core/option/enum.Option.html "enum core::option::Option")<&dyn [Error](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html "trait core::error::Error")>
- fn [provide](https://doc.rust-lang.org/1.97.1/core/error/trait.Error.html#method.provide)<'a>(&'a self, request: &mut [Request](https://doc.rust-lang.org/1.97.1/core/error/struct.Request.html "struct core::error::Request")<'a>)

### impl [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html "trait core::cmp::PartialEq") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

- fn [eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html#tymethod.eq)(&self, other: &[DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)
- fn [ne](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html#method.ne)(&self, other: &[Rhs](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)

### impl [Eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.Eq.html "trait core::cmp::Eq") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

### impl [StructuralPartialEq](https://doc.rust-lang.org/1.97.1/core/marker/trait.StructuralPartialEq.html "trait core::marker::StructuralPartialEq") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- impl [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")
- impl [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [DirPolicyError](enum.DirPolicyError.html "enum aiprog::modules::DirPolicyError")

## Blanket Implementations

- impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html "trait core::clone::CloneToUninit") for T where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")
- impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html "trait dyn_clone::DynClone") for T where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")
- impl Equivalent for Q where Q: [Eq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.Eq.html "trait core::cmp::Eq") + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized"), K: [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl ExternalError for E where E: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")<[Box](https://doc.rust-lang.org/1.97.1/alloc/boxed/struct.Box.html "struct alloc::boxed::Box")Error>
- impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T
- impl Instrument for T
- impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")
- impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T
- impl PolicyExt for T where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html "trait alloc::borrow::ToOwned") for T where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")
- impl [ToString](https://doc.rust-lang.org/1.97.1/alloc/string/trait.ToString.html "trait alloc::string::ToString") for T where T: [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")
- impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")
- impl WithSubscriber for T
- impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")
- impl MaybeSend for T
- impl MaybeSync for T
