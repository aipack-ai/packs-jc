# params_from_iter

[In turso::params](index.html)

## Signature

```rust
pub fn params_from_iter<I>(iter: I) -> impl IntoParams
where
    I: IntoIterator,
    <I as IntoIterator>::Item: IntoValue,
```

## Description

Convert an owned iterator into `Params`.

## Example

```rust
let iter = vec![1, 2, 3];
conn.query(
    "SELECT * FROM users WHERE id IN (?1, ?2, ?3)",
    params_from_iter(iter)
)
.await.unwrap();
```
