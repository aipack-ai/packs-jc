# Struct SchemaRef

Copy item path

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#7-10)

```rust
pub struct SchemaRef<'s> { /* private fields */ }
```

## Implementations

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#12-71)

### impl<'s> [SchemaRef](struct.SchemaRef.html)<'s>

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#13-17)

- `pub fn new(schema: &'s Schema) -> Self`

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#20-22)

- `pub fn desc(&self) -> Option<&'s str>`

Returns the root-level `description` field, if present.

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#25-27)

- `pub fn typ(&self) -> Option<&'s str>`

Returns the `type` field of the schema, if present.

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#31-60)

- `pub fn properties(&self) -> Vec<SchemaPropRef<'s>>`

Returns the properties of the object schema as `SchemaPropRef` wrappers, each annotated with its required status based on the `required` array.

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#63-65)

- `pub fn raw_value(&self) -> &'s Value`

Returns the underlying JSON value of the schema.

[Source](../../src/aiprog/schema_ref/schema_ref_impl.rs.html#68-70)

- `pub fn ref_keys(&self) -> &[&str]`

Returns the `$defs` keys referenced by this schema, deduplicated.

## Auto Trait Implementations

- `impl<'s> Freeze for SchemaRef<'s>`
- `impl<'s> RefUnwindSafe for SchemaRef<'s>`
- `impl<'s> Send for SchemaRef<'s>`
- `impl<'s> Sync for SchemaRef<'s>`
- `impl<'s> Unpin for SchemaRef<'s>`
- `impl<'s> UnsafeUnpin for SchemaRef<'s>`
- `impl<'s> UnwindSafe for SchemaRef<'s>`

## Blanket Implementations

[Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#141)

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T

where T: 'static + ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

[Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#142)

- `fn type_id(&self) -> TypeId`

Gets the `TypeId` of `self`. [Read more](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

[Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#212)

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

[Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#214)

- `fn borrow(&self) -> &T`

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

[Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#221)

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

[Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#222)

- `fn borrow_mut(&mut self) -> &mut T`

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#786)

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#789)

- `fn from(t: T) -> T`

Returns the argument unchanged.

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
  Instruments this type with the provided [`Span`], returning an `Instrumented` wrapper. Read more
- `fn in_current_span(self) -> Instrumented`
  Instruments this type with the current [`Span`], returning an `Instrumented` wrapper. Read more

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#768-770)

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html),

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#778)

- `fn into(self) -> U`

Calls `U::from(self)`. That is, this conversion is whatever the implementation of [`From` for U](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) chooses to do.

[Source](https://docs.rs/either/1/src/either/into_either.rs.html#64)

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

[Source](https://docs.rs/either/1/src/either/into_either.rs.html#29)

- `fn into_either(self, into_left: bool) -> Either`

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) if `into_left` is `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)

[Source](https://docs.rs/either/1/src/either/into_either.rs.html#55-57)

- `fn into_either_with(self, into_left: F) -> Either` where F: [FnOnce](https://doc.rust-lang.org/1.97.1/core/ops/function/trait.FnOnce.html)(&Self) -> bool

Converts `self` into a [`Left`](https://docs.rs/either/1/either/enum.Either.html#variant.Left) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) if `into_left(&self)` returns `true`. Converts `self` into a [`Right`](https://docs.rs/either/1/either/enum.Either.html#variant.Right) variant of [`Either`](https://docs.rs/either/1/either/enum.Either.html) otherwise. [Read more](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)

### impl PolicyExt for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

- `fn and(self, other: P) -> And` where T: Policy, P: Policy
  Create a new `Policy` that returns [`Action::Follow`] only if `self` and `other` return `Action::Follow`. Read more
- `fn or(self, other: P) -> Or` where T: Policy, P: Policy
  Create a new `Policy` that returns [`Action::Follow`] if either `self` or `other` returns `Action::Follow`. Read more

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#828-830)

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html),

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#832)

- `type Error = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html)`

The type returned in the event of a conversion error.

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#835)

- `fn try_from(value: U) -> Result<T, <U as TryFrom<T>>::Error>`

Performs the conversion.

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#812-814)

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html),

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#816)

- `type Error = <U as TryFrom<T>>::Error`

The type returned in the event of a conversion error.

[Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#819)

- `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

Performs the conversion.

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html)
  Attaches the provided [`Subscriber`] to this type, returning a `WithDispatch` wrapper. Read more
- `fn with_current_subscriber(self) -> WithDispatch`
  Attaches the current default [`Subscriber`] to this type, returning a `WithDispatch` wrapper. Read more

[Source](https://docs.rs/objc2/0.6.4/src/objc2/rc/autorelease.rs.html#309)

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T

where T: ?[Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

### impl MaybeSend for T

### impl MaybeSync for T
