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

- `Raw` — Preserve the fetched content in its raw representation.
- `Slim` — Use a compact representation of the fetched content.
- `Md` — Use Markdown. This is the default format.

## Trait Implementations

`FetchFormat` implements `Clone`, `Copy`, `Debug`, `Default`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### Clone

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

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

### PartialEq

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

### Serialize

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

## Auto Traits

`FetchFormat` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

The documented blanket implementations include `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `DeserializeOwned`, `Equivalent`, `From`, `Instrument`, `Into`, `PolicyExt`, `ToOwned`, `TryFrom`, `TryInto`, and `WithSubscriber`.
