# DropBehavior

**Enum** – Options for how a Transaction should behave when it is dropped.

**Source:** [src/turso/transaction.rs.html#24-37](https://github.com/tursodatabase/turso/blob/main/turso_core/src/transaction.rs#L24-L37)

## Variants (Non‑exhaustive)

This enum is marked as non‑exhaustive. Non‑exhaustive enums could have additional variants added in future. Therefore, when matching against variants of non‑exhaustive enums, an extra wildcard arm must be added to account for any future variants.

- **Rollback** – Roll back the changes. This is the default.
- **Commit** – Commit the changes.
- **Ignore** – Do not commit or roll back changes – this will leave the transaction or savepoint open, so should be used with care.
- **Panic** – Panic. Used to enforce intentional behavior during development.

```text
#[non_exhaustive]
pub enum DropBehavior {
    Rollback,
    Commit,
    Ignore,
    Panic,
}
```

## Trait Implementations

### Clone

- `fn clone(&self) -> DropBehavior`
- `fn clone_from(&mut self, source: &Self)`

### Debug

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### From\<DropBehavior\> for u8

- `fn from(behavior: DropBehavior) -> Self`

### From\<u8\> for DropBehavior

- `fn from(value: u8) -> Self`

### PartialEq

- `fn eq(&self, other: &DropBehavior) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### Copy

(No associated methods)

### Eq

(No associated methods)

### StructuralPartialEq

(No associated methods)

## Auto Trait Implementations

- `impl Freeze for DropBehavior`
- `impl RefUnwindSafe for DropBehavior`
- `impl Send for DropBehavior`
- `impl Sync for DropBehavior`
- `impl Unpin for DropBehavior`
- `impl UnsafeUnpin for DropBehavior`
- `impl UnwindSafe for DropBehavior`

## Blanket Implementations

### Any (where T: `'static + ?Sized`)

- `fn type_id(&self) -> TypeId`

### Borrow (where T: `?Sized`)

- `fn borrow(&self) -> &T`

### BorrowMut (where T: `?Sized`)

- `fn borrow_mut(&mut self) -> &mut T`

### CloneToUninit (where T: `Clone`)

- `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

### Downcast (where T: `Any`)

- `fn into_any(self: Box<Trait>) -> Box<dyn Any>`
- `fn into_any_rc(self: Rc<Trait>) -> Rc<dyn Any>`
- `fn as_any(&self) -> &(dyn Any + 'static)`
- `fn as_any_mut(&mut self) -> &mut (dyn Any + 'static)`

### DowncastSend (where T: `Any + Send`)

- `fn into_any_send(self: Box<Trait>) -> Box<dyn Any + Send>`

### DowncastSync (where T: `Any + Send + Sync`)

- `fn into_any_sync(self: Box<Trait>) -> Box<dyn Any + Sync + Send>`
- `fn into_any_arc(self: Arc<Trait>) -> Arc<dyn Any + Sync + Send>`

### Equivalent (where Q: `Eq + ?Sized`, K: `Borrow + ?Sized`)

- `fn equivalent(&self, key: &K) -> bool`

### From\<T\> for T

- `fn from(t: T) -> T`

### Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### Into\<U\> for T where U: `From<T>`

- `fn into(self) -> U`

### IntoEither for T

- `fn into_either(self, into_left: bool) -> Either`
- `fn into_either_with(self, into_left: F) -> Either`

### Pointable for T

- `const ALIGN: usize`
- `type Init = T`
- `unsafe fn init(init: Self::Init) -> usize`
- `unsafe fn deref<'a>(ptr: usize) -> &'a T`
- `unsafe fn deref_mut<'a>(ptr: usize) -> &'a mut T`
- `unsafe fn drop(ptr: usize)`

### Same for T

- `type Output = T`

### ToOwned (where T: `Clone`)

- `type Owned = T`
- `fn to_owned(&self) -> T`
- `fn clone_into(&self, target: &mut T)`

### TryFrom\<U\> for T where U: `Into<T>`

- `type Error = Infallible`
- `fn try_from(value: U) -> Result<T, Infallible>`

### TryInto\<U\> for T where U: `TryFrom<T>`

- `type Error = U::Error`
- `fn try_into(self) -> Result<U, U::Error>`

### VZip for T

- `fn vzip(self) -> V`

### WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch` where S: `Into<Dispatch>`
- `fn with_current_subscriber(self) -> WithDispatch`
