# Struct TagPattern

Precomputed tag patterns derived from the tag name for efficient searching.

```rust
pub struct TagPattern {
    pub name: String,
    pub start_tag_prefix: String,
    pub end_tags: Vec<String>,
    pub close_delims: Vec<&'static str>,
    pub closing_tag_prefix: String,
    pub self_closing_suffix: String,
}
```

## Fields

- `name`: `String` - The original tag name (e.g., “FILE”).
- `start_tag_prefix`: `String` - The opening tag prefix. Used to find the start of the tag.
- `end_tags`: `Vec<String>` - The closing tag structure. Used to find the end of the element.
- `close_delims`: `Vec<&'static str>` - The delimiters that end opening and closing tags.
- `closing_tag_prefix`: `String` - The prefix between an opening delimiter and a closing tag name.
- `self_closing_suffix`: `String` - The suffix that identifies a self-closing opening tag.

## Implementations

### impl TagPattern

- `pub fn new(tag_name: &str, fence: TagFence) -> Self`

## Auto Trait Implementations

- impl `Freeze` for `TagPattern`
- impl `RefUnwindSafe` for `TagPattern`
- impl `Send` for `TagPattern`
- impl `Sync` for `TagPattern`
- impl `Unpin` for `TagPattern`
- impl `UnsafeUnpin` for `TagPattern`
- impl `UnwindSafe` for `TagPattern`

## Blanket Implementations

### impl Any for T

where
- `T: 'static + ?Sized`

Functions:
- `fn type_id(&self) -> TypeId` - Gets the `TypeId` of `self`.

### impl Borrow for T

where
- `T: ?Sized`

Functions:
- `fn borrow(&self) -> &T` - Immutably borrows from an owned value.

### impl BorrowMut for T

where
- `T: ?Sized`

Functions:
- `fn borrow_mut(&mut self) -> &mut T` - Mutably borrows from an owned value.

### impl From for T

Functions:
- `fn from(t: T) -> T` - Returns the argument unchanged.

### impl Into for T

where
- `U: From`

Functions:
- `fn into(self) -> U` - Calls `U::from(self)`.

### impl TryFrom for T

where
- `U: Into`

Associated Types:
- `type Error = Infallible` - The type returned in the event of a conversion error.

Functions:
- `fn try_from(value: U) -> Result` - Performs the conversion.

### impl TryInto for T

where
- `U: TryFrom`

Associated Types:
- `type Error` - The type returned in the event of a conversion error.

Functions:
- `fn try_into(self) -> Result` - Performs the conversion.
