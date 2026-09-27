# TagFence

`markex::tag::TagFence` — `markex` 0.3.0

A delimiter configuration used to parse tagged elements.

## Definition

```rust
pub struct TagFence {
    pub name: &'static str,
    pub open_delim: &'static str,
    pub close_delim: &'static str,
    pub close_delim_alts: Option<&'static [&'static str]>,
    pub closing_tag_prefix: &'static str,
    pub self_closing_suffix: &'static str,
}
```

## Fields

- `name: &'static str` — A descriptive name for the fence configuration.
- `open_delim: &'static str` — The delimiter that starts an opening or closing tag.
- `close_delim: &'static str` — The delimiter that ends an opening or closing tag.
- `close_delim_alts: Option<&'static [&'static str]>` — Optional fallback delimiters accepted in addition to `close_delim`.
- `closing_tag_prefix: &'static str` — The prefix between the opening delimiter and a closing tag name.
- `self_closing_suffix: &'static str` — The suffix between tag attributes and the closing delimiter of a self-closing tag.

## Trait Implementations

### `Clone`

Implemented for `TagFence`.

```rust
fn clone(&self) -> TagFence;
fn clone_from(&mut self, source: &Self);
```

`clone` returns a duplicate of the value. `clone_from` performs copy-assignment from `source`.

### `Copy`

Implemented for `TagFence`.

### `Debug`

Implemented for `TagFence`.

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

Formats the value using the given formatter.

### `Eq`

Implemented for `TagFence`.

### `PartialEq`

Implemented for `TagFence`.

```rust
fn eq(&self, other: &TagFence) -> bool;
fn ne(&self, other: &TagFence) -> bool;
```

`eq` implements the equality operator (`==`); `ne` implements the inequality operator (`!=`).

### `StructuralPartialEq`

Implemented for `TagFence`.

## Auto Trait Implementations

`TagFence` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### `Any`

Implemented for `T` where `T: 'static + ?Sized`.

```rust
fn type_id(&self) -> TypeId;
```

Gets the `TypeId` of `self`.

### `Borrow<T>`

Implemented for `T` where `T: ?Sized`.

```rust
fn borrow(&self) -> &T;
```

Immutably borrows from an owned value.

### `BorrowMut<T>`

Implemented for `T` where `T: ?Sized`.

```rust
fn borrow_mut(&mut self) -> &mut T;
```

Mutably borrows from an owned value.

### `CloneToUninit`

Implemented for `T` where `T: Clone`.

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

This is a nightly-only experimental API. Performs copy-assignment from `self` to `dest`.

### `From<T>`

Implemented for `T`.

```rust
fn from(t: T) -> T;
```

Returns the argument unchanged.

### `Into<U>`

Implemented for `T` where `U: From<T>`.

```rust
fn into(self) -> U;
```

Calls `U::from(self)`.

### `ToOwned`

Implemented for `T` where `T: Clone`.

```rust
type Owned = T;

fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

`to_owned` creates owned data from borrowed data, usually by cloning. `clone_into` uses borrowed data to replace owned data, usually by cloning.

### `TryFrom<U>`

Implemented for `T` where `U: Into<T>`.

```rust
type Error = Infallible;

fn try_from(value: U) -> Result<T, Infallible>;
```

Performs the conversion.

### `TryInto<U>`

Implemented for `T` where `U: TryFrom<T>`.

```rust
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>;
```

Performs the conversion.
