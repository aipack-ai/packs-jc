# StubAiClient

A deterministic stub AI client for offline testing.

## Definition

```rust
pub struct StubAiClient {
    /* private fields */
}
```

## Associated Functions

### `from_response`

```rust
pub fn from_response(response: impl Into<String>) -> Self
```

Create a stub that always returns `response`.

### `with_response`

```rust
pub fn with_response(self, response: impl Into<String>) -> Self
```

Configure the response returned by this stub.

### `with_usage`

```rust
pub fn with_usage(self, usage: Usage) -> Self
```

Configure the usage information returned by this stub.

`Usage` is `genai::chat::usage::Usage`.

## Trait Implementations

### `MaprAiClient`

```rust
fn complete<'a>(
    &'a self,
    prompt: &'a str,
) -> BoxFuture<'a, Result<MaprAiResponse>>
```

Generate a completion for `prompt`.

`BoxFuture` and `Result` are refinr types; the result contains a `MaprAiResponse`.

### `Clone`

```rust
fn clone(&self) -> Self
fn clone_from(&mut self, source: &Self)
```

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result
```

### `Default`

```rust
fn default() -> Self
```

## Auto Traits

`StubAiClient` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The type also receives blanket implementations including `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `From`, `Instrument`, `Into`, `PolicyExt`, `ToOwned`, `TryFrom`, `TryInto`, and `WithSubscriber`.
