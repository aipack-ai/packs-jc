# Enum Part

Represents a type from `markex::tag`.

## Overview

Represents a part of parsed content, either plain text or a tag element.

```rust
pub enum Part {
    Text(String),
    TagElem(TagElem),
}
```

## Variants

- `Text(String)`: Plain text content outside of any tag.
- `TagElem(TagElem)`: A tag element with its content.

## Trait Implementations

### impl Clone for Part

- `fn clone(&self) -> Part`: Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)`: Performs copy-assignment from `source`.

### impl Debug for Part

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`: Formats the value using the given formatter.

### impl<'a> From<PartRef<'a>> for Part

- `fn from(part_ref: PartRef<'a>) -> Self`: Converts to this type from the input type.

### impl PartialEq for Part

- `fn eq(&self, other: &Part) -> bool`: Tests for `self` and `other` values to be equal, and is used by `==`.
- `fn ne(&self, other: &Rhs) -> bool`: Tests for `!=`.

### impl Serialize for Part

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where __S: Serializer: Serialize this value into the given Serde serializer.

### impl StructuralPartialEq for Part

## Auto Trait Implementations

- `impl Freeze for Part`
- `impl RefUnwindSafe for Part`
- `impl Send for Part`
- `impl Sync for Part`
- `impl Unpin for Part`
- `impl UnsafeUnpin for Part`
- `impl UnwindSafe for Part`

## Blanket Implementations

### impl Any for T

where `T: 'static + ?Sized`

- `fn type_id(&self) -> TypeId`: Gets the `TypeId` of `self`.

### impl Borrow<T> for T

where `T: ?Sized`

- `fn borrow(&self) -> &T`: Immutably borrows from an owned value.

### impl BorrowMut<T> for T

where `T: ?Sized`

- `fn borrow_mut(&mut self) -> &mut T`: Mutably borrows from an owned value.

### impl CloneToUninit for T

where `T: Clone`

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`: Performs copy-assignment from `self` to `dest`.

### impl From<T> for T

- `fn from(t: T) -> T`: Returns the argument unchanged.

### impl Into<U> for T

where `U: From`

- `fn into(self) -> U`: Calls `U::from(self)`.

### impl ToOwned for T

where `T: Clone`

- `type Owned = T`: The resulting type after obtaining ownership.
- `fn to_owned(&self) -> T`: Creates owned data from borrowed data, usually by cloning.
- `fn clone_into(&self, target: &mut T)`: Uses borrowed data to replace owned data, usually by cloning.

### impl TryFrom<U> for T

where `U: Into`

- `type Error = Infallible`: The type returned in the event of a conversion error.
- `fn try_from(value: U) -> Result<T, Error>`: Performs the conversion.

### impl TryInto<U> for T

where `U: TryFrom`

- `type Error = TryFrom::Error`: The type returned in the event of a conversion error.
- `fn try_into(self) -> Result<T, Error>`: Performs the conversion.
