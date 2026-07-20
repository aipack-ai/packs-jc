# OptimizeStats

## In `lancedb::table::optimize`

Statistics about the optimization.

## Struct Definition

```text
pub struct OptimizeStats {
    pub compaction: Option<CompactionMetrics>,
    pub prune: Option<RemovalStats>,
}
```

## Fields

- `compaction: Option<CompactionMetrics>` – Stats of the file compaction.
- `prune: Option<RemovalStats>` – Stats of the version pruning.

## Trait Implementations

### `impl Debug for OptimizeStats`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter.

### `impl Default for OptimizeStats`

- `fn default() -> OptimizeStats` – Returns the default value for a type.

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
- Borrow
- BorrowMut
- Conv
- DropFlavorWrapper
- ErasedDestructor
- FmtForward
- From
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
- Same
- Tap
- TryConv
- TryFrom
- TryInto (two implementations)
- VZip
- WithSubscriber
