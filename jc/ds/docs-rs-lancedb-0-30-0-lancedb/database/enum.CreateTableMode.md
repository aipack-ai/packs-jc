# CreateTableMode in lancedb::database

Describes what happens when creating a table and a table with the same name already exists.

```rust
pub enum CreateTableMode {
    Create,
    ExistOk(TableBuilderCallback),
    Overwrite,
}
```

## Variants

- **Create** – If the table already exists, an error is returned.
- **ExistOk(TableBuilderCallback)** – If the table already exists, it is opened. Any provided data is ignored. The function will be passed an `OpenTableBuilder` to customize how the table is opened.
- **Overwrite** – If the table already exists, it is overwritten.

## Implementations

### `impl CreateTableMode`

```rust
pub fn exist_ok(
    callback: impl FnOnce(OpenTableRequest) -> OpenTableRequest + Send + 'static,
) -> Self
```

Creates a `CreateTableMode::ExistOk` variant with the given callback.

## Trait Implementations

### `impl Default for CreateTableMode`

```rust
fn default() -> CreateTableMode
```

Returns the default value for a type. (Read more)

### `impl From<&CreateTableMode> for &str`

```rust
fn from(val: &CreateTableMode) -> Self
```

Converts to this type from the input type.

## Auto Trait Implementations

- `impl Freeze for CreateTableMode`
- `impl !RefUnwindSafe for CreateTableMode`
- `impl Send for CreateTableMode`
- `impl !Sync for CreateTableMode`
- `impl Unpin for CreateTableMode`
- `impl UnsafeUnpin for CreateTableMode`
- `impl !UnwindSafe for CreateTableMode`
