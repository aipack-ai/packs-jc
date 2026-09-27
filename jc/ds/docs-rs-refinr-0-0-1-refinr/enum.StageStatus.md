# StageStatus

`StageStatus` represents the status of a stage in a workflow.

```rust
pub enum StageStatus {
    NotSelected,
    Pending,
    Running,
    Completed,
    Failed,
}
```

## Variants

- `NotSelected` — The stage is not selected for this workflow.
- `Pending` — The selected stage has not started.
- `Running` — The stage is currently processing items.
- `Completed` — The stage finished processing.
- `Failed` — The stage failed.

## Trait Implementations

`StageStatus` implements `Clone`, `Copy`, `Debug`, `Default`, `Eq`, `PartialEq`, and `StructuralPartialEq`.

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Copy`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- `Default`
  - `fn default() -> Self`
- `Eq`
- `PartialEq`
  - `fn eq(&self, other: &Self) -> bool`
  - `fn ne(&self, other: &Self) -> bool`
- `StructuralPartialEq`

## Auto Traits

`StageStatus` implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

The following blanket implementations are also documented for `StageStatus`:

- `Any` for `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>` for `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>` for `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `CloneToUninit` for `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `Equivalent<K>` for `Q` where `Q: Eq + ?Sized` and `K: Borrow + ?Sized`
  - `fn equivalent(&self, key: &K) -> bool`
- `From<T>` for `T`
  - `fn from(t: T) -> T`
- `Instrument` for `T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- `Into<U>` for `T` where `U: From<T>`
  - `fn into(self) -> U`
- `PolicyExt` for `T: ?Sized`
  - `fn and<P>(self, other: P) -> And<Self, P>`
  - `fn or<P>(self, other: P) -> Or<Self, P>`
- `ToOwned` for `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `TryFrom<U>` for `T` where `U: Into<T>`
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Infallible>`
- `TryInto<U>` for `T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
- `WithSubscriber` for `T`
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>` where `S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`
