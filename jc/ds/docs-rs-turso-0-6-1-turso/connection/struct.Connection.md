# Connection

`pub struct Connection { /* private fields */ }`

**Source:** [connection.rs.html#39-55](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#39-55)

---

## Implementations

### Associated Functions

#### `pub fn create(
    conn: Arc<TursoConnection>,
    extra_io: Option<Arc<dyn Fn(Waker) -> Result<()> + Send + Sync>>,
) -> Self`

Creates a new `Connection`.

**Source:** [connection.rs.html#71-83](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#71-83)

---

### Methods

#### `pub async fn query(
    &self,
    sql: impl AsRef<str>,
    params: impl IntoParams,
) -> Result<Rows>`

Query the database with SQL.

**Source:** [connection.rs.html#108-112](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#108-112)

#### `pub async fn execute(
    &self,
    sql: impl AsRef<str>,
    params: impl IntoParams,
) -> Result<u64>`

Execute SQL statement on the database.

**Source:** [connection.rs.html#115-119](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#115-119)

#### `pub async fn execute_batch(
    &self,
    sql: impl AsRef<str>,
) -> Result<()>`

Execute a batch of SQL statements on the database.

**Source:** [connection.rs.html#130-134](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#130-134)

#### `pub async fn prepare(
    &self,
    sql: impl AsRef<str>,
) -> Result<Statement>`

Prepare a SQL statement for later execution.

**Source:** [connection.rs.html#137-147](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#137-147)

#### `pub async fn prepare_cached(
    &self,
    sql: impl AsRef<str>,
) -> Result<Statement>`

Prepare a SQL statement for later execution, caching it in the connection.

**Source:** [connection.rs.html#150-160](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#150-160)

#### `pub async fn pragma_query(
    &self,
    pragma_name: &str,
    f: F,
) -> Result<()>
where
    F: FnMut(&Row) -> Result<(), TursoError>`

Query a pragma.

**Source:** [connection.rs.html#178-189](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#178-189)

#### `pub async fn pragma_update(
    &self,
    pragma_name: &str,
    pragma_value: V,
) -> Result<Vec<Row>>`

Set a pragma value.

**Source:** [connection.rs.html#192-205](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#192-205)

#### `pub fn last_insert_rowid(&self) -> i64`

Returns the rowid of the last row inserted.

**Source:** [connection.rs.html#208-211](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#208-211)

#### `pub fn cacheflush(&self) -> Result<()>`

Flush dirty pages to disk. This will write the dirty pages to the WAL.

**Source:** [connection.rs.html#215-219](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#215-219)

#### `pub fn is_autocommit(&self) -> Result<bool>`

**Source:** [connection.rs.html#221-224](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#221-224)

#### `pub fn busy_timeout(
    &self,
    duration: Duration,
) -> Result<()>`

Sets maximum total accumulated timeout. If the duration is None or Zero, we unset the busy handler for this Connection.

This api defers slightly from: https://www.sqlite.org/c3ref/busy_timeout.html

Instead of sleeping for linear amount of time specified by the user, we will sleep in phases, until the total amount of time is reached. This means we first sleep of 1ms, then if we still return busy, we sleep for 2 ms, and repeat until a maximum of 100 ms per phase.

Example:

- Set duration to 5ms
- Step through query -> returns Busy -> sleep/yield for 1 ms
- Step through query -> returns Busy -> sleep/yield for 2 ms
- Step through query -> returns Busy -> sleep/yield for 2 ms (totaling 5 ms of sleep)
- Step through query -> returns Busy -> return Busy to user

**Source:** [connection.rs.html#240-244](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#240-244)

---

#### `pub async fn transaction(&mut self) -> Result<Transaction<'_>>`

Begin a new transaction with the default behavior (DEFERRED).

The transaction defaults to rolling back on the next access to the connection if it is not finished when the transaction is dropped. If you want the transaction to commit, you must call `commit` or `set_drop_behavior(DropBehavior::Commit)`.

**Example:**

```text
async fn perform_queries(conn: &mut Connection) -> Result<()> {
    let tx = conn.transaction().await?;
    do_queries_part_1(&tx)?; // tx causes rollback if this fails
    do_queries_part_2(&tx)?; // tx causes rollback if this fails
    tx.commit().await
}
```

**Failure:** Will return `Err` if the call fails.

**Source:** [transaction.rs.html#261-264](https://docs.rs/turso/0.6.1/src/turso/transaction.rs.html#261-264)

#### `pub async fn transaction_with_behavior(
    &mut self,
    behavior: TransactionBehavior,
) -> Result<Transaction<'_>>`

Begin a new transaction with a specified behavior.

See `transaction`.

**Failure:** Will return `Err` if the call fails.

**Source:** [transaction.rs.html#274-280](https://docs.rs/turso/0.6.1/src/turso/transaction.rs.html#274-280)

#### `pub async fn unchecked_transaction(&self) -> Result<Transaction<'_>>`

Begin a new transaction with the default behavior (DEFERRED).

Attempt to open a nested transaction will result in a SQLite error. `Connection::transaction` prevents this at compile time by taking `&mut self`, but `Connection::unchecked_transaction()` may be used to defer the checking until runtime.

See `Connection::transaction` and `Transaction::new_unchecked`.

**Example:**

```text
async fn perform_queries(conn: Rc) -> Result<()> {
    let tx = conn.unchecked_transaction().await?;
    do_queries_part_1(&tx)?; // tx causes rollback if this fails
    do_queries_part_2(&tx)?; // tx causes rollback if this fails
    tx.commit().await
}
```

**Failure:** Will return `Err` if the underlying SQLite call fails.

**Source:** [transaction.rs.html#313-315](https://docs.rs/turso/0.6.1/src/turso/transaction.rs.html#313-315)

#### `pub fn set_transaction_behavior(&mut self, behavior: TransactionBehavior)`

Set the default transaction behavior for the connection.

**Note:** This will only apply to transactions initiated by `transaction` or `unchecked_transaction`.

**Example:**

```text
async fn perform_queries(conn: &mut Connection) -> Result<()> {
    conn.set_transaction_behavior(TransactionBehavior::Immediate);
    let tx = conn.transaction().await?;
    do_queries_part_1(&tx)?; // tx causes rollback if this fails
    do_queries_part_2(&tx)?; // tx causes rollback if this fails
    tx.commit().await
}
```

**Source:** [transaction.rs.html#342-344](https://docs.rs/turso/0.6.1/src/turso/transaction.rs.html#342-344)

---

## Trait Implementations

### `impl Clone for Connection`

- `fn clone(&self) -> Self`
- `fn clone_from(&mut self, source: &Self)`

**Source:** [connection.rs.html#59-68](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#59-68)

### `impl Debug for Connection`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

**Source:** [connection.rs.html#247-251](https://docs.rs/turso/0.6.1/src/turso/connection.rs.html#247-251)

---

## Auto Trait Implementations

- `impl !Freeze for Connection`
- `impl !RefUnwindSafe for Connection`
- `impl Send for Connection`
- `impl Sync for Connection`
- `impl Unpin for Connection`
- `impl UnsafeUnpin for Connection`
- `impl !UnwindSafe for Connection`

---

## Blanket Implementations

- `impl Any for T where T: 'static + ?Sized`
- `impl Borrow<T> for T where T: ?Sized`
- `impl BorrowMut<T> for T where T: ?Sized`
- `impl CloneToUninit for T where T: Clone`
- `impl Downcast for T where T: Any`
- `impl DowncastSend for T where T: Any + Send`
- `impl DowncastSync for T where T: Any + Send + Sync`
- `impl From<T> for T`
- `impl Instrument for T`
- `impl Into<U> for T where U: From<T>`
- `impl IntoEither for T`
- `impl Pointable for T`
- `impl Same for T`
- `impl ToOwned for T where T: Clone`
- `impl TryFrom<U> for T where U: Into<T>`
- `impl TryInto<U> for T where U: TryFrom<T>`
- `impl VZip<V> for T where V: MultiLane`
- `impl WithSubscriber for T`

---

**Note:** Full details of blanket implementations are omitted for brevity; see the original documentation for method signatures and conditions.
