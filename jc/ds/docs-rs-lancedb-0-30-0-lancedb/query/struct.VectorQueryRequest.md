# VectorQueryRequest

A request for a nearest-neighbors search into a table.

## Fields

- `base`: [QueryRequest](struct.QueryRequest.html) — The base query.
- `column`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[String](https://doc.rust-lang.org/nightly/alloc/string/struct.String.html)> — The column to run the search on. If None, the table must auto-detect which column to use.
- `query_vector`: [Vec](https://doc.rust-lang.org/nightly/alloc/vec/struct.Vec.html)<[Arc](https://doc.rust-lang.org/nightly/alloc/sync/struct.Arc.html)<[Array](https://docs.rs/arrow-array/latest/arrow_array/array/struct.Array.html)>> — The vector(s) to search for.
- `minimum_nprobes`: [usize](https://doc.rust-lang.org/nightly/std/primitive.usize.html) — The minimum number of partitions to search.
- `maximum_nprobes`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[usize](https://doc.rust-lang.org/nightly/std/primitive.usize.html)> — The maximum number of partitions to search.
- `lower_bound`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[f32](https://doc.rust-lang.org/nightly/std/primitive.f32.html)> — The lower bound (inclusive) of the distance to search for.
- `upper_bound`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[f32](https://doc.rust-lang.org/nightly/std/primitive.f32.html)> — The upper bound (exclusive) of the distance to search for.
- `ef`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[usize](https://doc.rust-lang.org/nightly/std/primitive.usize.html)> — The number of candidates to return during the refine step for HNSW, defaults to 1.5 * limit.
- `refine_factor`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[u32](https://doc.rust-lang.org/nightly/std/primitive.u32.html)> — A multiplier to control how many additional rows are taken during the refine step.
- `distance_type`: [Option](https://doc.rust-lang.org/nightly/core/option/enum.Option.html)<[DistanceType](../enum.DistanceType.html)> — The distance type to use for the search.
- `use_index`: [bool](https://doc.rust-lang.org/nightly/std/primitive.bool.html) — Default is true. Set to false to enforce a brute force search.

## Struct Definition (source)

```rust
pub struct VectorQueryRequest {
    pub base: QueryRequest,
    pub column: Option<String>,
    pub query_vector: Vec<Arc<Array>>,
    pub minimum_nprobes: usize,
    pub maximum_nprobes: Option<usize>,
    pub lower_bound: Option<f32>,
    pub upper_bound: Option<f32>,
    pub ef: Option<usize>,
    pub refine_factor: Option<u32>,
    pub distance_type: Option<DistanceType>,
    pub use_index: bool,
}
```

## Implementations

### `impl VectorQueryRequest`

```rust
pub fn from_plain_query(query: QueryRequest) -> Self
```

## Trait Implementations

### `impl Clone for VectorQueryRequest`

```rust
fn clone(&self) -> VectorQueryRequest
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for VectorQueryRequest`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for VectorQueryRequest`

```rust
fn default() -> Self
```

## Auto Trait Implementations

- `impl Freeze for VectorQueryRequest`
- `impl !RefUnwindSafe for VectorQueryRequest`
- `impl Send for VectorQueryRequest`
- `impl Sync for VectorQueryRequest`
- `impl Unpin for VectorQueryRequest`
- `impl UnsafeUnpin for VectorQueryRequest`
- `impl !UnwindSafe for VectorQueryRequest`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
- `impl ArchivePointee for T`
- `impl Borrow<T> for T` where T: ?Sized
- `impl BorrowMut<T> for T` where T: ?Sized
- `impl CloneToUninit for T` where T: Clone
- `impl Conv for T`
- `impl DropFlavorWrapper<T> for T`
- `impl DynClone for T` where T: Clone
- `impl FmtForward for T`
- `impl From<T> for T`
- `impl FromRef<T> for T` where T: Clone
- `impl HasTypeWitness<W> for T` where W: MakeTypeWitness, T: ?Sized
- `impl Identity for T` where T: ?Sized
- `impl Instrument for T`
- `impl Into<U> for T` where U: From<T>
- `impl IntoEither for T`
- `impl IntoShared<Shared> for Unshared` where Shared: FromUnshared
- `impl LayoutRaw for T`
- `impl Niching<NichedOption<T, N1>> for N2` where T: SharedNiching, N1: Niching, N2: Niching
- `impl Pipe for T` where T: ?Sized
- `impl Pointable for T`
- `impl Pointee for T`
- `impl PolicyExt for T` where T: ?Sized
- `impl ResultError for E` where E: Send + Debug + Sync
- `impl ResultType for T` where T: Send + Clone + Sync + Debug
- `impl Same for T`
- `impl Tap for T`
- `impl ToOwned for T` where T: Clone
- `impl TryConv for T`
- `impl TryFrom<U> for T` where U: Into<T>
- `impl TryInto<U> for T` where U: TryFrom<T>
- `impl TryInto<U> for T` (async) where U: TryFrom<T>
- `impl VZip<V> for T` where V: MultiLane
- `impl WithSubscriber for T`
- `impl ErasedDestructor for T` where T: 'static
- `impl MaybeSend for T` where T: Send
- (see original documentation for full method signatures)
