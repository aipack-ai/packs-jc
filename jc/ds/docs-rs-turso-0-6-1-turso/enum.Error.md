# Error

## Variants

- `ToSqlConversionFailure(Box<dyn Error + Send + Sync>)`
- `QueryReturnedNoRows`
- `ConversionFailure(String)`
- `Busy(String)`
- `BusySnapshot(String)`
- `Interrupt(String)`
- `Error(String)`
- `Misuse(String)`
- `Constraint(String)`
- `Readonly(String)`
- `DatabaseFull(String)`
- `NotAdb(String)`
- `Corrupt(String)`
- `IoError(ErrorKind, &'static str)`

## Enum Definition

```rust
pub enum Error {
    ToSqlConversionFailure(Box<dyn Error + Send + Sync>),
    QueryReturnedNoRows,
    ConversionFailure(String),
    Busy(String),
    BusySnapshot(String),
    Interrupt(String),
    Error(String),
    Misuse(String),
    Constraint(String),
    Readonly(String),
    DatabaseFull(String),
    NotAdb(String),
    Corrupt(String),
    IoError(ErrorKind, &'static str),
}
```

## Trait Implementations

### `impl Debug for Error`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Display for Error`

```rust
fn fmt(&self, __formatter: &mut Formatter<'_>) -> Result
```

### `impl Error for Error`

- `fn source(&self) -> Option<&(dyn Error + 'static)>`
- `fn description(&self) -> &str` (deprecated)
- `fn cause(&self) -> Option<&dyn Error>` (deprecated)
- `fn provide<'a>(&'a self, request: &mut Request<'a>)` (nightly)

### `impl From<TursoError> for Error`

```rust
fn from(value: TursoError) -> Self
```

## Auto Trait Implementations

- `Freeze` for `Error`
- `!RefUnwindSafe` for `Error`
- `Send` for `Error`
- `Sync` for `Error`
- `Unpin` for `Error`
- `UnsafeUnpin` for `Error`
- `!UnwindSafe` for `Error`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized` → `fn type_id(&self) -> TypeId`
- `impl Borrow<T> for T` where `T: ?Sized` → `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where `T: ?Sized` → `fn borrow_mut(&mut self) -> &mut T`
- `impl Downcast for T` where `T: Any` → multiple methods
- `impl DowncastSend for T` where `T: Any + Send`
- `impl DowncastSync for T` where `T: Any + Send + Sync`
- `impl From<T> for T` → `fn from(t: T) -> T`
- `impl Instrument for T` → `fn instrument(self, span: Span) -> Instrumented` and `fn in_current_span(self) -> Instrumented`
- `impl Into<U> for T` where `U: From<T>` → `fn into(self) -> U`
- `impl IntoEither for T` → two methods
- `impl Pointable for T` → multiple methods and associated types
- `impl Same for T` → associated type `Output = T`
- `impl ToString for T` where `T: Display + ?Sized` → `fn to_string(&self) -> String`
- `impl TryFrom<U> for T` where `U: Into<T>` → associated type `Error = Infallible`, `fn try_from(value: U) -> Result<T, Infallible>`
- `impl TryInto<U> for T` where `U: TryFrom<T>` → associated type `Error = U::Error`, `fn try_into(self) -> Result<U, U::Error>`
- `impl VZip<V> for T` where `V: MultiLane` → `fn vzip(self) -> V`
- `impl WithSubscriber for T` → two methods
- `impl Fruit for T` where `T: Send + Downcast`
