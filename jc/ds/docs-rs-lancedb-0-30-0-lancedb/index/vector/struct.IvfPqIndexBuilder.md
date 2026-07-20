# IvfPqIndexBuilder

*lancedb::index::vector::IvfPqIndexBuilder*

## Description

Builder for an IVF PQ index.

This index stores a compressed (quantized) copy of every vector. These vectors are grouped into partitions of similar vectors. Each partition keeps track of a centroid which is the average value of all vectors in the group.

During a query the centroids are compared with the query vector to find the closest partitions. The compressed vectors in these partitions are then searched to find the closest vectors.

The compression scheme is called product quantization. Each vector is divided into subvectors and then each subvector is quantized into a small number of bits. The parameters `num_bits` and `num_subvectors` control this process, providing a tradeoff between index size (and thus search speed) and index accuracy.

The partitioning process is called IVF and the `num_partitions` parameter controls how many groups to create.

Note that training an IVF PQ index on a large dataset is a slow operation and currently is also a memory intensive operation.

## Implementations

### `impl IvfPqIndexBuilder`

```text
pub fn distance_type(self, distance_type: DistanceType) -> Self
```
- [DistanceType] to use to build the index.
- Default is `DistanceType::L2`.
- Used for training (partitioning and quantization). Must match search metric.

```text
pub fn num_partitions(self, num_partitions: u32) -> Self
```
- Number of IVF partitions. Should scale with dataset size.
- Default: square root of number of rows.

```text
pub fn sample_rate(self, sample_rate: u32) -> Self
```
- Rate to calculate training vectors for kmeans.
- Total training vectors = `sample_rate * num_partitions`.
- Default: 256.

```text
pub fn max_iterations(self, max_iterations: u32) -> Self
```
- Max iterations for kmeans training.
- Default: 50.

```text
pub fn target_partition_size(self, target_partition_size: u32) -> Self
```
- Target size of each partition.
- Higher values increase speed but reduce accuracy.

```text
pub fn num_sub_vectors(self, num_sub_vectors: u32) -> Self
```
- Number of sub-vectors for product quantization.
- Default: dimension / 16 (if divisible by 16), else dimension / 8, else 1.

```text
pub fn num_bits(self, num_bits: u32) -> Self
```

## Trait Implementations

### `impl Clone for IvfPqIndexBuilder`

```text
fn clone(&self) -> IvfPqIndexBuilder
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for IvfPqIndexBuilder`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl Default for IvfPqIndexBuilder`

```text
fn default() -> Self
```

### `impl Serialize for IvfPqIndexBuilder`

```text
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where __S: Serializer,
```

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

- `Allocation` (where T: RefUnwindSafe + Send + Sync)
- `Any` (where T: 'static + ?Sized)
- `ArchivePointee`
- `Borrow<T>`
- `BorrowMut<T>`
- `CloneToUninit` (where T: Clone)
- `Conv`
- `DropFlavorWrapper<T>`
- `DynClone` (where T: Clone)
- `ErasedDestructor` (where T: 'static)
- `FmtForward`
- `From<T>`
- `FromRef<T>` (where T: Clone)
- `HasTypeWitness<W>`
- `Identity`
- `Instrument`
- `Into<U>`
- `IntoEither`
- `IntoShared<Shared>` (for Unshared)
- `LayoutRaw`
- `MaybeSend` (where T: Send) – two implementations
- `Niching<NichedOption<T, N1>>` for N2
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError` (for E)
- `ResultType` (for T)
- `Same`
- `Tap`
- `ToOwned` (where T: Clone)
- `TryConv`
- `TryFrom<U>`
- `TryInto<U>` (standard)
- `TryInto<U>` (async-convert)
- `VZip<V>`
- `WithSubscriber`

[Source](../../../src/lancedb/index/vector.rs.html#267-284)
