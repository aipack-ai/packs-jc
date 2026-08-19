# TagElemRef in markex::tag

## Fields

- [attrs](#structfield.attrs)
- [auto_closed](#structfield.auto_closed)
- [content](#structfield.content)
- [end_idx](#structfield.end_idx)
- [start_idx](#structfield.start_idx)
- [tag_name](#structfield.tag_name)

## Trait Implementations

- [Debug](#impl-Debug-for-TagElemRef-1)
- [From](#impl-From-for-TagElem)
- [PartialEq](#impl-PartialEq-for-TagElemRef)
- [StructuralPartialEq](#impl-StructuralPartialEq-for-TagElemRef)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-TagElemRef)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-TagElemRef)
- [Send](#impl-Send-for-TagElemRef)
- [Sync](#impl-Sync-for-TagElemRef)
- [Unpin](#impl-Unpin-for-TagElemRef)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-TagElemRef)
- [UnwindSafe](#impl-UnwindSafe-for-TagElemRef)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [Borrow](#impl-Borrow-for-T)
- [BorrowMut](#impl-BorrowMut-for-T)
- [From](#impl-From-for-T)
- [Into](#impl-Into-for-T)
- [TryFrom](#impl-TryFrom-for-T)
- [TryInto](#impl-TryInto-for-T)

# Struct TagElemRef

```js
pub struct TagElemRef<'a> {
    pub tag_name: &'a str,
    pub attrs: Option<HashMap<&'a str, &'a str>>,
    pub content: &'a str,
    pub auto_closed: bool,
    pub start_idx: usize,
    pub end_idx: usize,
}
```

Represents a segment of text identified by start and end tags, potentially including parameters in the start marker.

Lifetimes ensure that all string slices (`tag_name`, `attrs`, `content`) are valid references to the original input string slice provided to the `TagElemRefIterator`.

## Fields

### tag_name

```js
pub tag_name: &'a str
```

The name of the tag (e.g., “SOME_MARKER”).

### attrs

```js
pub attrs: Option<HashMap<&'a str, &'a str>>
```

Optional attributes map.

### content

```js
pub content: &'a str
```

The content string between the opening and closing tags.

### auto_closed

```js
pub auto_closed: bool
```

Whether the closing boundary was synthesized by the parser.

### start_idx

```js
pub start_idx: usize
```

The byte index of the opening ‘<’ of the start tag in the original string.

### end_idx

```js
pub end_idx: usize
```

The byte index of the closing ‘>’ of the end tag in the original string.

## Trait Implementations

### impl<'a> Debug for TagElemRef<'a>

```js
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### impl From<TagElemRef<'_>> for TagElem

```js
fn from(tag_ref: TagElemRef<'_>) -> Self
```

Converts to this type from the input type.

### impl<'a> PartialEq for TagElemRef<'a>

```js
fn eq(&self, other: &TagElemRef<'a>) -> bool
```

Tests for `self` and `other` values to be equal, and is used by `==`.

```js
fn ne(&self, other: &Rhs) -> bool
```

Tests for `!=`. The default implementation is almost always sufficient, and should not be overridden without very good reason.

### impl<'a> StructuralPartialEq for TagElemRef<'a>

## Auto Trait Implementations

### impl<'a> Freeze for TagElemRef<'a>

### impl<'a> RefUnwindSafe for TagElemRef<'a>

### impl<'a> Send for TagElemRef<'a>

### impl<'a> Sync for TagElemRef<'a>

### impl<'a> Unpin for TagElemRef<'a>

### impl<'a> UnsafeUnpin for TagElemRef<'a>

### impl<'a> UnwindSafe for TagElemRef<'a>

## Blanket Implementations

### impl Any for T

```js
fn type_id(&self) -> TypeId
```

Gets the `TypeId` of `self`.

### impl Borrow for T

```js
fn borrow(&self) -> &T
```

Immutably borrows from an owned value.

### impl BorrowMut for T

```js
fn borrow_mut(&mut self) -> &mut T
```

Mutably borrows from an owned value.

### impl From for T

```js
fn from(t: T) -> T
```

Returns the argument unchanged.

### impl Into for T

```js
fn into(self) -> U
```

Calls `U::from(self)`.

### impl TryFrom for T

```js
type Error = Infallible
```

```js
fn try_from(value: U) -> Result
```

Performs the conversion.

### impl TryInto for T

```js
type Error = TryFrom::Error
```

```js
fn try_into(self) -> Result
```

Performs the conversion.
