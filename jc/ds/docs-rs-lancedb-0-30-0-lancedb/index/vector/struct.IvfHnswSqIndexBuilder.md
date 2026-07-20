# IvfHnswSqIndexBuilder

**Module:** `lancedb::index::vector`

**Source:** [lancedb/src/index/vector.rs](https://github.com/lancedb/lancedb/blob/main/lancedb/src/index/vector.rs#L435-L451)

**Description:** Builder for an IVF\_HNSW\_SQ index.

This index is a combination of IVF and HNSW. The IVF part is the same as the IVF PQ index. For each IVF partition, this builds a HNSW graph, which is used to quickly find the closest vectors to a query vector.

The SQ (scalar quantizer) is used to compress the vectors. Each vector is mapped to an 8-bit integer vector, achieving a 4x compression ratio for float32 vectors.

## Implementations (Methods)

- **`pub fn distance_type(self, distance_type: DistanceType) -> Self`**

  The `DistanceType` to use when building the index. Default is `DistanceType::L2`. This value is used during training to calculate IVF partitions and subvector quantization. The metric type used for training MUST match the metric type used for searching.

- **`pub fn num_partitions(self, num_partitions: u32) -> Self`**

  The number of IVF partitions to create. Should generally scale with the number of rows. Default is the square root of the number of rows. Too large slows down partition selection; too small slows down partition search.

- **`pub fn sample_rate(self, sample_rate: u32) -> Self`**

  The rate used to calculate the number of training vectors for k-means. Total training vectors = `sample_rate * num_partitions`. Default is 256. Increasing this may improve index quality.

- **`pub fn max_iterations(self, max_iterations: u32) -> Self`**

  Maximum iterations for k-means training. Default is 50. This parameter is rarely used as k‑means usually converges earlier.

- **`pub fn target_partition_size(self, target_partition_size: u32) -> Self`**

  The target size of each partition. Higher values speed up search but reduce accuracy.

- **`pub fn num_edges(self, m: u32) -> Self`**

  The number of neighbors for each vector in the HNSW graph. Controls the tradeoff between search speed and accuracy. Default is 20.

- **`pub fn ef_construction(self, ef_construction: u32) -> Self`**

  The number of candidates evaluated during HNSW graph construction. Tradeoff between build speed and accuracy. Should be at least the `ef` search value. Default is 300.

## Trait Implementations

### Clone

```rust
fn clone(&self) -> IvfHnswSqIndexBuilder
```

```rust
fn clone_from(&mut self, source: &Self)
```

### Debug

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### Default

```rust
fn default() -> Self
```

### Serialize

```rust
fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
where
    __S: Serializer,
```

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe

## Blanket Implementations

*(Not directly specific to this struct, but available due to generic implementations.)*
