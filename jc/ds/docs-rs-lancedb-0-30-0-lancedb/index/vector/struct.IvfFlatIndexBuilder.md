# IvfFlatIndexBuilder

In `lancedb::index::vector`

## Description

Builder for an IVF Flat index.

This index stores raw vectors. These vectors are grouped into partitions of similar vectors. Each partition keeps track of a centroid which is the average value of all vectors in the group.

During a query the centroids are compared with the query vector to find the closest partitions. The raw vectors in these partitions are then searched to find the closest vectors.

The partitioning process is called IVF and the `num_partitions` parameter controls how many groups to create.

Note that training an IVF Flat index on a large dataset is a slow operation and currently is also a memory intensive operation.

```text
pub struct IvfFlatIndexBuilder { /* private fields */ }
```

## Implementations

### `impl IvfFlatIndexBuilder`

#### `pub fn distance_type(self, distance_type: DistanceType) -> Self`

[DistanceType] to use to build the index. Default value is [DistanceType::L2]. This is used when training the index to calculate the IVF partitions and to calculate a subvector’s code during quantization. The metric type used to train an index MUST match the metric type used to search the index. Failure to do so will yield inaccurate results.

#### `pub fn num_partitions(self, num_partitions: u32) -> Self`

The number of IVF partitions to create. This value should generally scale with the number of rows in the dataset. By default the number of partitions is the square root of the number of rows. If this value is too large then the first part of the search (picking the right partition) will be slow. If this value is too small then the second part of the search (searching within a partition) will be slow.

#### `pub fn sample_rate(self, sample_rate: u32) -> Self`

The rate used to calculate the number of training vectors for kmeans. When an IVF index is trained, we need to calculate partitions using the kmeans algorithm. To speed this up we run kmeans on a random sample of the data. This parameter controls the size of the sample. The total number of vectors used to train the index is `sample_rate * num_partitions`. Increasing this value might improve the quality of the index but in most cases the default should be sufficient. The default value is 256.

#### `pub fn max_iterations(self, max_iterations: u32) -> Self`

Max iterations to train kmeans. When training an IVF index we use kmeans to calculate the partitions. This parameter controls how many iterations of kmeans to run. Increasing this might improve the quality of the index but in most cases the parameter is unused because kmeans will converge with fewer iterations. The parameter is only used in cases where kmeans does not appear to converge. The default value is 50.

#### `pub fn target_partition_size(self, target_partition_size: u32) -> Self`

The target size of each partition. This value controls the tradeoff between search performance and accuracy. The higher the value the faster the search but the less accurate the results will be.

## Trait Implementations

### `impl Clone for IvfFlatIndexBuilder`

- `fn clone(&self) -> IvfFlatIndexBuilder`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for IvfFlatIndexBuilder`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for IvfFlatIndexBuilder`

- `fn default() -> Self`

### `impl Serialize for IvfFlatIndexBuilder`

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

- Any
- ArchivePointee
- Borrow<T>
- BorrowMut<T>
- CloneToUninit
- Conv
- DropFlavorWrapper<T>
- DynClone
- ErasedDestructor
- FmtForward
- From<T>
- FromRef<T>
- HasTypeWitness<W>
- Identity
- Instrument
- Into<U>
- IntoEither
- IntoShared<Shared>
- LayoutRaw
- Niching<NichedOption<T, N1>>
- Pipe
- Pointable
- Pointee
- PolicyExt
- ResultError
- ResultType
- Same
- Tap
- ToOwned
- TryConv
- TryFrom<U>
- TryInto<U>
- VZip<V>
- WithSubscriber
- Allocation
