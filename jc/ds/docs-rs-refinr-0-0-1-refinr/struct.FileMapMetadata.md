# FileMapMetadata

`FileMapMetadata` is a struct in the `refinr` crate that stores provenance information associated with a mapped source file.

## Definition

```rust
pub struct FileMapMetadata {
    pub last_modified_unix_nanos: Option<u64>,
    pub source_hash: String,
}
```

## Fields

- `last_modified_unix_nanos: Option<u64>` — Source modification time in Unix nanoseconds, when available.
- `source_hash: String` — Hash identifying the source content used to generate the entry.

## Trait Implementations

### Clone

`FileMapMetadata` implements `Clone`.

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### Debug

`FileMapMetadata` implements `Debug`.

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result;
```

### Default

`FileMapMetadata` implements `Default`.

```rust
fn default() -> Self;
```

### Deserialize

`FileMapMetadata` implements `serde::Deserialize<'de>`.

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

### Eq

`FileMapMetadata` implements `Eq`.

### PartialEq

`FileMapMetadata` implements `PartialEq`.

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

### Serialize

`FileMapMetadata` implements `serde::Serialize`.

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

### StructuralPartialEq

`FileMapMetadata` implements `StructuralPartialEq`.

## Auto Traits

`FileMapMetadata` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The type also receives these blanket implementations:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `DeserializeOwned`
- `Equivalent<K>` (from `hashbrown`)
- `Equivalent<K>` (from `equivalent`)
- `From<T>`
- `Instrument`
- `Into<U>`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>`
- `TryInto<U>`
- `WithSubscriber`
