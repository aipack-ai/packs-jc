# Struct KindNone

[Source](../../src/aiprog/registry/handler_error.rs.html#15)

```rust
pub struct KindNone;
```

Marker type for HandlerError kind that serializes to nothing.

When used as the kind in `HandlerError`, the `kind` field is omitted from serialization, producing `{"message": "..."}`.

## Trait Implementations

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone") for [KindNone](struct.KindNone.html "struct aiprog::registry::KindNone")

- [`fn clone(&self) -> KindNone`](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)
- [`fn clone_from(&mut self, source: &Self)`](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html "trait core::fmt::Debug") for [KindNone](struct.KindNone.html "struct aiprog::registry::KindNone")

- [`fn fmt(&self, f: &mut Formatter<'_>) -> Result`](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

### impl [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html "trait core::default::Default") for [KindNone](struct.KindNone.html "struct aiprog::registry::KindNone")

- [`fn default() -> KindNone`](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

### impl [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") for [KindNone](struct.KindNone.html "struct aiprog::registry::KindNone")

- [`fn fmt(&self, _f: &mut Formatter<'_>) -> Result`](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html#tymethod.fmt)

### impl JsonSchema for [KindNone](struct.KindNone.html "struct aiprog::registry::KindNone")

- [`fn schema_name() -> Cow<'static, str>`](#method.schema_name)
- [`fn schema_id() -> Cow<'static, str>`](#method.schema_id)
- [`fn json_schema(generator: &mut SchemaGenerator) -> Schema`](#method.json_schema)
- [`fn inline_schema() -> bool`](#method.inline_schema)

### impl [Serialize](https://docs.rs/serde_core/1.0.229/serde_core/ser/trait.Serialize.html "trait serde_core::ser::Serialize") for [KindNone](struct.KindNone.html "struct aiprog::registry::KindNone")

- [`fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error> where __S: Serializer`](https://docs.rs/serde_core/1.0.229/serde_core/ser/trait.Serialize.html#tymethod.serialize)

## Auto Trait Implementations

- [`impl Freeze for KindNone`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html)
- [`impl RefUnwindSafe for KindNone`](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- [`impl Send for KindNone`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html)
- [`impl Sync for KindNone`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html)
- [`impl Unpin for KindNone`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html)
- [`impl UnsafeUnpin for KindNone`](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html)
- [`impl UnwindSafe for KindNone`](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") for T where T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [`fn type_id(&self) -> TypeId`](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html "trait core::borrow::Borrow") for T where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [`fn borrow(&self) -> &T`](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html "trait core::borrow::BorrowMut") for T where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [`fn borrow_mut(&mut self) -> &mut T`](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl [CloneToUninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html "trait core::clone::CloneToUninit") for T where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

- [`unsafe fn clone_to_uninit(&self, dest: *mut u8)`](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)

### impl [DynClone](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html "trait dyn_clone::DynClone") for T where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

- [`fn __clone_box(&self, _: Private) -> *mut ()`](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From") for T

- [`fn from(t: T) -> T`](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)

### impl Instrument for T

- [`fn instrument(self, span: Span) -> Instrumented`](#method.instrument)
- [`fn in_current_span(self) -> Instrumented`](#method.in_current_span)

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into") for T where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html "trait core::convert::From")

- [`fn into(self) -> U`](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html "trait either::into_either::IntoEither") for T

- [`fn into_either(self, into_left: bool) -> Either`](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)
- [`fn into_either_with<F>(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)

### impl PolicyExt for T where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [`fn and<P>(self, other: P) -> And where T: Policy, P: Policy`](#method.and)
- [`fn or<P>(self, other: P) -> Or where T: Policy, P: Policy`](#method.or)

### impl [Serialize](https://docs.rs/erased-serde/0.4.10/erased_serde/ser/trait.Serialize.html "trait erased_serde::ser::Serialize") for T where T: [Serialize](https://docs.rs/serde_core/1.0.229/serde_core/ser/trait.Serialize.html "trait serde_core::ser::Serialize") + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [`fn erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), Error>`](https://docs.rs/erased-serde/0.4.10/erased_serde/ser/trait.Serialize.html#tymethod.erased_serialize)
- [`fn do_erased_serialize(&self, serializer: &mut dyn Serializer) -> Result<(), ErrorImpl>`](https://docs.rs/erased-serde/0.4.10/erased_serde/ser/trait.Serialize.html#tymethod.do_erased_serialize)

### impl [ToOwned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html "trait alloc::borrow::ToOwned") for T where T: [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html "trait core::clone::Clone")

- `type Owned = T`
- [`fn to_owned(&self) -> T`](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)
- [`fn clone_into(&self, target: &mut T)`](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)

### impl [ToString](https://doc.rust-lang.org/1.97.1/alloc/string/trait.ToString.html "trait alloc::string::ToString") for T where T: [Display](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Display.html "trait core::fmt::Display") + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

- [`fn to_string(&self) -> String`](https://doc.rust-lang.org/1.97.1/alloc/string/trait.ToString.html#tymethod.to_string)

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom") for T where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html "trait core::convert::Into")

- `type Error = Infallible`
- [`fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>`](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html "trait core::convert::TryInto") for T where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html "trait core::convert::TryFrom")

- `type Error = <U as TryFrom<T>>::Error`
- [`fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)

### impl WithSubscriber for T

- [`fn with_subscriber<S>(self, subscriber: S) -> WithDispatch where S: Into`](#method.with_subscriber)
- [`fn with_current_subscriber(self) -> WithDispatch`](#method.with_current_subscriber)

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html "trait objc2::rc::autorelease::AutoreleaseSafe") for T where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html "trait core::marker::Sized")

### impl MaybeSend for T

### impl MaybeSync for T
