# Statement

`Statement` is a struct representing a prepared statement in the Turso Rust client library (version 0.6.1). It provides methods to execute queries, retrieve column metadata, and manage statement state.

## Struct Definition

```rust
pub struct Statement { /* private fields */ }
```

## Implementations

### `impl Statement`

- **`query`**
  ```rust
  pub async fn query(&mut self, params: impl IntoParams) -> Result<Rows>
  ```
  Query the database with this prepared statement.

- **`execute`**
  ```rust
  pub async fn execute(&mut self, params: impl IntoParams) -> Result<u64>
  ```
  Execute this prepared statement.

- **`column_count`**
  ```rust
  pub fn column_count(&self) -> usize
  ```
  Returns the number of columns in the result set.

- **`column_name`**
  ```rust
  pub fn column_name(&self, idx: usize) -> Result<String>
  ```
  Returns the name of the column at the given index.

- **`column_names`**
  ```rust
  pub fn column_names(&self) -> Vec<String>
  ```
  Returns the names of all columns in the result set.

- **`column_index`**
  ```rust
  pub fn column_index(&self, name: &str) -> Result<usize>
  ```
  Returns the index of the column with the given name.

- **`columns`**
  ```rust
  pub fn columns(&self) -> Vec<Column>
  ```
  Returns columns of the result of this prepared statement.

- **`reset`**
  ```rust
  pub fn reset(&self) -> Result<()>
  ```
  Reset internal statement state after previous execution so it can be reused again.

- **`n_change`**
  ```rust
  pub fn n_change(&self) -> u64
  ```
  Returns the number of rows modified (insert/delete operations) by the most recent executed statement.

- **`query_row`**
  ```rust
  pub async fn query_row(&mut self, params: impl IntoParams) -> Result<Row>
  ```
  Execute a query that returns the first `Row`. Returns `QueryReturnedNoRows` if no rows were returned.

## Trait Implementations

### `Clone`

```rust
impl Clone for Statement
```

- **`clone`**: `fn clone(&self) -> Statement`
- **`clone_from`**: `fn clone_from(&mut self, source: &Self)` (inherited default)

## Auto Trait Implementations

- `!Freeze`
- `!RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `!UnwindSafe`

## Blanket Implementations

- **`Any`** where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`

- **`Borrow<T>`** where `T: ?Sized`
  - `fn borrow(&self) -> &T`

- **`BorrowMut<T>`** where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`

- **`CloneToUninit`** where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- **`Downcast`** where `T: Any`
  - `fn into_any(self: Box<Self>) -> Box<dyn Any>`
  - `fn into_any_rc(self: Rc<Self>) -> Rc<dyn Any>`
  - `fn as_any(&self) -> &(dyn Any + 'static)`
  - `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`

- **`DowncastSend`** where `T: Any + Send`
  - `fn into_any_send(self: Box<Self>) -> Box<dyn Any + Send>`

- **`DowncastSync`** where `T: Any + Send + Sync`
  - `fn into_any_sync(self: Box<Self>) -> Box<dyn Any + Sync + Send>`
  - `fn into_any_arc(self: Arc<Self>) -> Arc<dyn Any + Sync + Send>`

- **`From<T>`**
  - `fn from(t: T) -> T`

- **`Instrument`**
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`

- **`Into<U>`** where `U: From<T>`
  - `fn into(self) -> U`

- **`IntoEither`**
  - `fn into_either(self, into_left: bool) -> Either<Self, Self>`
  - `fn into_either_with<F>(self, into_left: F) -> Either<Self, Self>` where `F: FnOnce(&Self) -> bool`

- **`Pointable`**
  - `const ALIGN: usize`
  - `type Init = T`
  - `unsafe fn init(init: Self::Init) -> usize`
  - `unsafe fn deref<'a>(ptr: usize) -> &'a T`
  - `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
  - `unsafe fn drop(ptr: usize)`

- **`Same`**
  - `type Output = T`

- **`ToOwned`** where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`

- **`TryFrom<U>`** where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`

- **`TryInto<U>`** where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`

- **`VZip<V>`** where `V: MultiLane`
  - `fn vzip(self) -> V`

- **`WithSubscriber`**
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>` where `S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`

- **`Fruit`** where `T: Send + Downcast`
  - (No methods listed; trait from `tantivy`)
