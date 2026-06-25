# SlimOptions

## In crate `htmlr`

Struct representing options for the `slim` function (indentation, etc.).

## Source

```rust
pub struct SlimOptions {
    pub indent_with_tabs: bool,
    pub indent: Option<u8>,
}
```

## Fields

- `indent_with_tabs: bool` — Whether to use tabs instead of spaces for indentation.
- `indent: Option<u8>` — Number of spaces per indentation level, or `None` for flat output.

## Implementations

### `impl SlimOptions`

#### Constructors

```rust
pub fn from_indent(indent: u8) -> Self
```

Create a new `SlimOptions` with the given indent and no tabs.

**Examples found in repository:**

`examples/c01-simple.rs` (line 8):

```rust
fn main() -> Result<(), Box<dyn std::error::Error>> {
    use htmlr::{Elem, SlimOptions, decode_html_entities, select, slim, to_md};

    let html = r#"

Hello & welcome!

[good link](https://example.com)"#;

    // clean and slim
    let slimmed = slim(html, SlimOptions::from_indent(2))?;
    println!("=== Slimmed version `slim(...)`:\n{slimmed}");

    // select all of the `a` tags
    let elems: Vec<Elem> = select(&slimmed, ["a"])?;
    println!("\n=== count `select(...)`: {}", elems.len());

    // into markdown
    let markdown = to_md(&slimmed, None)?;
    println!("\n=== Markdown `to_md(...)`:\n{markdown}");

    // decoding a html text
    let txt = "good link";
    let decoded = decode_html_entities(txt);
    println!("\n=== decode `decode_html_entities(\"{txt}\")`:\n{decoded}");

    Ok(())
}
```

#### Chainables

```rust
pub fn with_indent(self, spaces: u8) -> Self
```
Set the number of spaces for indentation (enables formatting).

```rust
pub fn with_indent_with_tabs(self, tabs: bool) -> Self
```
Use tabs instead of spaces for indentation.

## Trait Implementations

### `impl Clone for SlimOptions`

```rust
fn clone(&self) -> SlimOptions
fn clone_from(&mut self, source: &Self)
```

### `impl Copy for SlimOptions`

### `impl Debug for SlimOptions`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for SlimOptions`

```rust
fn default() -> SlimOptions
```

### `impl From<Option<SlimOptions>> for SlimOptions`

```rust
fn from(o: Option<SlimOptions>) -> Self
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

- `impl Any for T` where `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `impl Borrow<T> for T` where `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `impl BorrowMut<T> for T` where `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl CloneToUninit for T` where `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl From<T> for T`
  - `fn from(t: T) -> T`
- `impl Into<U> for T` where `U: From<T>`
  - `fn into(self) -> U`
- `impl ToOwned for T` where `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `impl TryFrom<U> for T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, TryFrom::Error>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
  - `type Error = TryFrom::Error`
  - `fn try_into(self) -> Result<U, TryFrom::Error>`
