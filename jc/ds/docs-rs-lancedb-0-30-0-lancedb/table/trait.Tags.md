# Tags trait

## Trait Definition

```rust
pub trait Tags: Send + Sync {
    // Required methods
    fn list<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = HashMap<String, TagContents>> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait;

    fn get_version<'life0, 'life1, 'async_trait>(&'life0 self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = u64> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;

    fn create<'life0, 'life1, 'async_trait>(&'life0 mut self, tag: &'life1 str, version: u64) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;

    fn delete<'life0, 'life1, 'async_trait>(&'life0 mut self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;

    fn update<'life0, 'life1, 'async_trait>(&'life0 mut self, tag: &'life1 str, version: u64) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
    where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
}
```

## Required Methods

### `list`

```rust
fn list<'life0, 'async_trait>(&'life0 self) -> Pin<Box<dyn Future<Output = HashMap<String, TagContents>> + Send + 'async_trait>>
where Self: 'async_trait, 'life0: 'async_trait;
```

List the tags of the table.

### `get_version`

```rust
fn get_version<'life0, 'life1, 'async_trait>(&'life0 self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = u64> + Send + 'async_trait>>
where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
```

Get the version of the table referenced by a tag.

### `create`

```rust
fn create<'life0, 'life1, 'async_trait>(&'life0 mut self, tag: &'life1 str, version: u64) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
```

Create a new tag for the given version of the table.

### `delete`

```rust
fn delete<'life0, 'life1, 'async_trait>(&'life0 mut self, tag: &'life1 str) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
```

Delete a tag from the table.

### `update`

```rust
fn update<'life0, 'life1, 'async_trait>(&'life0 mut self, tag: &'life1 str, version: u64) -> Pin<Box<dyn Future<Output = ()> + Send + 'async_trait>>
where Self: 'async_trait, 'life0: 'async_trait, 'life1: 'async_trait;
```

Update an existing tag to point to a new version of the table.

## Dyn Compatibility

This trait **is** dyn compatible. (In older versions of Rust, dyn compatibility was called "object safety".)

## Implementors

### `impl Tags for NativeTags`

```rust
impl Tags for NativeTags { ... }
```
