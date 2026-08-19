# Struct WebClient

- [Methods](#methods)
- [Auto Trait Implementations](#auto-trait-implementations)
- [Blanket Implementations](#blanket-implementations)

```rust
pub struct WebClient { /* private fields */ }
```

## Methods

- [pub async fn web_get](#method.web_get)
- [pub async fn web_post](#method.web_post)

### impl WebClient

```rust
pub async fn web_get(&self, params: WebParams) -> Result<WebResponse>
```

```rust
pub async fn web_post(&self, params: WebPostParams) -> Result<WebResponse>
```

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [WebClient](struct.WebClient.html)
- impl ! [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [WebClient](struct.WebClient.html)
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [WebClient](struct.WebClient.html)
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [WebClient](struct.WebClient.html)
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [WebClient](struct.WebClient.html)
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [WebClient](struct.WebClient.html)
- impl ! [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [WebClient](struct.WebClient.html)

## Blanket Implementations

### impl [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html) for T

where T: 'static + ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

```rust
fn type_id(&self) -> TypeId
```

### impl [Borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html) for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

```rust
fn borrow(&self) -> &T
```

### impl [BorrowMut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html) for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

```rust
fn borrow_mut(&mut self) -> &mut T
```

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html) for T

```rust
fn from(t: T) -> T
```

### impl Instrument for T

```rust
fn instrument(self, span: Span) -> Instrumented
```

```rust
fn in_current_span(self) -> Instrumented
```

### impl [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html) for T

where U: [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html),

```rust
fn into(self) -> U
```

### impl [IntoEither](https://docs.rs/either/1/either/into_either/trait.IntoEither.html) for T

```rust
fn into_either(self, into_left: bool) -> Either
```

```rust
fn into_either_with(self, into_left: F) -> Either
where
    F: FnOnce(&Self) -> bool,
```

### impl PolicyExt for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

```rust
fn and(self, other: P) -> And
where
    T: Policy,
    P: Policy,
```

```rust
fn or(self, other: P) -> Or
where
    T: Policy,
    P: Policy,
```

### impl [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html) for T

where U: [Into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html),

```rust
type Error = Infallible
```

```rust
fn try_from(value: U) -> Result<TryFrom::Error>
```

### impl [TryInto](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html) for T

where U: [TryFrom](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html),

```rust
type Error = TryFrom::Error
```

```rust
fn try_into(self) -> Result<TryFrom::Error>
```

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
where
    S: Into,
```

```rust
fn with_current_subscriber(self) -> WithDispatch
```

### impl [AutoreleaseSafe](https://docs.rs/objc2/0.6.4/objc2/rc/autorelease/trait.AutoreleaseSafe.html) for T

where T: ? [Sized](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sized.html),

### impl MaybeSend for T

### impl MaybeSync for T
