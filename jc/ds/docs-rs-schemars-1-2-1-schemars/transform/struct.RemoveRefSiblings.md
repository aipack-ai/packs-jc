# RemoveRefSiblings

**Module:** schemars::transform

## Struct definition

```rust
#[non_exhaustive]
pub struct RemoveRefSiblings;
```

## Description

Restructures JSON Schema objects so that the `$ref` property will never appear alongside any other properties.

This also applies to subschemas.

This is useful for versions of JSON Schema (e.g. Draft 7) that do not support other properties alongside `$ref`.

## Trait Implementations

### Clone

```rust
fn clone(&self) -> RemoveRefSiblings;
fn clone_from(&mut self, source: &Self);
```

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result;
```

### Default

```rust
fn default() -> RemoveRefSiblings;
```

### Transform

```rust
fn transform(&mut self, schema: &mut Schema);
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

### Any (T: 'static + ?Sized)

```rust
fn type_id(&self) -> TypeId;
```

### Borrow (T: ?Sized)

```rust
fn borrow(&self) -> &T;
```

### BorrowMut (T: ?Sized)

```rust
fn borrow_mut(&mut self) -> &mut T;
```

### CloneToUninit (T: Clone)

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

### DynClone (T: Clone)

```rust
fn __clone_box(&self, _: Private) -> *mut ();
```

### ErasedDestructor (T: 'static)

(no methods)

### From (T)

```rust
fn from(t: T) -> T;
```

### GenTransform (T: Transform + Clone + Any + Send)

```rust
fn _as_any(&self) -> &(dyn Any + 'static);
fn _as_any_mut(&mut self) -> &mut (dyn Any + 'static);
fn _into_any(self: Box) -> Box<dyn Any>;
```

### Into (U: From<T>)

```rust
fn into(self) -> U;
```

### IntoEither (T)

```rust
fn into_either(self, into_left: bool) -> Either;
fn into_either_with(self, into_left: F) -> Either;
```

### MaybeSendSync (T)

(no methods)

### ToOwned (T: Clone)

```rust
type Owned = T;
fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

### TryFrom (U: Into<T>)

```rust
type Error = Infallible;
fn try_from(value: U) -> Result<T, Infallible>;
```

### TryInto (U: TryFrom<T>)

```rust
type Error = TryFrom<U>::Error;
fn try_into(self) -> Result<U, Self::Error>;
```
