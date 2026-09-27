# `ContentMap`

`ContentMap` is an in-memory representation of guidance for source files and directories.

## Definition

```rust
pub struct ContentMap {
    pub file_map: BTreeMap<String, FileMapEntry>,
    pub folder_map: BTreeMap<String, FolderMapEntry>,
}
```

## Fields

- `file_map: BTreeMap<String, FileMapEntry>` — Maps source-relative file paths to file guidance.
- `folder_map: BTreeMap<String, FolderMapEntry>` — Maps source-relative directory paths to folder guidance.

## Trait Implementations

`ContentMap` implements `Clone`, `Debug`, `Default`, `Deserialize<'de>`, `Eq`, `PartialEq`, `Serialize`, and `StructuralPartialEq`.

### Clone

```rust
fn clone(&self) -> Self;
fn clone_from(&mut self, source: &Self);
```

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result;
```

### Default

```rust
fn default() -> Self;
```

### Deserialize

```rust
fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
where
    D: Deserializer<'de>;
```

### PartialEq

```rust
fn eq(&self, other: &Self) -> bool;
fn ne(&self, other: &Self) -> bool;
```

### Serialize

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where
    S: Serializer;
```

## Auto Trait Implementations

`ContentMap` implements the following auto traits:

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

### Any

```rust
fn type_id(&self) -> TypeId;
```

### Borrow

```rust
fn borrow(&self) -> &T;
```

### BorrowMut

```rust
fn borrow_mut(&mut self) -> &mut T;
```

### CloneToUninit

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8);
```

### DeserializeOwned

Implemented for types that implement `Deserialize<'de>` for every `'de`.

### Equivalent

The `Equivalent` trait is provided by both `hashbrown` and `equivalent`.

```rust
fn equivalent(&self, key: &K) -> bool;
```

### From

```rust
fn from(t: T) -> T;
```

### Instrument

```rust
fn instrument(self, span: Span) -> Instrumented<Self>;
fn in_current_span(self) -> Instrumented<Self>;
```

### Into

```rust
fn into(self) -> U;
```

### PolicyExt

```rust
fn and<P>(self, other: P) -> And<Self, P>
where
    Self: Sized + Policy,
    P: Policy;

fn or<P>(self, other: P) -> Or<Self, P>
where
    Self: Sized + Policy,
    P: Policy;
```

`and` creates a policy that follows only if both policies return `Action::Follow`. `or` creates a policy that follows if either policy returns `Action::Follow`.

### ToOwned

```rust
type Owned = T;

fn to_owned(&self) -> T;
fn clone_into(&self, target: &mut T);
```

### TryFrom

```rust
type Error = !;

fn try_from(value: U) -> Result<T, !>;
```

### TryInto

```rust
type Error = <U as TryFrom<T>>::Error;

fn try_into(self) -> Result<U, <U as TryFrom<T>>::Error>;
```

### WithSubscriber

```rust
fn with_subscriber<S>(self, subscriber: S) -> WithDispatch<Self>
where
    S: Into<Dispatch>;

fn with_current_subscriber(self) -> WithDispatch<Self>;
```
