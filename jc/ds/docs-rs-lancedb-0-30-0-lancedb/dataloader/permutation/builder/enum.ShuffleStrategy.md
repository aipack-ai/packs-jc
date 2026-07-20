# ShuffleStrategy

**Module:** `lancedb::dataloader::permutation::builder`

**Source:** `lancedb/dataloader/permutation/builder.rs`

Strategy for shuffling the data.

```text
pub enum ShuffleStrategy {
    Random {
        seed: Option<u64>,
        clump_size: Option<u64>,
    },
    None,
}
```

### Variants

#### Random

The data is randomly shuffled. A seed can be provided to make the shuffle deterministic. If a clump size is provided, then data will be shuffled in small blocks of contiguous rows. This decreases the overall randomization but can improve I/O performance when reading from cloud storage.

For example, a clump size of 16 will mean we will shuffle blocks of 16 contiguous rows. This will mean 16x fewer IOPS but these 16 rows will always be close together and this can influence the performance of the model. Note: shuffling within clumps can still be done at read time but this will only provide a local shuffle and not a global shuffle.

##### Fields

- `seed: Option<u64>`
- `clump_size: Option<u64>`

#### None

The data is not shuffled. This is useful for debugging and testing.

### Trait Implementations

#### `impl Clone for ShuffleStrategy`

```text
fn clone(&self) -> ShuffleStrategy
fn clone_from(&mut self, source: &Self)
```

#### `impl Debug for ShuffleStrategy`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

#### `impl Default for ShuffleStrategy`

```text
fn default() -> ShuffleStrategy
```

### Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

### Blanket Implementations

Blanket implementations from external crates (e.g., `Any`, `Borrow`, `CloneToUninit`, etc.) are available but omitted for brevity.
