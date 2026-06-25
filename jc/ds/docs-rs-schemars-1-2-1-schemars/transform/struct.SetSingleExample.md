# SetSingleExample

**Module:** [schemars::transform](index.html)

## Description

Removes the `examples` schema property and (if present) sets its first value as the `example` property.

This also applies to subschemas.

This is useful for dialects of JSON Schema (e.g. OpenAPI 3.0) that do not support the `examples` property.

## Struct Definition

```rust
#[non_exhaustive]
pub struct SetSingleExample;
```

## Trait Implementations

### impl Clone for SetSingleExample

```rust
fn clone(&self) -> SetSingleExample
```

```rust
fn clone_from(&mut self, source: &Self)
```

### impl Debug for SetSingleExample

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl Default for SetSingleExample

```rust
fn default() -> SetSingleExample
```

### impl Transform for SetSingleExample

```rust
fn transform(&mut self, schema: &mut Schema)
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### impl Any for T

```rust
fn type_id(&self) -> TypeId
```

### impl Borrow<T> for T

```rust
fn borrow(&self) -> &T
```

### impl BorrowMut<T> for T

```rust
fn borrow_mut(&mut self) -> &mut T
```

### impl CloneToUninit for T

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### impl DynClone for T

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### impl ErasedDestructor for T

### impl From<T> for T

```rust
fn from(t: T) -> T
```

### impl GenTransform for T

```rust
fn _as_any(&self) -> &(dyn Any + 'static)
fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static)
fn _into_any(self: Box<Self>) -> Box<dyn Any>
```

### impl Into<U> for T

```rust
fn into(self) -> U
```

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
fn into_either_with(self, into_left: F) -> Either
```

### impl MaybeSendSync for T

### impl ToOwned for T

```rust
type Owned = T
fn to_owned(&self) -> T
fn clone_into(&self, target: &mut T)
```

### impl TryFrom<U> for T

```rust
type Error = Infallible
fn try_from(value: U) -> Result<T, Infallible>
```

### impl TryInto<U> for T

```rust
type Error = TryFrom<U>::Error
fn try_into(self) -> Result<U, TryFrom<U>::Error>
```
