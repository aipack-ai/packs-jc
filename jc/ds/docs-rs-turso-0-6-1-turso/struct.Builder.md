# Builder in turso - Rust

## Struct Builder

[Source](../src/turso/lib.rs.html#140-154)

```text
pub struct Builder { /* private fields */ }
```

A builder for `Database`.

## Implementations

### impl Builder

#### Associated Functions

- **new_local**  
  [Source](../src/turso/lib.rs.html#158-174)  
  ```text
  pub fn new_local(path: &str) -> Self
  ```
  Create a new local database.

#### Methods

- **experimental_encryption**  
  [Source](../src/turso/lib.rs.html#176-179)  
  ```text
  pub fn experimental_encryption(self, encryption_enabled: bool) -> Self
  ```

- **with_encryption**  
  [Source](../src/turso/lib.rs.html#181-184)  
  ```text
  pub fn with_encryption(self, opts: EncryptionOpts) -> Self
  ```

- **experimental_triggers**  
  [Source](../src/turso/lib.rs.html#187-189)  
  ```text
  pub fn experimental_triggers(self, _triggers_enabled: bool) -> Self
  ```
  Kept for backwards compatibility. Triggers are now always enabled.

- **experimental_attach**  
  [Source](../src/turso/lib.rs.html#191-194)  
  ```text
  pub fn experimental_attach(self, attach_enabled: bool) -> Self
  ```

- **experimental_strict**  
  [Source](../src/turso/lib.rs.html#197-199)  
  ```text
  pub fn experimental_strict(self, _strict_enabled: bool) -> Self
  ```
  Kept for backwards compatibility. Strict tables are now always enabled.

- **experimental_custom_types**  
  [Source](../src/turso/lib.rs.html#201-204)  
  ```text
  pub fn experimental_custom_types(self, custom_types_enabled: bool) -> Self
  ```

- **experimental_generated_columns**  
  [Source](../src/turso/lib.rs.html#206-209)  
  ```text
  pub fn experimental_generated_columns(self, gencols_enabled: bool) -> Self
  ```

- **experimental_index_method**  
  [Source](../src/turso/lib.rs.html#211-214)  
  ```text
  pub fn experimental_index_method(self, index_method_enabled: bool) -> Self
  ```

- **experimental_materialized_views**  
  [Source](../src/turso/lib.rs.html#216-219)  
  ```text
  pub fn experimental_materialized_views(self, enabled: bool) -> Self
  ```

- **experimental_vacuum**  
  [Source](../src/turso/lib.rs.html#221-224)  
  ```text
  pub fn experimental_vacuum(self, enabled: bool) -> Self
  ```

- **experimental_multiprocess_wal**  
  [Source](../src/turso/lib.rs.html#226-229)  
  ```text
  pub fn experimental_multiprocess_wal(self, enabled: bool) -> Self
  ```

- **experimental_without_rowid**  
  [Source](../src/turso/lib.rs.html#231-234)  
  ```text
  pub fn experimental_without_rowid(self, enabled: bool) -> Self
  ```

- **with_io**  
  [Source](../src/turso/lib.rs.html#236-239)  
  ```text
  pub fn with_io(self, vfs: String) -> Self
  ```

- **with_io_impl**  
  [Source](../src/turso/lib.rs.html#242-245)  
  ```text
  pub fn with_io_impl(self, io: Arc<IO>) -> Self
  ```
  Can pass custom IO implementation.

- **build**  
  [Source](../src/turso/lib.rs.html#284-306)  
  ```text
  pub async fn build(self) -> Result<Database>
  ```
  Build the database.

## Auto Trait Implementations

- **Freeze**  
  ```text
  impl Freeze for Builder
  ```

- **!RefUnwindSafe**  
  ```text
  impl !RefUnwindSafe for Builder
  ```

- **Send**  
  ```text
  impl Send for Builder
  ```

- **Sync**  
  ```text
  impl Sync for Builder
  ```

- **Unpin**  
  ```text
  impl Unpin for Builder
  ```

- **UnsafeUnpin**  
  ```text
  impl UnsafeUnpin for Builder
  ```

- **!UnwindSafe**  
  ```text
  impl !UnwindSafe for Builder
  ```

## Blanket Implementations

- **Any**  
  ```text
  impl Any for T where T: 'static + ?Sized
  ```
  - `fn type_id(&self) -> TypeId`

- **Borrow**  
  ```text
  impl Borrow for T where T: ?Sized
  ```
  - `fn borrow(&self) -> &T`

- **BorrowMut**  
  ```text
  impl BorrowMut for T where T: ?Sized
  ```
  - `fn borrow_mut(&mut self) -> &mut T`

- **Downcast**  
  ```text
  impl Downcast for T where T: Any
  ```
  - `fn into_any(self: Box<Self>) -> Box<dyn Any>`
  - `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
  - `fn as_any(&self) -> &(dyn Any + 'static)`
  - `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`

- **DowncastSend**  
  ```text
  impl DowncastSend for T where T: Any + Send
  ```
  - `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`

- **DowncastSync**  
  ```text
  impl DowncastSync for T where T: Any + Send + Sync
  ```
  - `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
  - `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`

- **From**  
  ```text
  impl From for T
  ```
  - `fn from(t: T) -> T`

- **Instrument**  
  ```text
  impl Instrument for T
  ```
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`

- **Into**  
  ```text
  impl Into for T where U: From<T>
  ```
  - `fn into(self) -> U`

- **IntoEither**  
  ```text
  impl IntoEither for T
  ```
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool`

- **Pointable**  
  ```text
  impl Pointable for T
  ```
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: T) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- **Same**  
  ```text
  impl Same for T
  ```
  - `type Output = T`

- **TryFrom**  
  ```text
  impl TryFrom for T where U: Into<T>
  ```
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`

- **TryInto**  
  ```text
  impl TryInto for T where U: TryFrom<T>
  ```
  - `type Error = U::Error`
  - `fn try_into(self) -> Result<U, U::Error>`

- **VZip**  
  ```text
  impl VZip for T where V: MultiLane
  ```
  - `fn vzip(self) -> V`

- **WithSubscriber**  
  ```text
  impl WithSubscriber for T
  ```
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch`

- **Fruit**  
  ```text
  impl Fruit for T where T: Send + Downcast
  ```
