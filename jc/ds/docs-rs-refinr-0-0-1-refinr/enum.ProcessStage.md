# `ProcessStage`

`ProcessStage` is an enum in the `refinr` crate, version `0.0.1`. It identifies stages in the content-processing workflow.

```rust
pub enum ProcessStage {
    Fetch,
    Sanitize,
    Map,
}
```

## Variants

- `Fetch` — Retrieves source content into the workflow destination.
- `Sanitize` — Sanitizes fetched content.
- `Map` — Builds a content map from processed content.

## Trait implementations

`ProcessStage` implements `Clone`, `Copy`, `Debug`, `Eq`, `PartialEq`, and `StructuralPartialEq`.

### `Clone`

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

`clone` returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

### `PartialEq`

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Rhs) -> bool;
```

`eq` checks equality; `ne` checks inequality.

### Marker traits

`ProcessStage` also implements `Copy`, `Eq`, and `StructuralPartialEq`. These trait implementations add no methods.

## Auto traits

`ProcessStage` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

The type also receives blanket implementations from dependencies and the standard library, including:

- `Any`
- `Borrow<T>` and `BorrowMut<T>`
- `CloneToUninit`
- `Equivalent<K>`
- `From<T>` and `Into<U>`
- `Instrument` and `WithSubscriber`
- `PolicyExt`
- `ToOwned`
- `TryFrom<U>` and `TryInto<U>`
