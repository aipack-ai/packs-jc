# ReplacePrefixItems

`schemars::transform` - [Source](../../src/schemars/transform.rs.html#392)

## Struct Definition

```rust
#[non_exhaustive]
pub struct ReplacePrefixItems;
```

## Description

Rename the `prefixItems` schema property to `items`.

This also applies to subschemas.

If the schema contains both `prefixItems` and `items`, then this additionally renames `items` to `additionalItems`.

This is useful for versions of JSON Schema (e.g. Draft 7) that do not support the `prefixItems` property.

## Trait Implementations

### `impl Clone for ReplacePrefixItems`

[Source](../../src/schemars/transform.rs.html#390)

```rust
fn clone(&self) -> ReplacePrefixItems;
fn clone_from(&mut self, source: &Self);
```

### `impl Debug for ReplacePrefixItems`

[Source](../../src/schemars/transform.rs.html#390)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

### `impl Default for ReplacePrefixItems`

[Source](../../src/schemars/transform.rs.html#390)

```rust
fn default() -> ReplacePrefixItems;
```

### `impl Transform for ReplacePrefixItems`

[Source](../../src/schemars/transform.rs.html#394-406)

```rust
fn transform(&mut self, schema: &mut Schema);
```

## Auto Trait Implementations

- `impl Freeze for ReplacePrefixItems`
- `impl RefUnwindSafe for ReplacePrefixItems`
- `impl Send for ReplacePrefixItems`
- `impl Sync for ReplacePrefixItems`
- `impl Unpin for ReplacePrefixItems`
- `impl UnsafeUnpin for ReplacePrefixItems`
- `impl UnwindSafe for ReplacePrefixItems`

## Blanket Implementations

### `impl Any for T`
where T: 'static + ?Sized

```rust
fn type_id(&self) -> TypeId;
```

### `impl Borrow for T`
where T: ?Sized

```rust
fn borrow(&self) -> &T;
```

### `impl BorrowMut for T`
where T: ?Sized

```rust
fn borrow_mut(&mut self) -> &mut T;
```

### `impl CloneToUninit for T`
where T: Clone

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

### `impl DynClone for T`
where T: Clone

```rust
fn __clone_box(&self, _: Private) -> *mut ();
```

### `impl ErasedDestructor for T`
where T: 'static

*(no methods)*

### `impl From for T`

```rust
fn from(t: T) -> T;
```

### `impl GenTransform for T`
where T: Transform + Clone + Any + Send

```rust
fn _as_any(&self) -> &(dyn Any + 'static);
fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static);
fn _into_any(self: Box<Self>) -> Box<dyn Any>;
```

### `impl Into for T`
where U: From<T>

```rust
fn into(self) -> U;
```

### `impl IntoEither for T`

```rust
fn into_either(self, into_left: bool) -> Either;
fn into_either_with(self, into_left: F) -> Either
where F: FnOnce(&Self) -> bool;
```

### `impl MaybeSendSync for T`

*(no methods)*

### `impl ToOwned for T`
where T: Clone

```rust
type Owned = T;
fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

### `impl TryFrom for T`
where U: Into<T>

```rust
type Error = Infallible;
fn try_from(value: U) -> Result<T, <T as TryFrom<U>>::Error>;
```

### `impl TryInto for T`
where U: TryFrom<T>

```rust
type Error = <U as TryFrom<T>>::Error;
fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>;
```
