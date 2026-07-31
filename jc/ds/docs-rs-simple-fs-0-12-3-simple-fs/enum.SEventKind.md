# Enum `SEventKind`

Crate: [`simple_fs`](../simple_fs/index.html) 0.12.3

[Source](../src/simple_fs/watch.rs.html#27-32)

```text
pub enum SEventKind {
    Create,
    Modify,
    Remove,
    Other,
}
```

Simplified event kind.

## Variants

### `Create`

Represents a file-system creation event.

### `Modify`

Represents a file-system modification event.

### `Remove`

Represents a file-system removal event.

### `Other`

Represents another event kind that does not match the supported categories.

## Trait Implementations

### `Clone`

Implements [`Clone`](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html) for `SEventKind`.

#### `fn clone(&self) -> SEventKind`

Returns a duplicate of the value.

#### `fn clone_from(&mut self, source: &Self)`

Performs copy-assignment from `source`.

### `Debug`

Implements [`Debug`](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html) for `SEventKind`.

#### `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

Formats the value using the given formatter.

### `Eq`

Implements [`Eq`](https://doc.rust-lang.org/nightly/core/cmp/trait.Eq.html) for `SEventKind`.

### `From<EventKind>`

Implements [`From`](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for conversion from [`notify_types::event::EventKind`](https://docs.rs/notify-types/2.1.0/x86_64-unknown-linux-gnu/notify_types/event/enum.EventKind.html) to `SEventKind`.

#### `fn from(val: EventKind) -> SEventKind`

Converts an `EventKind` value into an `SEventKind`.

### `Hash`

Implements [`Hash`](https://doc.rust-lang.org/nightly/core/hash/trait.Hash.html) for `SEventKind`.

#### `fn hash<__H: Hasher>(&self, state: &mut __H)`

Feeds this value into the given hasher.

#### `fn hash_slice<H>(data: &[Self], state: &mut H)`

where:

- `H: Hasher`
- `Self: Sized`

Feeds a slice of this type into the given hasher.

### `PartialEq`

Implements [`PartialEq`](https://doc.rust-lang.org/nightly/core/cmp/trait.PartialEq.html) for `SEventKind`.

#### `fn eq(&self, other: &SEventKind) -> bool`

Tests whether `self` and `other` are equal.

#### `fn ne(&self, other: &SEventKind) -> bool`

Tests whether `self` and `other` are not equal.

### `StructuralPartialEq`

Implements [`StructuralPartialEq`](https://doc.rust-lang.org/nightly/core/marker/trait.StructuralPartialEq.html) for `SEventKind`.

## Auto Trait Implementations

`SEventKind` automatically implements the following traits:

- [`Freeze`](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html)
- [`RefUnwindSafe`](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- [`Send`](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html)
- [`Sync`](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html)
- [`Unpin`](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html)
- [`UnsafeUnpin`](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html)
- [`UnwindSafe`](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html)

## Blanket Implementations

### `Any`

Implements [`Any`](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) for `T` where `T: 'static + ?Sized`.

#### `fn type_id(&self) -> TypeId`

Gets the [`TypeId`](https://doc.rust-lang.org/nightly/core/any/struct.TypeId.html) of `self`.

### `Borrow<T>`

Implements [`Borrow`](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html) for `T` where `T: ?Sized`.

#### `fn borrow(&self) -> &T`

Immutably borrows from an owned value.

### `BorrowMut<T>`

Implements [`BorrowMut`](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html) for `T` where `T: ?Sized`.

#### `fn borrow_mut(&mut self) -> &mut T`

Mutably borrows from an owned value.

### `CloneToUninit`

Implements [`CloneToUninit`](https://doc.rust-lang.org/nightly/core/clone/trait.CloneToUninit.html) for `T` where `T: Clone`.

#### `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

Performs copy-assignment from `self` to `dest`.

This is a nightly-only experimental API.

### `From<T>`

Implements [`From<T>`](https://doc.rust-lang.org/nightly/core/convert/trait.From.html) for `T`.

#### `fn from(t: T) -> T`

Returns the argument unchanged.

### `Into<U>`

Implements [`Into<U>`](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html) for `T` where `U: From<T>`.

#### `fn into(self) -> U`

Calls `U::from(self)`.

### `ToOwned`

Implements [`ToOwned`](https://doc.rust-lang.org/nightly/alloc/borrow/trait.ToOwned.html) for `T` where `T: Clone`.

#### Associated type

- `type Owned = T`

The resulting type after obtaining ownership.

#### `fn to_owned(&self) -> T`

Creates owned data from borrowed data, usually by cloning.

#### `fn clone_into(&self, target: &mut T)`

Uses borrowed data to replace owned data, usually by cloning.

### `TryFrom<U>`

Implements [`TryFrom<U>`](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html) for `T` where `U: Into<T>`.

#### Associated type

- `type Error = Infallible`

The type returned in the event of a conversion error.

#### `fn try_from(value: U) -> Result<T, Infallible>`

Performs the conversion.

### `TryInto<U>`

Implements [`TryInto<U>`](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html) for `T` where `U: TryFrom<T>`.

#### Associated type

- `type Error = <U as TryFrom<T>>::Error`

The type returned in the event of a conversion error.

#### `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`

Performs the conversion.
