# FetchFormat

`FetchFormat` selects the representation used for fetched content. Serde serializes and deserializes its variants using snake_case names.

```rust
pub enum FetchFormat {
    Raw,
    Slim,
    Md,
}
```

## Variants

- `Raw` — preserves content in its raw representation.
- `Slim` — selects a compact representation.
- `Md` — selects Markdown. This is the default Rust format.

## Trait implementations

`FetchFormat` implements `Clone`, `Copy`, `Debug`, `Default`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### Clone

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

### Default

```rust
fn default() -> Self;
```

Returns `FetchFormat::Md`.

### Deserialize

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

Deserializes a value from the given Serde deserializer.

### PartialEq

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

Compare two values for equality or inequality.

### Serialize

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

Serializes this value using the given Serde serializer.

## Auto traits

`FetchFormat` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

The documentation also lists these blanket implementations:

- `Any`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit`
- `DeserializeOwned`
- `Equivalent<K>`
- `From<T>`
- `Instrument`
- `Into<U>`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>`
- `TryInto<U>`
- `WithSubscriber`
