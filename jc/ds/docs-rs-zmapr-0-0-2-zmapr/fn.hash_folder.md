# `hash_folder`

## Function

```rust
pub fn hash_folder<I, P, H>(children: I) -> String
where
    I: IntoIterator<Item = (P, H)>,
    P: AsRef<str>,
    H: AsRef<str>,
```

[Source](../src/zmapr/mapr/support.rs.html#24-38)
