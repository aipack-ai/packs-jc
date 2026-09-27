# `hash_folder`

## Function

`hash_folder` returns a `String`.

[Source](../src/refinr/mapr/support.rs.html#24-38)

```rust
pub fn hash_folder<I, P, H>(children: I) -> String
where
    I: IntoIterator<Item = (P, H)>,
    P: AsRef<str>,
    H: AsRef<str>,
```
