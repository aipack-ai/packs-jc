# Struct TagOptions

Configures optional behavior for tag extraction APIs.

## Struct Definition

```js
pub struct TagOptions {
    pub fence: Option<TagFence>,
    pub auto_close: bool,
    pub capture_text: bool,
}
```

## Fields

- `fence`: `Option<TagFence>` - The delimiter configuration, or XML-compatible parsing when omitted.
- `auto_close`: `bool` - Whether to synthesize a close before a subsequent configured opening tag.
- `capture_text`: `bool` - Whether to include text fragments outside extracted tags.

## Implementations

### impl TagOptions

- `pub fn with_capture_text(self, capture_text: bool) -> Self` - Sets whether extraction includes text fragments outside extracted tags.
- `pub fn with_fence(self, fence: TagFence) -> Self` - Sets the delimiter configuration used for tag extraction.
- `pub fn with_auto_close(self, auto_close: bool) -> Self` - Sets whether extraction may synthesize closing boundaries.

## Trait Implementations

### impl Clone for TagOptions

- `fn clone(&self) -> TagOptions` - Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` - Performs copy-assignment from `source`.

### impl Debug for TagOptions

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` - Formats the value using the given formatter.

### impl Default for TagOptions

- `fn default() -> TagOptions` - Returns the default value for a type.

### impl From<Option<TagOptions>> for TagOptions

- `fn from(options: Option<TagOptions>) -> Self` - Converts to this type from the input type.

### impl PartialEq for TagOptions

- `fn eq(&self, other: &TagOptions) -> bool` - Tests for `self` and `other` values to be equal, and is used by `==`.
- `fn ne(&self, other: &Rhs) -> bool` - Tests for `!=`.

### impl Copy for TagOptions
### impl Eq for TagOptions
### impl StructuralPartialEq for TagOptions

## Auto Trait Implementations

- `impl Freeze for TagOptions`
- `impl RefUnwindSafe for TagOptions`
- `impl Send for TagOptions`
- `impl Sync for TagOptions`
- `impl Unpin for TagOptions`
- `impl UnsafeUnpin for TagOptions`
- `impl UnwindSafe for TagOptions`

## Blanket Implementations

### impl Any for T where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId` - Gets the `TypeId` of `self`.

### impl Borrow for T where T: ?Sized

- `fn borrow(&self) -> &T` - Immutably borrows from an owned value.

### impl BorrowMut for T where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T` - Mutably borrows from an owned value.

### impl CloneToUninit for T where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)` - Performs copy-assignment from `self` to `dest`.

### impl From for T

- `fn from(t: T) -> T` - Returns the argument unchanged.

### impl Into for T where U: From

- `fn into(self) -> U` - Calls `U::from(self)`.

### impl ToOwned for T where T: Clone

- `type Owned = T` - The resulting type after obtaining ownership.
- `fn to_owned(&self) -> T` - Creates owned data from borrowed data, usually by cloning.
- `fn clone_into(&self, target: &mut T)` - Uses borrowed data to replace owned data, usually by cloning.

### impl TryFrom for T where U: Into

- `type Error = Infallible` - The type returned in the event of a conversion error.
- `fn try_from(value: U) -> Result` - Performs the conversion.

### impl TryInto for T where U: TryFrom

- `type Error = TryFrom::Error` - The type returned in the event of a conversion error.
- `fn try_into(self) -> Result` - Performs the conversion.
