# Occur in lancedb::index::scalar - Rust

**Module:** [lancedb::index::scalar](index.html)

**Enum Occur** (Copy item path)

Source: [https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#554](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#554)

```text
pub enum Occur {
    Should,
    Must,
    MustNot,
}
```

## Variants

- **Should**
- **Must**
- **MustNot**

## Trait Implementations

### `impl From<Occur> for &'static str`

Source: [https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#575](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#575)

```text
fn from(occur: Occur) -> &'static str
```

### `impl TryFrom<&str> for Occur`

Source: [https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#560](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#560)

```text
type Error = Error
fn try_from(value: &str) -> Result<Occur, Error>
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

Many blanket implementations are provided for `Occur` as for any type, including `Any`, `Borrow`, `From`, `Into`, `TryFrom`, `TryInto`, `Instrument`, `Tap`, `Pipe`, `Conv`, `VZip`, `WithSubscriber`, etc.
