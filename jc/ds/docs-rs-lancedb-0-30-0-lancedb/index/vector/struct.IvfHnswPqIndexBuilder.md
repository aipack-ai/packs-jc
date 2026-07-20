# IvfHnswPqIndexBuilder in `lancedb::index::vector`

**Struct definition**

```rust
pub struct IvfHnswPqIndexBuilder { /* private fields */ }
```

**Description**

Builder for an IVF HNSW PQ index. This index is a combination of IVF and HNSW. The IVF part is the same as the IVF PQ index. For each IVF partition, this builds a HNSW graph, which is used to quickly find the closest vectors to a query vector. The PQ (product quantizer) is used to compress the vectors as the same as IVF PQ.

## Implementations

### `impl IvfHnswPqIndexBuilder`

```rust
pub fn distance_type(self, distance_type: DistanceType) -> Self
```
[DistanceType](https://docs.rs/lancedb/0.30.0/lancedb/enum.DistanceType.html) to use to build the index. Default value is `DistanceType::L2`. This is used when training the index to calculate the IVF partitions (vectors are grouped in partitions with similar vectors according to this distance type) and to calculate a subvector’s code during quantization. The metric type used to train an index MUST match the metric type used to search the index. Failure to do so will yield inaccurate results.

---

```rust
pub fn num_partitions(self, num_partitions: u32) -> Self
```
The number of IVF partitions to create. This value should generally scale with the number of rows in the dataset. By default the number of partitions is the square root of the number of rows. If this value is too large then the first part of the search (picking the right partition) will be slow. If this value is too small then the second part of the search (searching within a partition) will be slow.

---

```rust
pub fn sample_rate(self, sample_rate: u32) -> Self
```
The rate used to calculate the number of training vectors for kmeans. When an IVF index is trained, we need to calculate partitions. These are groups of vectors that are similar to each other. To do this we use kmeans. Running kmeans on a large dataset can be slow. To speed this up we run kmeans on a random sample of the data. This parameter controls the size of the sample. The total number of vectors used to train the index is `sample_rate * num_partitions`. Increasing this value might improve the quality of the index but in most cases the default should be sufficient. The default value is 256.

---

```rust
pub fn max_iterations(self, max_iterations: u32) -> Self
```
Max iterations to train kmeans. When training an IVF index we use kmeans to calculate the partitions. This parameter controls how many iterations of kmeans to run. Increasing this might improve the quality of the index but in most cases the parameter is unused because kmeans will converge with fewer iterations. The parameter is only used in cases where kmeans does not appear to converge. In those cases it is unlikely that setting this larger will lead to the index converging anyways. The default value is 50.

---

```rust
pub fn target_partition_size(self, target_partition_size: u32) -> Self
```
The target size of each partition. This value controls the tradeoff between search performance and accuracy. The higher the value the faster the search but the less accurate the results will be.

---

```rust
pub fn num_edges(self, m: u32) -> Self
```
The number of neighbors to select for each vector in the HNSW graph. This value controls the tradeoff between search speed and accuracy. The higher the value the more accurate the search but the slower it will be. The default value is 20.

---

```rust
pub fn ef_construction(self, ef_construction: u32) -> Self
```
The number of candidates to evaluate during the construction of the HNSW graph. This value controls the tradeoff between build speed and accuracy. The higher the value the more accurate the build but the slower it will be. This value should be set to a value that is not less than `ef` in the search phase. The default value is 300.

---

```rust
pub fn num_sub_vectors(self, num_sub_vectors: u32) -> Self
```
Number of sub-vectors of PQ. This value controls how much the vector is compressed during the quantization step. The more sub vectors there are the less the vector is compressed. The default is the dimension of the vector divided by 16. If the dimension is not evenly divisible by 16 we use the dimension divided by 8. The above two cases are highly preferred. Having 8 or 16 values per subvector allows us to use efficient SIMD instructions. If the dimension is not visible by 8 then we use 1 subvector. This is not ideal and will likely result in poor performance.

---

```rust
pub fn num_bits(self, num_bits: u32) -> Self
```
*(Description not provided in raw content)*

## Trait Implementations

### `impl Clone for IvfHnswPqIndexBuilder`

```rust
fn clone(&self) -> IvfHnswPqIndexBuilder
```
Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#tymethod.clone)

```rust
fn clone_from(&mut self, source: &Self)
```
Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/nightly/core/clone/trait.Clone.html#method.clone_from)

### `impl Debug for IvfHnswPqIndexBuilder`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```
Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### `impl Default for IvfHnswPqIndexBuilder`

```rust
fn default() -> Self
```
Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/nightly/core/default/trait.Default.html#tymethod.default)

### `impl Serialize for IvfHnswPqIndexBuilder`

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer
```
Serialize this value into the given Serde serializer. [Read more](https://docs.rs/serde_core/1.0.228/x86_64-unknown-linux-gnu/serde_core/ser/trait.Serialize.html#tymethod.serialize)

## Auto Trait Implementations

- `impl Freeze for IvfHnswPqIndexBuilder`
- `impl RefUnwindSafe for IvfHnswPqIndexBuilder`
- `impl Send for IvfHnswPqIndexBuilder`
- `impl Sync for IvfHnswPqIndexBuilder`
- `impl Unpin for IvfHnswPqIndexBuilder`
- `impl UnsafeUnpin for IvfHnswPqIndexBuilder`
- `impl UnwindSafe for IvfHnswPqIndexBuilder`

## Blanket Implementations

- `impl<T> Any for T where T: 'static + ?Sized`  
  - `fn type_id(&self) -> TypeId`
- `impl<T> ArchivePointee for T`  
  - `type ArchivedMetadata = ()`  
  - `fn pointer_metadata(...) -> ...`
- `impl<T> Borrow<T> for T where T: ?Sized`  
  - `fn borrow(&self) -> &T`
- `impl<T> BorrowMut<T> for T where T: ?Sized`  
  - `fn borrow_mut(&mut self) -> &mut T`
- `impl<T> CloneToUninit for T where T: Clone`  
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`
- `impl<T> Conv for T`  
  - `fn conv(self) -> T`
- `impl<T> DropFlavorWrapper<T> for T`  
  - `type Flavor = MayDrop`
- `impl<T> DynClone for T where T: Clone`  
  - `fn __clone_box(&self, _: Private) -> *mut ()`
- `impl<T> FmtForward for T`  
  - `fn fmt_binary(self) -> FmtBinary`  
  - `fn fmt_display(self) -> FmtDisplay`  
  - `fn fmt_lower_exp(self) -> FmtLowerExp`  
  - `fn fmt_lower_hex(self) -> FmtLowerHex`  
  - `fn fmt_octal(self) -> FmtOctal`  
  - `fn fmt_pointer(self) -> FmtPointer`  
  - `fn fmt_upper_exp(self) -> FmtUpperExp`  
  - `fn fmt_upper_hex(self) -> FmtUpperHex`  
  - `fn fmt_list(self) -> FmtList`
- `impl<T> From<T> for T`  
  - `fn from(t: T) -> T`
- `impl<T> FromRef<T> for T where T: Clone`  
  - `fn from_ref(input: &T) -> T`
- `impl<T> HasTypeWitness<W> for T where W: MakeTypeWitness, T: ?Sized`  
  - `const WITNESS: W = W::MAKE`
- `impl<T> Identity for T where T: ?Sized`  
  - `const TYPE_EQ: TypeEq<Self::Type>`  
  - `type Type = T`
- `impl<T> Instrument for T`  
  - `fn instrument(self, span: Span) -> Instrumented`  
  - `fn in_current_span(self) -> Instrumented`
- `impl<T> Into<U> for T where U: From<T>`  
  - `fn into(self) -> U`
- `impl<T> IntoEither for T`  
  - `fn into_either(self, into_left: bool) -> Either`  
  - `fn into_either_with(self, into_left: F) -> Either`
- `impl IntoShared<Shared> for Unshared where Shared: FromUnshared`  
  - `fn into_shared(self) -> Shared`
- `impl<T> LayoutRaw for T`  
  - `fn layout_raw(...) -> Result<Layout, LayoutError>`
- `impl Niching<NichedOption<T, N1>> for N2 where T: SharedNiching, N1: Niching, N2: Niching`  
  - `unsafe fn is_niched(...) -> bool`  
  - `fn resolve_niched(out: Place<NichedOption<T, N1>>)`
- `impl<T> Pipe for T where T: ?Sized`  
  - `fn pipe(...)` and many variants (pipe_ref, pipe_ref_mut, pipe_borrow, etc.)
- `impl<T> Pointable for T`  
  - `const ALIGN: usize`  
  - `type Init = T`  
  - `unsafe fn init(...) -> usize`  
  - `unsafe fn deref<'a>(...) -> &'a T`  
  - `unsafe fn deref_mut<'a>(...) -> &'a mut T`  
  - `unsafe fn drop(...)`
- `impl<T> Pointee for T`  
  - `type Metadata = ()`
- `impl<T> PolicyExt for T where T: ?Sized`  
  - `fn and(self, other: P) -> And`  
  - `fn or(self, other: P) -> Or`
- `impl<T> Same for T`  
  - `type Output = T`
- `impl<T> Tap for T`  
  - `fn tap(self, func: impl FnOnce(&Self)) -> Self`  
  - `fn tap_mut(self, func: impl FnOnce(&mut Self)) -> Self`  
  - `fn tap_borrow(self, func: impl FnOnce(&B)) -> Self`  
  - `fn tap_borrow_mut(self, func: impl FnOnce(&mut B)) -> Self`  
  - `fn tap_ref(self, func: impl FnOnce(&R)) -> Self`  
  - `fn tap_ref_mut(self, func: impl FnOnce(&mut R)) -> Self`  
  - `fn tap_deref(self, func: impl FnOnce(&T)) -> Self`  
  - `fn tap_deref_mut(self, func: impl FnOnce(&mut T)) -> Self`  
  - `fn tap_dbg(...)`, `fn tap_mut_dbg(...)`, etc.
- `impl<T> ToOwned for T where T: Clone`  
  - `type Owned = T`  
  - `fn to_owned(&self) -> T`  
  - `fn clone_into(&self, target: &mut T)`
- `impl<T> TryConv for T`  
  - `fn try_conv(self) -> Result<T, Self::Error>`
- `impl<T> TryFrom<U> for T where U: Into<T>`  
  - `type Error = Infallible`  
  - `fn try_from(value: U) -> Result<T, Self::Error>`
- `impl<T> TryInto<U> for T where U: TryFrom<T>`  
  - `type Error = <U as TryFrom<T>>::Error`  
  - `fn try_into(self) -> Result<U, Self::Error>`
- `impl<T> TryInto<U> for T where U: TryFrom<T>` (async version)  
  - `type Error = <U as TryFrom<T>>::Error`  
  - `async fn try_into(self) -> Result<U, Self::Error>`
- `impl<T> VZip<V> for T where V: MultiLane`  
  - `fn vzip(self) -> V`
- `impl<T> WithSubscriber for T`  
  - `fn with_subscriber(self, subscriber: S) -> WithDispatch`  
  - `fn with_current_subscriber(self) -> WithDispatch`
- `impl<T> Allocation for T where T: RefUnwindSafe + Send + Sync`  
- `impl<T> ErasedDestructor for T where T: 'static`  
- `impl<T> MaybeSend for T where T: Send` (two implementations)  
- `impl<E> ResultError for E where E: Send + Debug + Sync`  
- `impl<T> ResultType for T where T: Send + Clone + Sync + Debug`
