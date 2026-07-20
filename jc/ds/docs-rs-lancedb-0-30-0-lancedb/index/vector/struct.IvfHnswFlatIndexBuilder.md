# IvfHnswFlatIndexBuilder

**Struct** in `lancedb::index::vector`

Builder for an IVF_HNSW_FLAT index. This index combines IVF partitioning with an HNSW graph per partition, storing raw (unquantized) vectors. It offers the highest recall among the IVF_HNSW family at the cost of more memory and disk space compared to `IvfHnswSqIndexBuilder` or `IvfHnswPqIndexBuilder`.

## Implementations

### `impl IvfHnswFlatIndexBuilder`

- `pub fn distance_type(self, distance_type: DistanceType) -> Self`
  - [DistanceType](../../enum.DistanceType.html) to use to build the index. Default value is [DistanceType::L2](../../enum.DistanceType.html#variant.L2). The metric used to train the index MUST match the metric used to search.

- `pub fn num_partitions(self, num_partitions: u32) -> Self`
  - The number of IVF partitions to create. Should scale with dataset rows. Default is square root of rows.

- `pub fn sample_rate(self, sample_rate: u32) -> Self`
  - Rate to calculate number of training vectors for kmeans. Total vectors = `sample_rate * num_partitions`. Default is 256.

- `pub fn max_iterations(self, max_iterations: u32) -> Self`
  - Max iterations to train kmeans. Default is 50.

- `pub fn target_partition_size(self, target_partition_size: u32) -> Self`
  - Target size of each partition. Controls search speed vs accuracy tradeoff.

- `pub fn num_edges(self, m: u32) -> Self`
  - Number of neighbors to select for each vector in the HNSW graph. Default is 20.

- `pub fn ef_construction(self, ef_construction: u32) -> Self`
  - Number of candidates to evaluate during HNSW graph construction. Default is 300.

## Trait Implementations

### `impl Clone for IvfHnswFlatIndexBuilder`

- `fn clone(&self) -> IvfHnswFlatIndexBuilder`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for IvfHnswFlatIndexBuilder`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for IvfHnswFlatIndexBuilder`

- `fn default() -> Self`

### `impl Serialize for IvfHnswFlatIndexBuilder`

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer`

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation`
- `Any`
- `ArchivePointee`
- `Borrow`
- `BorrowMut`
- `CloneToUninit`
- `Conv`
- `DropFlavorWrapper`
- `DynClone`
- `ErasedDestructor`
- `FmtForward`
- `From`
- `FromRef`
- `HasTypeWitness`
- `Identity`
- `Instrument`
- `Into`
- `IntoEither`
- `IntoShared`
- `LayoutRaw`
- `MaybeSend` (2 implementations)
- `Niching`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `ResultType`
- `Same`
- `Tap`
- `ToOwned`
- `TryConv`
- `TryFrom`
- `TryInto` (2 implementations)
- `VZip`
- `WithSubscriber`
