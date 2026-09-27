# `TagOptions` in `markex::tag`

`TagOptions` configures optional behavior for tag extraction APIs.

## Definition

```rust
pub struct TagOptions {
    pub fence: Option<TagFence>,
    pub auto_close: bool,
    pub capture_text: bool,
}
```

## Fields

- `fence: Option<TagFence>` — Delimiter configuration. When omitted, extraction uses XML-compatible parsing.
- `auto_close: bool` — Whether to synthesize a closing boundary before a subsequent configured opening tag.
- `capture_text: bool` — Whether to include text fragments outside extracted tags.

## Methods

The methods are chainable setters that consume and return `self`.

```rust
impl TagOptions {
    pub fn with_capture_text(self, capture_text: bool) -> Self;
    pub fn with_fence(self, fence: TagFence) -> Self;
    pub fn with_auto_close(self, auto_close: bool) -> Self;
}
```

- `with_capture_text` sets whether extraction includes text fragments outside extracted tags.
- `with_fence` sets the delimiter configuration used for tag extraction.
- `with_auto_close` sets whether extraction may synthesize closing boundaries.

### Example

```rust
fn main() -> Result<(), Box<dyn std::error::Error>> {
    let input = "Text before some content and after.";
    let parts = extract(input, &["MY_TAG"], TagOptions::default().with_capture_text(true));

    for part in parts {
        match part {
            Part::Text(t) => println!("Text: {t:?}"),
            Part::TagElem(e) => println!("TagElem: {} ({})", e.tag, e.content),
        }
    }

    Ok(())
}
```

## Trait Implementations

`TagOptions` implements the following traits:

- `Clone`
- `Copy`
- `Debug`
- `Default`
- `Eq`
- `PartialEq`
- `StructuralPartialEq`

It also implements `From<Option<TagOptions>>`:

```rust
impl From<Option<TagOptions>> for TagOptions {
    fn from(options: Option<TagOptions>) -> Self;
}
```

### Trait method signatures

```rust
impl Clone for TagOptions {
    fn clone(&self) -> TagOptions;
    fn clone_from(&mut self, source: &Self);
}

impl Debug for TagOptions {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result;
}

impl Default for TagOptions {
    fn default() -> TagOptions;
}

impl PartialEq for TagOptions {
    fn eq(&self, other: &TagOptions) -> bool;
    fn ne(&self, other: &TagOptions) -> bool;
}
```

## Auto Traits

`TagOptions` implements these auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

Like other Rust types, `TagOptions` receives blanket implementations including `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `From`, `Into`, `ToOwned`, `TryFrom`, and `TryInto`.
