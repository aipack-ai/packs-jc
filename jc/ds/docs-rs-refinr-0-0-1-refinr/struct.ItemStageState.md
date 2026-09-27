# ItemStageState

`refinr` 0.0.1

`ItemStageState` records the status and output details for one item stage.

## Struct definition

```rust
pub struct ItemStageState {
    pub status: ItemStatus,
    pub path: Option<SPath>,
    pub usage: Option<Usage>,
    pub error: Option<String>,
}
```

## Fields

- `status: ItemStatus` — Current lifecycle status of the stage.
- `path: Option<SPath>` — Path to the stage output, when one is available.
- `usage: Option<Usage>` — Token usage reported for the stage, when available.
- `error: Option<String>` — Error details when the stage failed.

## Trait implementations

### `Clone`

`ItemStageState` implements `Clone`.

- `fn clone(&self) -> Self` — Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` — Performs copy-assignment from `source`.

### `Debug`

`ItemStageState` implements `Debug`.

- `fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result` — Formats the value using the given formatter.

## Auto trait implementations

`ItemStageState` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket implementations

The following blanket implementations apply to `ItemStageState` through its generic trait implementations.

- `Any` for `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>` for `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>` for `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `CloneToUninit` for `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `From<T>` for `T`
  - `fn from(t: T) -> T`
- `Instrument` for `T`
  - `fn instrument(self, span: Span) -> Instrumented`
  - `fn in_current_span(self) -> Instrumented`
- `Into<U>` for `T` where `U: From<T>`
  - `fn into(self) -> U`
- `PolicyExt` for `T: ?Sized`
  - `fn and<P>(self, other: P) -> And<Self, P>` where `Self: Sized + Policy`, `P: Policy`
  - `fn or<P>(self, other: P) -> Or<Self, P>` where `Self: Sized + Policy`, `P: Policy`
- `ToOwned` for `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `TryFrom<U>` for `T` where `U: Into<T>`
  - `type Error = !`
  - `fn try_from(value: U) -> Result<T, !>`
- `TryInto<U>` for `T` where `U: TryFrom<T>`
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>`
- `WithSubscriber` for `T`
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch` where `S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch`
