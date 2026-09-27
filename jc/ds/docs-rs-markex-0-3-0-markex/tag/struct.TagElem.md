# TagElem

`TagElem` is defined in `markex::tag`. It represents a block defined by start and end tags, such as `content`.

## Definition

```rust
pub struct TagElem {
    pub tag: String,
    pub attrs: Option<HashMap<String, String>>,
    pub content: String,
    pub auto_closed: bool,
}
```

## Fields

- `tag: String` — The tag name.
- `attrs: Option<HashMap<String, String>>` — Optional tag attributes.
- `content: String` — The element content.
- `auto_closed: bool` — Whether the element was automatically closed.

## Constructor

```rust
pub fn new(
    name: impl Into<String>,
    attrs: Option<HashMap<String, String>>,
    content: impl Into<String>,
) -> Self
```

Creates a `TagElem` with the specified name, optional attributes, and content.

## Trait Implementations

- `Clone`
  - `fn clone(&self) -> TagElem`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- `Default`
  - `fn default() -> TagElem`
- `From<TagElemRef<'_>>`
  - `fn from(tag_ref: TagElemRef<'_>) -> Self`
- `PartialEq`
  - `fn eq(&self, other: &TagElem) -> bool`
  - `fn ne(&self, other: &TagElem) -> bool`
- `Serialize`
  - `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
  - Constraint: `S: Serializer`
- `StructuralPartialEq`

## Auto Traits

`TagElem` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

`TagElem` receives the standard blanket implementations of `Any`, `Borrow`, `BorrowMut`, `CloneToUninit`, `From`, `Into`, `ToOwned`, `TryFrom`, and `TryInto`.
