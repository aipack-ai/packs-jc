# Struct JsonModule

[Source](../../src/aiprog/modules/mod.rs.html#17)

```rust
pub struct JsonModule;
```

## Trait Implementations

### impl AipModule for JsonModule

- [Source](../../src/aiprog/modules/mod.rs.html#28-32)
- [`fn register(&self, builder: AipRegistryBuilder) -> Result<AipRegistryBuilder>`](../registry/trait.AipModule.html#tymethod.register)

### impl Clone for JsonModule

- [Source](../../src/aiprog/modules/mod.rs.html#16)
- [`fn clone(&self) -> JsonModule`](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)
- [`fn clone_from(&mut self, source: &Self)`](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

### impl Debug for JsonModule

- [Source](../../src/aiprog/modules/mod.rs.html#16)
- [`fn fmt(&self, f: &mut Formatter<'_>) -> Result`](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

### impl Default for JsonModule

- [Source](../../src/aiprog/modules/mod.rs.html#16)
- [`fn default() -> JsonModule`](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

### impl Copy for JsonModule

- [Source](../../src/aiprog/modules/mod.rs.html#16)

## Auto Trait Implementations

- [`impl Freeze for JsonModule`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html)
- [`impl RefUnwindSafe for JsonModule`](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- [`impl Send for JsonModule`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html)
- [`impl Sync for JsonModule`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html)
- [`impl Unpin for JsonModule`](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html)
- [`impl UnsafeUnpin for JsonModule`](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html)
- [`impl UnwindSafe for JsonModule`](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html)

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized,

- [`fn type_id(&self) -> TypeId`](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)

### impl Borrow for T

where T: ?Sized,

- [`fn borrow(&self) -> &T`](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)

### impl BorrowMut for T

where T: ?Sized,

- [`fn borrow_mut(&mut self) -> &mut T`](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl CloneToUninit for T

where T: Clone,

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl DynClone for T

where T: Clone,

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

where U: From,

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool,

### impl PolicyExt for T

where T: ?Sized,

- `fn and(self, other: P) -> And` where T: Policy, P: Policy,
- `fn or(self, other: P) -> Or` where T: Policy, P: Policy,

### impl ToOwned for T

where T: Clone,

- type Owned = T
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl TryFrom for T

where U: Into,

- type Error = Infallible
- `fn try_from(value: U) -> Result`

### impl TryInto for T

where U: TryFrom,

- type Error = TryFrom::Error
- `fn try_into(self) -> Result`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: Into,
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T

where T: ?Sized,

### impl MaybeSend for T

### impl MaybeSync for T
