# Struct FtsSearchParams (in lancedb::index::scalar)

Source: [https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#12](https://docs.rs/lance-index/7.0.0/x86_64-unknown-linux-gnu/src/lance_index/scalar/inverted/query.rs.html#12)

```
pub struct FtsSearchParams {
    pub limit: Option<usize>,
    pub wand_factor: f32,
    pub fuzziness: Option<u32>,
    pub max_expansions: usize,
    pub phrase_slop: Option<u32>,
    pub prefix_length: u32,
}
```

## Fields

- `limit: Option<usize>` — Maximum number of search results.
- `wand_factor: f32` — Weighted AND (WAND) factor for scoring.
- `fuzziness: Option<u32>` — Levenshtein distance allowed for fuzzy matching.
- `max_expansions: usize` — Maximum number of term expansions.
- `phrase_slop: Option<u32>` — Slop distance for phrase matching.
- `prefix_length: u32` — Number of unchanged beginning characters for fuzzy matching.

## Implementations

### `impl FtsSearchParams`

- `pub fn new() -> FtsSearchParams`  
  Creates a new `FtsSearchParams` with default values.

- `pub fn with_limit(self, limit: Option<usize>) -> FtsSearchParams`  
  Sets the `limit` field.

- `pub fn with_wand_factor(self, factor: f32) -> FtsSearchParams`  
  Sets the `wand_factor` field.

- `pub fn with_fuzziness(self, fuzziness: Option<u32>) -> FtsSearchParams`  
  Sets the `fuzziness` field.

- `pub fn with_max_expansions(self, max_expansions: usize) -> FtsSearchParams`  
  Sets the `max_expansions` field.

- `pub fn with_phrase_slop(self, phrase_slop: Option<u32>) -> FtsSearchParams`  
  Sets the `phrase_slop` field.

- `pub fn with_prefix_length(self, prefix_length: u32) -> FtsSearchParams`  
  Sets the `prefix_length` field.

## Trait Implementations

### `Clone`

- `fn clone(&self) -> FtsSearchParams`
- `fn clone_from(&mut self, source: &Self)`

### `Debug`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`

### `Default`

- `fn default() -> FtsSearchParams`

### `Deserialize<'de>`

- `fn deserialize<__D>(__deserializer: __D) -> Result<FtsSearchParams, __D::Error>` where `__D: Deserializer<'de>`

### `Serialize`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer`

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

- Allocation (where T: RefUnwindSafe + Send + Sync)
- Any (where T: 'static + ?Sized)
- ArchivePointee (type ArchivedMetadata = (), fn pointer_metadata)
- Borrow<T> (fn borrow)
- BorrowMut<T> (fn borrow_mut)
- CloneToUninit (unsafe fn clone_to_uninit)
- Conv (fn conv)
- DeserializeOwned
- DropFlavorWrapper (type Flavor = MayDrop)
- DynClone (fn __clone_box)
- ErasedDestructor
- FmtForward (multiple methods: fmt_binary, fmt_display, fmt_lower_exp, fmt_lower_hex, fmt_octal, fmt_pointer, fmt_upper_exp, fmt_upper_hex, fmt_list)
- From<T> (fn from)
- FromRef (fn from_ref)
- HasTypeWitness<W> (const WITNESS)
- Identity (const TYPE_EQ, type Type)
- Instrument (fn instrument, fn in_current_span)
- Into<U> (fn into)
- IntoEither (fn into_either, fn into_either_with)
- IntoShared<Shared> (fn into_shared)
- LayoutRaw (fn layout_raw)
- MaybeSend (two impls)
- Niching<NichedOption<T, N1>> (unsafe fn is_niched, fn resolve_niched)
- Pipe (multiple methods: pipe, pipe_ref, pipe_ref_mut, pipe_borrow, pipe_borrow_mut, pipe_as_ref, pipe_as_mut, pipe_deref, pipe_deref_mut)
- Pointable (const ALIGN, type Init, unsafe fn init, deref, deref_mut, drop)
- Pointee (type Metadata = ())
- PolicyExt (fn and, fn or)
- ResultError
- ResultType
- Same (type Output = T)
- Tap (multiple methods: tap, tap_mut, tap_borrow, tap_borrow_mut, tap_ref, tap_ref_mut, tap_deref, tap_deref_mut, tap_dbg, tap_mut_dbg, tap_borrow_dbg, tap_borrow_mut_dbg, tap_ref_dbg, tap_ref_mut_dbg, tap_deref_dbg, tap_deref_mut_dbg)
- ToOwned (type Owned = T, fn to_owned, fn clone_into)
- TryConv (fn try_conv)
- TryFrom<U> (type Error, fn try_from)
- TryInto<U> (type Error, fn try_into) — two impls
- VZip (fn vzip)
- WithSubscriber (fn with_subscriber, fn with_current_subscriber)
