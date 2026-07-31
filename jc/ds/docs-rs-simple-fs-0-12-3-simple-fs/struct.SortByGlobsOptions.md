# `SortByGlobsOptions`

**Crate:** [`simple_fs`](../simple_fs/index.html) 0.12.3

**Source:** [`simple_fs/list/sort.rs`](../src/simple_fs/list/sort.rs.html#8-11)

## Definition

```text
pub struct SortByGlobsOptions {
    pub end_weighted: bool,
    pub no_match_position: NoMatchPosition,
}
```

## Fields

- [`end_weighted`](#end_weighted): `bool`
- [`no_match_position`](#no_match_position): [`NoMatchPosition`](enum.NoMatchPosition.html), which specifies the position of items that do not match a glob.

### `end_weighted`

```text
pub end_weighted: bool
```

Controls whether the end of a matching path receives additional weighting during sorting.

### `no_match_position`

```text
pub no_match_position: NoMatchPosition
```

Specifies where non-matching items are placed in the sorted result.

## Trait Implementations

### `Clone`

Implements [`Clone`](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html) for `SortByGlobsOptions`.

- `fn clone(&self) -> SortByGlobsOptions`
  - Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self) -> ()`
  - Performs copy-assignment from `source`.

### `Copy`

Implements [`Copy`](https://doc.rust-lang.org/nightly/core/marker/trait.Copy.html) for `SortByGlobsOptions`.

### `Debug`

Implements [`Debug`](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for `SortByGlobsOptions`.

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
  - Formats the value using the given formatter.

### `Default`

Implements [`Default`](https://doc.rust-lang.org/nightly/core/default/trait.Default) for `SortByGlobsOptions`.

- `fn default() -> Self`
  - Returns the default value:
    - `end_weighted: false`
    - `no_match_position: NoMatchPosition::Last` (as defined by the crate)

### `Eq`

Implements [`Eq`](https://doc.rust-lang.org/nightly/core/cmp/trait.Eq.html) for `SortByGlobsOptions`.

### `From<bool>`

Implements [`From<bool>`](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for `SortByGlobsOptions`.

- `fn from(end_weighted: bool) -> Self`
  - Creates options using the supplied `end_weighted` value.

### `PartialEq`

Implements [`PartialEq`](https://doc.rust-lang.org/nightly/core/cmp/trait.PartialEq.html) for `SortByGlobsOptions`.

- `fn eq(&self, other: &SortByGlobsOptions) -> bool`
  - Tests whether `self` and `other` are equal.
- `fn ne(&self, other: &SortByGlobsOptions) -> bool`
  - Tests whether `self` and `other` are not equal.

### `StructuralPartialEq`

Implements `StructuralPartialEq` for `SortByGlobsOptions`.

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

For `T` where `T: 'static + ?Sized`.

- `fn type_id(&self) -> TypeId`
  - Gets the `TypeId` of `self`.

### `Borrow<T>`

For `T` where `T: ?Sized`.

- `fn borrow(&self) -> &T`
  - Immutably borrows from an owned value.

### `BorrowMut<T>`

For `T` where `T: ?Sized`.

- `fn borrow_mut(&mut self) -> &mut T`
  - Mutably borrows from an owned value.

### `CloneToUninit`

For `T` where `T: Clone`.

- `unsafe fn clone_to_uninit(&self, dest: *mut u8) -> ()`
  - Copies `self` into the uninitialized destination.
  - This is a nightly-only experimental API.

### `From<T>`

For `T`.

- `fn from(t: T) -> T`
  - Returns the argument unchanged.

### `Into<U>`

For `T` where `U: From<T>`.

- `fn into(self) -> U`
  - Calls `U::from(self)`.

### `ToOwned`

For `T` where `T: Clone`.

- Associated type: `type Owned = T`
- `fn to_owned(&self) -> T`
  - Creates owned data from borrowed data.
- `fn clone_into(&self, target: &mut T) -> ()`
  - Uses borrowed data to replace owned data.

### `TryFrom<U>`

For `T` where `U: Into<T>`.

- Associated type: `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>`
  - Performs the conversion.

### `TryInto<U>`

For `T` where `U: TryFrom<T>`.

- Associated type: `type Error = <U as TryFrom<T>>::Error`
- `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
  - Performs the conversion.
