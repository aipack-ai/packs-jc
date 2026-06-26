# Params (Enum)

[Source](../src/turso/lib.rs.html#563-567)

```rust
pub enum Params {
    None,
    Positional(Vec<Value>),
    Named(Vec<(String, Value)>),
}
```

## Variants

- **None** – No parameters.
- **Positional** – A list of values in positional order: `Vec<Value>`.
- **Named** – A list of named parameters as `Vec<(String, Value)>`.

## Trait Implementations

### `impl Clone for Params`

[Source](../src/turso/lib.rs.html#562)

```rust
fn clone(&self) -> Params
```

```rust
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for Params`

[Source](../src/turso/lib.rs.html#562)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

## Auto Trait Implementations

- `impl Freeze for Params`
- `impl RefUnwindSafe for Params`
- `impl Send for Params`
- `impl Sync for Params`
- `impl Unpin for Params`
- `impl UnsafeUnpin for Params`
- `impl UnwindSafe for Params`

## Blanket Implementations

### `impl Any for T` where `T: 'static + ?Sized`

[Source](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

```rust
fn type_id(&self) -> TypeId
```

### `impl Borrow for T` where `T: ?Sized`

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

```rust
fn borrow(&self) -> &T
```

### `impl BorrowMut for T` where `T: ?Sized`

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

```rust
fn borrow_mut(&mut self) -> &mut T
```

### `impl CloneToUninit for T` where `T: Clone`

[Source](https://doc.rust-lang.org/nightly/src/core/clone.rs.html#547)

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### `impl Downcast for T` where `T: Any`

[Source](https://docs.rs/downcast-rs/2.0.2/x86_64-unknown-linux-gnu/src/downcast_rs/lib.rs.html#201)

```rust
fn into_any(self: Box<Self>) -> Box<dyn Any>
fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>
fn as_any(&self) -> &(dyn Any + 'static)
fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)
```

### `impl DowncastSend for T` where `T: Any + Send`

[Source](https://docs.rs/downcast-rs/2.0.2/x86_64-unknown-linux-gnu/src/downcast_rs/lib.rs.html#215)

```rust
fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>
```

### `impl DowncastSync for T` where `T: Any + Send + Sync`

[Source](https://docs.rs/downcast-rs/2.0.2/x86_64-unknown-linux-gnu/src/downcast_rs/lib.rs.html#233)

```rust
fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>
fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>
```

### `impl From for T`

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#786)

```rust
fn from(t: T) -> T
```

### `impl Instrument for T`

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#325)

```rust
fn instrument(self, span: Span) -> Instrumented<Self>
fn in_current_span(self) -> Instrumented<Self>
```

### `impl Into for T` where `U: From<T>`

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#768-770)

```rust
fn into(self) -> U
```

### `impl IntoEither for T`

[Source](https://docs.rs/either/1.16.0/x86_64-unknown-linux-gnu/src/either/into_either.rs.html#64)

```rust
fn into_either(self, into_left: bool) -> Either<Self, Self>
fn into_either_with(self, into_left: F) -> Either<Self, Self>
```

### `impl Pointable for T`

[Source](https://docs.rs/crossbeam-epoch/0.9.18/x86_64-unknown-linux-gnu/src/crossbeam_epoch/atomic.rs.html#194)

```rust
const ALIGN: usize
type Init = T
unsafe fn init(init: Self::Init) -> usize
unsafe fn deref<'a>(ptr: usize) -> &'a T
unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T
unsafe fn drop(ptr: usize)
```

### `impl Same for T`

[Source](https://docs.rs/typenum/1.20.0/x86_64-unknown-linux-gnu/src/typenum/type_operators.rs.html#34)

```rust
type Output = T
```

### `impl ToOwned for T` where `T: Clone`

[Source](https://doc.rust-lang.org/nightly/src/alloc/borrow.rs.html#72-74)

```rust
type Owned = T
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### `impl TryFrom for T` where `U: Into<T>`

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#828-830)

```rust
type Error = Infallible
fn try_from(value: U) -> Result<T, Self::Error>
```

### `impl TryInto for T` where `U: TryFrom<T>`

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#812-814)

```rust
type Error = <U as TryFrom<T>>::Error
fn try_into(self) -> Result<U, Self::Error>
```

### `impl VZip for T` where `V: MultiLane`

[Source](https://docs.rs/ppv-lite86/0.2.21/x86_64-unknown-linux-gnu/src/ppv_lite86/types.rs.html#221-223)

```rust
fn vzip(self) -> V
```

### `impl WithSubscriber for T`

[Source](https://docs.rs/tracing/0.1.44/x86_64-unknown-linux-gnu/src/tracing/instrument.rs.html#393)

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch<Self> where S: Into<Dispatch>
fn with_current_subscriber(self) -> WithDispatch<Self>
```

### `impl Fruit for T` where `T: Send + Downcast`

[Source](https://docs.rs/tantivy/0.26.1/x86_64-unknown-linux-gnu/src/tantivy/collector/mod.rs.html#123)
