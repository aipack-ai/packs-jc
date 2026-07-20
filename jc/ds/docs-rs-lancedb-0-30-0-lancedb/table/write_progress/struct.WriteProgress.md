# WriteProgress (lancedb::table::write_progress)

Progress snapshot for a write operation.

## Struct Definition

```text
pub struct WriteProgress { /* private fields */ }
```

## Implementations

### impl WriteProgress

- **`pub fn elapsed(&self) -> Duration`**  
  Wall-clock time since monitoring started.

- **`pub fn output_rows(&self) -> usize`**  
  Number of rows written so far.

- **`pub fn output_bytes(&self) -> usize`**  
  Number of bytes written so far.

- **`pub fn total_rows(&self) -> Option<usize>`**  
  Total rows expected. Populated when the input source reports a row count. Always `Some` when `done` is `true`.

- **`pub fn active_tasks(&self) -> usize`**  
  Number of parallel write tasks currently in flight.

- **`pub fn total_tasks(&self) -> usize`**  
  Total number of parallel write tasks (i.e. the write parallelism).

- **`pub fn done(&self) -> bool`**  
  Whether the write operation has completed. The final callback always has `done = true`.

## Trait Implementations

- **Clone**  
  - `fn clone(&self) -> WriteProgress`  
  - `fn clone_from(&mut self, source: &Self)`

- **Debug**  
  - `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

## Auto Trait Implementations

- Freeze
- RefUnwindSafe
- Send
- Sync
- Unpin
- UnsafeUnpin
- UnwindSafe
