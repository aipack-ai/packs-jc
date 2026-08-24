# CredMap

`keyring_core::sample::store`

## Type Alias

**Available on crate feature `sample` only.**

**Source:** [keyring_core/sample/store.rs](../../../src/keyring_core/sample/store.rs.html#47)

```rust
pub type CredMap = DashMap<
    CredId,
    DashMap<String, CredValue>,
>;
```

A map from pairs to matching credentials.

### Aliased Type

```rust
pub struct CredMap {
    /* private fields */
}
```
