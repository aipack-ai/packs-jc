# Contract

Enum in `schemars::generate`

Source: [src/schemars/generate.rs.html#197-200](../../src/schemars/generate.rs.html#197-200)

```rust
#[non_exhaustive]
pub enum Contract {
    Deserialize,
    Serialize,
}
```

Expand description

A setting to specify whether generated schemas should describe how types are serialized or *de*serialized.

This enum is marked as `#[non_exhaustive]` to reserve space to introduce further variants in future.

## Variants (Non-exhaustive)

This enum is marked as non-exhaustive. Non-exhaustive enums could have additional variants added in future. Therefore, when matching against variants of non-exhaustive enums, an extra wildcard arm must be added to account for any future variants.

- **Deserialize**
- **Serialize**

## Implementations

### impl Contract

- `pub fn is_deserialize(&self) -> bool` — Returns true if `self` is the `Deserialize` contract.
- `pub fn is_serialize(&self) -> bool` — Returns true if `self` is the `Serialize` contract.

## Trait Implementations

### impl Clone for Contract

- `fn clone(&self) -> Contract` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### impl Debug for Contract

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` — Formats the value using the given formatter.

### impl Eq for Contract

### impl Ord for Contract

- `fn cmp(&self, other: &Contract) -> Ordering` — This method returns an `Ordering` between `self` and `other`.
- `fn max(self, other: Self) -> Self` — Compares and returns the maximum of two values.
- `fn min(self, other: Self) -> Self` — Compares and returns the minimum of two values.
- `fn clamp(self, min: Self, max: Self) -> Self` — Restrict a value to a certain interval.

### impl PartialEq for Contract

- `fn eq(&self, other: &Contract) -> bool` — Tests for `self` and `other` values to be equal.
- `fn ne(&self, other: &Rhs) -> bool` — Tests for `!=`.

### impl PartialOrd for Contract

- `fn partial_cmp(&self, other: &Contract) -> Option<Ordering>` — This method returns an ordering between `self` and `other` values if one exists.
- `fn lt(&self, other: &Rhs) -> bool` — Tests less than.
- `fn le(&self, other: &Rhs) -> bool` — Tests less than or equal to.
- `fn gt(&self, other: &Rhs) -> bool` — Tests greater than.
- `fn ge(&self, other: &Rhs) -> bool` — Tests greater than or equal to.

### impl StructuralPartialEq for Contract

## Auto Trait Implementations

- `impl Freeze for Contract`
- `impl RefUnwindSafe for Contract`
- `impl Send for Contract`
- `impl Sync for Contract`
- `impl Unpin for Contract`
- `impl UnsafeUnpin for Contract`
- `impl UnwindSafe for Contract`

## Blanket Implementations

### impl Any for T
where T: 'static + ?Sized

- `fn type_id(&self) -> TypeId` — Gets the `TypeId` of `self`.

### impl Borrow for T
where T: ?Sized

- `fn borrow(&self) -> &T` — Immutably borrows from an owned value.

### impl BorrowMut for T
where T: ?Sized

- `fn borrow_mut(&mut self) -> &mut T` — Mutably borrows from an owned value.

### impl CloneToUninit for T
where T: Clone

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)` — Performs copy-assignment from `self` to `dest`.

### impl Comparable for Q
where Q: Ord + ?Sized, K: Borrow<Q> + ?Sized

- `fn compare(&self, key: &K) -> Ordering` — Compare self to `key` and return their ordering.

### impl DynClone for T
where T: Clone

- `fn __clone_box(&self, _: Private) -> *mut ()`

### impl Equivalent for Q (hashbrown)
where Q: Eq + ?Sized, K: Borrow<Q> + ?Sized

- `fn equivalent(&self, key: &K) -> bool` — Checks if this value is equivalent to the given key.

### impl Equivalent for Q (equivalent crate)
where Q: Eq + ?Sized, K: Borrow<Q> + ?Sized

- `fn equivalent(&self, key: &K) -> bool` — Compare self to `key` and return `true` if they are equal.

### impl ErasedDestructor for T
where T: 'static

### impl From for T

- `fn from(t: T) -> T` — Returns the argument unchanged.

### impl Into for T
where U: From<T>

- `fn into(self) -> U` — Calls `U::from(self)`.

### impl IntoEither for T

- `fn into_either(self, into_left: bool) -> Either` — Converts `self` into a `Left` variant of `Either` if `into_left` is `true`, otherwise `Right`.
- `fn into_either_with(self, into_left: F) -> Either` — Converts `self` into a `Left` variant of `Either` if `into_left(&self)` returns `true`, otherwise `Right`.

### impl MaybeSendSync for T

### impl ToOwned for T
where T: Clone

- `type Owned = T`
- `fn to_owned(&self) -> T` — Creates owned data from borrowed data, usually by cloning.
- `fn clone_into(&self, target: &mut T)` — Uses borrowed data to replace owned data, usually by cloning.

### impl TryFrom for T
where U: Into<T>

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Self::Error>` — Performs the conversion.

### impl TryInto for T
where U: TryFrom<T>

- `type Error = U::Error`
- `fn try_into(self) -> Result<U, Self::Error>` — Performs the conversion.
