# TagContents

Struct in `lancedb::table`

## Struct Definition

```rust
pub struct TagContents {
    pub branch: Option<String>,
    pub version: u64,
    pub created_at: Option<DateTime<Utc>>,
    pub updated_at: Option<DateTime<Utc>>,
    pub manifest_size: usize,
    pub metadata: HashMap<String, String>,
}
```

## Fields

- `branch: Option<String>` — The branch name (optional).
- `version: u64` — The version number.
- `created_at: Option<DateTime<Utc>>` — Timestamp of creation.
- `updated_at: Option<DateTime<Utc>>` — Timestamp of last update.
- `manifest_size: usize` — Size of the manifest.
- `metadata: HashMap<String, String>` — Metadata associated with this tag. Missing metadata is deserialized as an empty map.

## Implementations

### `impl TagContents`

```rust
pub async fn from_path(
    path: &Path,
    object_store: &ObjectStore,
) -> Result<TagContents, Error>
```

## Trait Implementations

### `impl Clone for TagContents`

```rust
fn clone(&self) -> TagContents
fn clone_from(&mut self, source: &Self)
```

### `impl Debug for TagContents`

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

### `impl<'de> Deserialize<'de> for TagContents`

```rust
fn deserialize<D>(__deserializer: D) -> Result<TagContents, D::Error>
where D: Deserializer<'de>;
```

### `impl Serialize for TagContents`

```rust
fn serialize<S>(&self, __serializer: S) -> Result<S::Ok, S::Error>
where S: Serializer;
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

- Allocation
- Any
- ArchivePointee
- Borrow
- BorrowMut
- CloneToUninit
- Conv
- DeserializeOwned
- DropFlavorWrapper
- DynClone
- ErasedDestructor
- FmtForward
- From
- FromRef
- HasTypeWitness
- Identity
- Instrument
- Into
- IntoEither
- IntoShared
- LayoutRaw
- MaybeSend (two implementations)
- Niching
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
- TryFrom
- TryInto (two implementations)
- VZip
- WithSubscriber
