# HtmlContent

## htmlr 0.1.2

## HtmlContent

[Source](../src/htmlr/html_content.rs.html#9-14)

Represents either a raw HTML string or a pre-parsed HTML document.

```rust
pub enum HtmlContent<'a> {
    Source(&'a str),
    Parsed(&'a HtmlParsed),
}
```

### Variants

- **Source** (`&'a str`) – A raw HTML string.
- **Parsed** (`&'a HtmlParsed`) – A pre-parsed HTML document.

### Trait Implementations

#### `impl<'a> From<&'a Html> for HtmlContent<'a>`

[Source](../src/htmlr/html_content.rs.html#30-34)

```rust
fn from(value: &'a HtmlParsed) -> Self
```

Converts to this type from the input type.

#### `impl<'a> From<&'a String> for HtmlContent<'a>`

[Source](../src/htmlr/html_content.rs.html#18-22)

```rust
fn from(value: &'a String) -> Self
```

Converts to this type from the input type.

#### `impl<'a> From<&'a str> for HtmlContent<'a>`

[Source](../src/htmlr/html_content.rs.html#24-28)

```rust
fn from(value: &'a str) -> Self
```

Converts to this type from the input type.

### Auto Trait Implementations

- `impl<'a> !RefUnwindSafe for HtmlContent<'a>`
- `impl<'a> !Send for HtmlContent<'a>`
- `impl<'a> !Sync for HtmlContent<'a>`
- `impl<'a> !UnwindSafe for HtmlContent<'a>`
- `impl<'a> Freeze for HtmlContent<'a>`
- `impl<'a> Unpin for HtmlContent<'a>`
- `impl<'a> UnsafeUnpin for HtmlContent<'a>`

### Blanket Implementations

#### `impl<T> Any for T` where T: 'static + ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/any.rs.html#141)

```rust
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

#### `impl<T> Borrow<T> for T` where T: ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#212)

```rust
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

#### `impl<T> BorrowMut<T> for T` where T: ?Sized

[Source](https://doc.rust-lang.org/nightly/src/core/borrow.rs.html#221)

```rust
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

#### `impl<T> From<T> for T`

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#787)

```rust
fn from(t: T) -> T
```

Returns the argument unchanged.

#### `impl<T, U> Into<U> for T` where U: From<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#769-771)

```rust
fn into(self) -> U
```

Calls `U::from(self)`.

#### `impl<T, U> TryFrom<U> for T` where U: Into<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#829-831)

```rust
type Error = Infallible;

fn try_from(value: U) -> Result<T, Self::Error>
```

Performs the conversion.

#### `impl<T, U> TryInto<U> for T` where U: TryFrom<T>

[Source](https://doc.rust-lang.org/nightly/src/core/convert/mod.rs.html#813-815)

```rust
type Error = U::Error;

fn try_into(self) -> Result<U, Self::Error>
```

Performs the conversion.
