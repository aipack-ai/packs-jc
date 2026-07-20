# Tokens

**Struct** - `pub struct Tokens { /* private fields */ }`

A struct representing a collection of tokens with optional positions, used in scalar indexing.

## Implementations

### `impl Tokens`

- `pub fn new(tokens: Vec<String>, token_type: DocType) -> Tokens`
- `pub fn with_positions(tokens: Vec<String>, positions: Vec<u32>, token_type: DocType) -> Tokens`
- `pub fn len(&self) -> usize`
- `pub fn is_empty(&self) -> bool`
- `pub fn token_type(&self) -> &DocType`
- `pub fn contains(&self, token: &str) -> bool`
- `pub fn token_index(&self, token: &str) -> Option<usize>`
- `pub fn get_token(&self, index: usize) -> &str`
- `pub fn position(&self, index: usize) -> u32`

## Trait Implementations

### `impl Clone for Tokens`

- `fn clone(&self) -> Tokens`
- `fn clone_from(&mut self, source: &Self)`

### `impl<'a> IntoIterator for &'a Tokens`

- `type Item = &'a String`
- `type IntoIter = Iter<'a, String>`
- `fn into_iter(self) -> <&'a Tokens as IntoIterator>::IntoIter`

### `impl IntoIterator for Tokens`

- `type Item = String`
- `type IntoIter = IntoIter<String>`
- `fn into_iter(self) -> <Tokens as IntoIterator>::IntoIter`

## Auto Trait Implementations

- `impl Freeze for Tokens`
- `impl RefUnwindSafe for Tokens`
- `impl Send for Tokens`
- `impl Sync for Tokens`
- `impl Unpin for Tokens`
- `impl UnsafeUnpin for Tokens`
- `impl UnwindSafe for Tokens`

## Blanket Implementations

- `impl Any for T` where `T: 'static + ?Sized`
- `impl ArchivePointee for T`
- `impl BidiIterator for I` where `I: IntoIterator`, `I::IntoIter: DoubleEndedIterator`
- `impl Borrow<T> for T` where `T: ?Sized`
- `impl BorrowMut<T> for T` where `T: ?Sized`
- `impl CloneToUninit for T` where `T: Clone`
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T` where `T: Clone`
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T` where `T: Clone`
- `impl HasTypeWitness<W> for T` where `W: MakeTypeWitness`, `T: ?Sized`
- `impl Identity for T` where `T: ?Sized`
- `impl Instrument for T`
- `impl Into<U> for T` where `U: From<T>`
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` where `Shared: FromUnshared<Unshared>`
- `impl IntoStreamingIterator for I` where `I: IntoIterator`
- `impl IntoVec<SmartString<LazyCompact>> for I` where `I: IntoIterator`, `S: AsRef<str>`
- `impl IntoVec<String> for I` where `I: IntoIterator`, `S: AsRef<str>`
- `impl LayoutRaw for T`
- `impl MaybeSend for T` where `T: Send`
- `impl Niching<NichedOption<T, N1>> for N2` where `T: SharedNiching`, `N1: Niching<T>`, `N2: Niching<T>`
- `impl Pipe for T` where `T: ?Sized`
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` where `T: ?Sized`
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T` where `T: Clone`
- `impl TryConv for T`
- `impl TryFrom<U> for T` where `U: Into<T>`
- `impl TryInto<U> for T` where `U: TryFrom<T>`
- `impl TryInto<U> for T` (async) where `U: TryFrom<T>`
- `impl VZip<V> for T` where `V: MultiLane`
- `impl WithSubscriber for T`
- `impl Allocation for T` where `T: RefUnwindSafe + Send + Sync`
- `impl ErasedDestructor for T` where `T: 'static`
- `impl MaybeSend for T` where `T: Send`
