# `JournalRecordStatus`

`JournalRecordStatus` is an enum in the `refinr` 0.0.1 crate. It indicates whether a journal operation produced a reusable entry.

```rust
pub enum JournalRecordStatus {
    Ok,
    Failed,
}
```

## Variants

- `Ok` — The operation succeeded and produced an entry.
- `Failed` — The operation failed, so any previous entry for the path is invalidated.

## Trait Implementations

The enum implements `Clone`, `Copy`, `Debug`, `Eq`, `PartialEq`, `Serialize`, and `Deserialize<'de>`. It also implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`, as well as `StructuralPartialEq`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result;
```

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

### `Deserialize<'de>`

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes the enum using the provided Serde deserializer.

### `Serialize`

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes the enum using the provided Serde serializer.
