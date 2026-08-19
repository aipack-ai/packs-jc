# Struct TagElem

[Source](../../src/markex/tag/tag.rs.html#10-18)

```rust
pub struct TagElem {
    pub tag: String,
    pub attrs: Option<HashMap<String, String>>,
    pub content: String,
    pub auto_closed: bool,
}
```

Represents a block defined by start and end tags, like `content`.

## Fields

- [`attrs`](#structfield.attrs)
- [`auto_closed`](#structfield.auto_closed)
- [`content`](#structfield.content)
- [`tag`](#structfield.tag)

## Implementations

[Source](../../src/markex/tag/tag.rs.html#21-31)

### impl [TagElem](struct.TagElem.html)

#### Constructors

- [Source](../../src/markex/tag/tag.rs.html#23-30)
- `pub fn new(name: impl Into<String>, attrs: Option<HashMap<String, String>>, content: impl Into<String>) -> Self`

Creates a new `TagElem` with the specified name, optional attributes, and content.

## Trait Implementations

### impl Clone for [TagElem](struct.TagElem.html)

- `fn clone(&self) -> TagElem`
- `fn clone_from(&mut self, source: &Self)`

### impl Debug for [TagElem](struct.TagElem.html)

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### impl Default for [TagElem](struct.TagElem.html)

- `fn default() -> TagElem`

### impl From<TagElemRef<'_>> for [TagElem](struct.TagElem.html)

- `fn from(tag_ref: TagElemRef<'_>) -> Self`

### impl PartialEq for [TagElem](struct.TagElem.html)

- `fn eq(&self, other: &TagElem) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### impl Serialize for [TagElem](struct.TagElem.html)

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error> where __S: Serializer`

### impl StructuralPartialEq for [TagElem](struct.TagElem.html)

## Auto Trait Implementations

- impl Freeze for [TagElem](struct.TagElem.html)
- impl RefUnwindSafe for [TagElem](struct.TagElem.html)
- impl Send for [TagElem](struct.TagElem.html)
- impl Sync for [TagElem](struct.TagElem.html)
- impl Unpin for [TagElem](struct.TagElem.html)
- impl UnsafeUnpin for [TagElem](struct.TagElem.html)
- impl UnwindSafe for [TagElem](struct.TagElem.html)

## Blanket Implementations

### impl Any for T

- `fn type_id(&self) -> TypeId`

### impl Borrow for T

- `fn borrow(&self) -> &T`

### impl BorrowMut for T

- `fn borrow_mut(&mut self) -> &mut T`

### impl CloneToUninit for T

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### impl From for T

- `fn from(t: T) -> T`

### impl Into for T

- `fn into(self) -> U`

### impl ToOwned for T

- type `Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### impl TryFrom for T

- type `Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>`

### impl TryInto for T

- type `Error = TryFrom::Error`
- `fn try_into(self) -> Result<T, Self::Error>`
