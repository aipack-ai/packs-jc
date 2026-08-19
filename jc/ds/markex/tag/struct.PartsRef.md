# Struct PartsRef

Result of extracting data and parts from input as references.

```js
pub struct PartsRef<'a> { /* private fields */ }
```

## Methods

- [`parts`](#method.parts)
- [`into_parts`](#method.into_parts)
- [`tag_names`](#method.tag_names)
- [`iter`](#method.iter)
- [`tag_elems`](#method.tag_elems)
- [`texts`](#method.texts)

### impl<'a> PartsRef<'a>

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#10-12)
  ```js
  pub fn parts(&self) -> &Vec<PartRef<'a>>
  ```
- `-` [Source](../../src/markex/tag/parts_ref.rs.html#14-16)
  ```js
  pub fn into_parts(self) -> Vec<PartRef<'a>>
  ```
- `-` [Source](../../src/markex/tag/parts_ref.rs.html#19-29)
  ```js
  pub fn tag_names(&self) -> Vec<&str>
  ```
  Returns the unique tag names found in the parts.

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#31-33)
  ```js
  pub fn iter(&self) -> Iter<'_, PartRef<'a>>
  ```
- `-` [Source](../../src/markex/tag/parts_ref.rs.html#36-44)
  ```js
  pub fn tag_elems(&self) -> Vec<&TagElemRef<'a>>
  ```
  Returns references to all `TagElemRef` items in the parsed data.

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#47-55)
  ```js
  pub fn texts(&self) -> Vec<&'a str>
  ```
  Returns all text strings in the parsed data.

## Trait Implementations

### impl<'a> Debug for PartsRef<'a>

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#4)
  ```js
  fn fmt(&self, f: &mut Formatter<'_>) -> Result
  ```
  Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

### impl<'a> Default for PartsRef<'a>

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#4)
  ```js
  fn default() -> PartsRef<'a>
  ```
  Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

### impl<'a> From<PartsRef<'a>> for Vec<PartRef<'a>>

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#79-81)
  ```js
  fn from(val: PartsRef<'a>) -> Self
  ```
  Converts to this type from the input type.

### impl<'a, 'b> IntoIterator for &'b PartsRef<'a>

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#68)
  ```js
  type Item = &'b PartRef<'a>
  ```
  The type of the elements being iterated over.

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#69)
  ```js
  type IntoIter = Iter<'b, PartRef<'a>>
  ```
  Which kind of iterator are we turning this into?

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#71-73)
  ```js
  fn into_iter(self) -> Self::IntoIter
  ```
  Creates an iterator from a value. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#tymethod.into_iter)

### impl<'a> IntoIterator for PartsRef<'a>

- `-` [Source](../../src/markex::tag::parts_ref.rs.html#59)
  ```js
  type Item = PartRef<'a>
  ```
  The type of the elements being iterated over.

- `-` [Source](../../src/markex::tag::parts_ref.rs.html#60)
  ```js
  type IntoIter = IntoIter<<PartsRef<'a> as IntoIterator>::Item>
  ```
  Which kind of iterator are we turning this into?

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#62-64)
  ```js
  fn into_iter(self) -> Self::IntoIter
  ```
  Creates an iterator from a value. [Read more](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#tymethod.into_iter)

### impl<'a> PartialEq for PartsRef<'a>

- `-` [Source](../../src/markex/tag/parts_ref.rs.html#4)
  ```js
  fn eq(&self, other: &PartsRef<'a>) -> bool
  ```
  Tests for `self` and `other` values to be equal, and is used by `==`.

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/cmp.rs.html#263)
  ```js
  fn ne(&self, other: &Rhs) -> bool
  ```
  Tests for `!=`. The default implementation is almost always sufficient.

### impl<'a> StructuralPartialEq for PartsRef<'a>

## Auto Trait Implementations

- impl<'a> Freeze for PartsRef<'a>
- impl<'a> RefUnwindSafe for PartsRef<'a>
- impl<'a> Send for PartsRef<'a>
- impl<'a> Sync for PartsRef<'a>
- impl<'a> Unpin for PartsRef<'a>
- impl<'a> UnsafeUnpin for PartsRef<'a>
- impl<'a> UnwindSafe for PartsRef<'a>

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/any.rs.html#142)
  ```js
  fn type_id(&self) -> TypeId
  ```
  Gets the `TypeId` of `self`.

### impl Borrow for T

where T: ?Sized

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#214)
  ```js
  fn borrow(&self) -> &T
  ```
  Immutably borrows from an owned value.

### impl BorrowMut for T

where T: ?Sized

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/borrow.rs.html#222)
  ```js
  fn borrow_mut(&mut self) -> &mut T
  ```
  Mutably borrows from an owned value.

### impl From for T

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#789)
  ```js
  fn from(t: T) -> T
  ```
  Returns the argument unchanged.

### impl Into for T

where U: From

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#778)
  ```js
  fn into(self) -> U
  ```
  Calls `U::from(self)`.

### impl TryFrom for T

where U: Into

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#832)
  ```js
  type Error = Infallible
  ```
  The type returned in the event of a conversion error.

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#835)
  ```js
  fn try_from(value: U) -> Result<T, TryFrom::Error>
  ```
  Performs the conversion.

### impl TryInto for T

where U: TryFrom

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#816)
  ```js
  type Error = TryFrom::Error
  ```
  The type returned in the event of a conversion error.

- `-` [Source](https://doc.rust-lang.org/1.97.1/src/core/convert/mod.rs.html#819)
  ```js
  fn try_into(self) -> Result<T, TryFrom::Error>
  ```
  Performs the conversion.
