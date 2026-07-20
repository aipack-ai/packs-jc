# HeaderProvider in lancedb::remote - Rust

## Trait HeaderProvider

[Source](https://github.com/lancedb/lancedb/blob/main/src/remote/client.rs#L45-L48)

```text
pub trait HeaderProvider:
    Send + Sync + Debug
{
    fn get_headers<'life0, 'async_trait>(
        &'life0 self,
    ) -> Pin<Box<FutureResult<HashMap<String, String>>> + Send + 'async_trait>
    where
        Self: 'async_trait,
        'life0: 'async_trait;
}
```

Trait for providing custom headers for each request.

## Required Methods

- `fn get_headers<'life0, 'async_trait>(&'life0 self) -> Pin<Box<FutureResult<HashMap<String, String>>> + Send + 'async_trait>` where `Self: 'async_trait`, `'life0: 'async_trait`

  Get the latest headers to be added to the request.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). In older versions of Rust, dyn compatibility was called "object safety".

## Implementors

No implementors are listed in this documentation.
