# Part

`markex::tag::Part` is an enum representing a part of parsed content: either plain text or a tag element.

```rust
pub enum Part {
    Text(String),
    TagElem(TagElem),
}
```

## Variants

- `Text(String)` — Plain text content outside of any tag.
- `TagElem(TagElem)` — A tag element with its content.

## Trait Implementations

### `Clone`

```rust
fn clone(&self) -> Part;
fn clone_from(&mut self, source: &Self);
```

Returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Debug`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

### `From<PartRef<'a>>`

```rust
fn from(part_ref: PartRef<'a>) -> Part;
```

Converts a `PartRef` into a `Part`.

### `PartialEq`

```rust
fn eq(&self, other: &Part) -> bool;
fn ne(&self, other: &Part) -> bool;
```

Compares two values for equality or inequality.

### `Serialize`

```rust
fn serialize<__S>(
    &self,
    __serializer: __S,
) -> Result<__S::Ok, __S::Error>
where
    __S: Serializer;
```

Serializes this value into the given Serde serializer.

### `StructuralPartialEq`

`Part` implements `StructuralPartialEq`.

## Auto Trait Implementations

`Part` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

For `T: 'static + ?Sized`:

```rust
fn type_id(&self) -> TypeId;
```

Returns the `TypeId` of the value.

### `Borrow<T>`

For `T: ?Sized`:

```rust
fn borrow(&self) -> &T;
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

For `T: ?Sized`:

```rust
fn borrow_mut(&mut self) -> &mut T;
```

Mutably borrows from an owned value.

### `CloneToUninit`

For `T: Clone`:

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

Nightly-only experimental API. Performs copy-assignment from `self` to `dest`.

### `From<T> for T`

```rust
fn from(t: T) -> T;
```

Returns the argument unchanged.

### `Into<U>`

For `U: From<T>`:

```rust
fn into(self) -> U;
```

Converts `self` using `U::from(self)`.

### `ToOwned`

For `T: Clone`:

```rust
type Owned = T;

fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

Creates owned data from borrowed data, or uses borrowed data to replace owned data.

### `TryFrom<U> for T`

For `U: Into<T>`:

```rust
type Error = Infallible;

fn try_from(value: U) -> Result<T, Self::Error>;
```

Performs the conversion.

### `TryInto<U>`

For `U: TryFrom<T>`:

```rust
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, Self::Error>;
```

Performs the conversion.
