# Version in lancedb::table

**Struct lancedb::table::Version**

Dataset Version.

## Struct Definition

```rust
pub struct Version {
    pub version: u64,
    pub timestamp: DateTime<Utc>,
    pub metadata: BTreeMap<String, String>,
}
```

## Fields

- `version` (`u64`): Version number.
- `timestamp` (`DateTime<Utc>`): Timestamp of dataset creation in UTC.
- `metadata` (`BTreeMap<String, String>`): Key-value pairs of metadata.

## Trait Implementations

### impl Debug for Version

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```

### impl<'de> Deserialize<'de> for Version

```rust
fn deserialize<D>(deserializer: D) -> Result<Version, D::Error>
where D: Deserializer<'de>
```

### impl From<&Manifest> for Version

```rust
fn from(m: &Manifest) -> Version
```

### impl Serialize for Version

```rust
fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
where S: Serializer
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

- `Allocation`
- `Any`
- `ArchivePointee`
- `Borrow`
- `BorrowMut`
- `Conv`
- `DeserializeOwned`
- `DropFlavorWrapper`
- `ErasedDestructor`
- `FmtForward`
- `From`
- `HasTypeWitness`
- `Identity`
- `Instrument`
- `Into`
- `IntoEither`
- `IntoShared`
- `LayoutRaw`
- `MaybeSend`
- `Niching<NichedOption<T, N1>>`
- `Pipe`
- `Pointable`
- `Pointee`
- `PolicyExt`
- `ResultError`
- `Same`
- `Tap`
- `TryConv`
- `TryFrom`
- `TryInto`
- `VZip`
- `WithSubscriber`
