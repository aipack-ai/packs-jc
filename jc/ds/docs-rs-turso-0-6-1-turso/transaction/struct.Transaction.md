# Transaction in turso::transaction - Rust

## Struct Transaction

[Source](../../src/turso/transaction.rs.html#86-90)

```text
pub struct Transaction<'conn> { /* private fields */ }
```

Expand description: Represents a transaction on a database connection.

### Note

Transactions will roll back by default. Use `commit` method to explicitly commit the transaction, or use `set_drop_behavior` to change what happens on the next access to the connection after the transaction is dropped.

### Example

```text
async fn perform_queries(conn: &mut Connection) -> Result<()> {
    let tx = conn.transaction().await?;
    do_queries_part_1(&tx)?; // tx causes rollback if this fails
    do_queries_part_2(&tx)?; // tx causes rollback if this fails
    tx.commit().await
}
```

## Implementations

### impl Transaction<'_>

#### pub async fn new

```text
pub async fn new(
    conn: &mut Connection,
    behavior: TransactionBehavior,
) -> Result<Transaction<'_>>
```

Begin a new transaction. Cannot be nested. Even though we don’t mutate the connection, we take a `&mut Connection` to prevent nested transactions on the same connection. For cases where this is unacceptable, [`Transaction::new_unchecked`] is available.

#### pub async fn new_unchecked

```text
pub async fn new_unchecked(
    conn: &Connection,
    behavior: TransactionBehavior,
) -> Result<Transaction<'_>>
```

Begin a new transaction, failing if a transaction is open. If a transaction is already open, this will return an error. Where possible, [`Transaction::new`] should be preferred, as it provides a compile-time guarantee that transactions are not nested.

#### pub async fn prepare

```text
pub async fn prepare(&self, sql: &str) -> Result<Statement>
```

#### pub fn drop_behavior

```text
pub fn drop_behavior(&self) -> DropBehavior
```

Get the current setting for what happens to the transaction when it is dropped.

#### pub fn set_drop_behavior

```text
pub fn set_drop_behavior(&mut self, drop_behavior: DropBehavior)
```

Configure the transaction to perform the specified action when it is dropped.

#### pub async fn commit

```text
pub async fn commit(self) -> Result<()>
```

A convenience method which consumes and commits a transaction.

#### pub async fn rollback

```text
pub async fn rollback(self) -> Result<()>
```

A convenience method which consumes and rolls back a transaction.

#### pub async fn finish

```text
pub async fn finish(self) -> Result<()>
```

Consumes the transaction, committing or rolling back according to the current setting (see `drop_behavior`). Functionally equivalent to the `Drop` implementation, but allows callers to see any errors that occur.

## Methods from Deref<Target=Connection>

#### pub async fn query

```text
pub async fn query(
    &self,
    sql: impl AsRef<str>,
    params: impl IntoParams,
) -> Result<Rows>
```

Query the database with SQL.

#### pub async fn execute

```text
pub async fn execute(
    &self,
    sql: impl AsRef<str>,
    params: impl IntoParams,
) -> Result<u64>
```

Execute SQL statement on the database.

#### pub async fn execute_batch

```text
pub async fn execute_batch(
    &self,
    sql: impl AsRef<str>,
) -> Result<()>
```

Execute a batch of SQL statements on the database.

#### pub async fn prepare

```text
pub async fn prepare(&self, sql: impl AsRef<str>) -> Result<Statement>
```

Prepare a SQL statement for later execution.

#### pub async fn prepare_cached

```text
pub async fn prepare_cached(&self, sql: impl AsRef<str>) -> Result<Statement>
```

Prepare a SQL statement for later execution, caching it in the connection.

#### pub async fn pragma_query

```text
pub async fn pragma_query(
    &self,
    pragma_name: &str,
    f: F,
) -> Result<()>
where
    F: FnMut(&Row) -> Result<(), TursoError>,
```

Query a pragma.

#### pub async fn pragma_update

```text
pub async fn pragma_update<V: Display>(
    &self,
    pragma_name: &str,
    pragma_value: V,
) -> Result<Vec<Row>>
```

Set a pragma value.

#### pub fn last_insert_rowid

```text
pub fn last_insert_rowid(&self) -> i64
```

Returns the rowid of the last row inserted.

#### pub fn cacheflush

```text
pub fn cacheflush(&self) -> Result<()>
```

Flush dirty pages to disk. This will write the dirty pages to the WAL.

#### pub fn is_autocommit

```text
pub fn is_autocommit(&self) -> Result<bool>
```

#### pub fn busy_timeout

```text
pub fn busy_timeout(&self, duration: Duration) -> Result<()>
```

Sets maximum total accumulated timeout. If the duration is None or Zero, we unset the busy handler for this Connection. This api defers slightly from sqlite.org/c3ref/busy_timeout.html. Instead of sleeping for linear amount of time specified by the user, we will sleep in phases, until the total amount of time is reached. This means we first sleep of 1ms, then if we still return busy, we sleep for 2 ms, and repeat until a maximum of 100 ms per phase.

Example:
1. Set duration to 5ms
2. Step through query -> returns Busy -> sleep/yield for 1 ms
3. Step through query -> returns Busy -> sleep/yield for 2 ms
4. Step through query -> returns Busy -> sleep/yield for 2 ms (totaling 5 ms of sleep)
5. Step through query -> returns Busy -> return Busy to user

#### pub async fn unchecked_transaction

```text
pub async fn unchecked_transaction(&self) -> Result<Transaction<'_>>
```

Begin a new transaction with the default behavior (DEFERRED). Attempt to open a nested transaction will result in a SQLite error. `Connection::transaction` prevents this at compile time by taking `&mut self`, but `Connection::unchecked_transaction()` may be used to defer the checking until runtime. See [`Connection::transaction`] and [`Transaction::new_unchecked`] (which can be used if the default transaction behavior is undesirable).

Example:
```text
async fn perform_queries(conn: Rc<Connection>) -> Result<()> {
    let tx = conn.unchecked_transaction().await?;
    do_queries_part_1(&tx)?;
    do_queries_part_2(&tx)?;
    tx.commit().await
}
```

**Failure**: Will return `Err` if the underlying SQLite call fails. The specific error returned if transactions are nested is currently unspecified.

## Trait Implementations

### impl Debug for Transaction<'conn>

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result<()>
```

### impl Deref for Transaction<'_>

- `type Target = Connection`
- `fn deref(&self) -> &Connection`

### impl Drop for Transaction<'_>

- `fn drop(&mut self)`
- `fn pin_drop(self: Pin<&mut Self>)` (nightly)

## Auto Trait Implementations

- `!RefUnwindSafe`
- `!UnwindSafe`
- `Freeze`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`

## Blanket Implementations

- `Any` where T: 'static + ?Sized
- `Borrow<T>` for T
- `BorrowMut<T>` for T
- `Downcast` for T where T: Any
- `DowncastSend` for T where T: Any + Send
- `DowncastSync` for T where T: Any + Send + Sync
- `From<T>` for T
- `Fruit` for T where T: Send + Downcast
- `Instrument` for T
- `Into<U>` for T where U: From<T>
- `IntoEither` for T
- `Pointable` for T
- `Receiver` for P where P: Deref<Target = T>
- `Same` for T
- `TryFrom<U>` for T where U: Into<T>
- `TryInto<U>` for T where U: TryFrom<T>
- `VZip<V>` for T where V: MultiLane
- `WithSubscriber` for T
