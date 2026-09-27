# JournalRecordStatus

`JournalRecordStatus` is an enum in the `zmapr` 0.0.2 crate. It indicates whether a journal operation produced a reusable entry.

```rust
pub enum JournalRecordStatus {
    Ok,
    Failed,
}
```

## Variants

- `Ok` — The operation succeeded and produced an entry.
- `Failed` — The operation failed, so any previous entry for the path is invalidated.

## Trait Implementations

- `Clone`
  - `fn clone(&self) -> Self`
  - `fn clone_from(&mut self, source: &Self)`
- `Copy`
- `Debug`
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`
- `Deserialize<'de>`
  - `fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>`
  - `where D: Deserializer<'de>`
- `Eq`
- `PartialEq`
  - `fn eq(&self, other: &Self) -> bool`
  - `fn ne(&self, other: &Self) -> bool`
- `Serialize`
  - `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
  - `where S: Serializer`
- `StructuralPartialEq`

## Auto Traits

`JournalRecordStatus` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Any` for `T: 'static + ?Sized`
  - `fn type_id(&self) -> TypeId`
- `Borrow<T>` for `T: ?Sized`
  - `fn borrow(&self) -> &T`
- `BorrowMut<T>` for `T: ?Sized`
  - `fn borrow_mut(&mut self) -> &mut T`
- `CloneToUninit` for `T: Clone`
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `DeserializeOwned` for `T: for<'de> Deserialize<'de>`
- `Equivalent<K>` for `Q`, provided `Q: Eq + ?Sized` and `K: Borrow + ?Sized`
  - `fn equivalent(&self, key: &K) -> bool`
  - This blanket implementation is provided by both `hashbrown` and `equivalent`.
- `From<T>` for `T`
  - `fn from(t: T) -> T`
- `Instrument` for `T`
  - `fn instrument(self, span: Span) -> Instrumented<Self>`
  - `fn in_current_span(self) -> Instrumented<Self>`
- `Into<U>` for `T` where `U: From<T>`
  - `fn into(self) -> U`
- `PolicyExt` for `T: ?Sized`
  - `fn and<P>(self, other: P) -> And<Self, P>` where `Self: Sized + Policy` and `P: Policy`
  - `fn or<P>(self, other: P) -> Or<Self, P>` where `Self: Sized + Policy` and `P: Policy`
- `ToOwned` for `T: Clone`
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`
- `TryFrom<U>` for `T` where `U: Into<T>`
  - `type Error = !`
  - `fn try_from(value: U) -> Result<T, !>`
- `TryInto<U>` for `T` where `U: TryFrom<T>`
  - `type Error = U::Error`
  - `fn try_into(self) -> Result<U, U::Error>`
- `WithSubscriber` for `T`
  - `fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>` where `S: Into<Dispatch>`
  - `fn with_current_subscriber(self) -> WithDispatch<Self>`
