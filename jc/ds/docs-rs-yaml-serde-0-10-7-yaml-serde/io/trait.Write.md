# Trait `Write`

In `yaml_serde::io`.

A trait for objects which are byte-oriented sinks. Implementors of the `Write` trait are sometimes called writers.

## Trait definition

```rust
pub trait Write {
    // Required methods
    fn write(&mut self, buf: &[u8]) -> Result<usize, Error>;

    fn flush(&mut self) -> Result<(), Error>;

    // Provided methods
    fn write_vectored(&mut self, bufs: &[IoSlice<'_>]) -> Result<usize, Error> { ... }

    fn is_write_vectored(&self) -> bool { ... }

    fn write_all(&mut self, buf: &[u8]) -> Result<(), Error> { ... }

    fn write_all_vectored(&mut self, bufs: &mut [IoSlice<'_>]) -> Result<(), Error> { ... }

    fn write_fmt(&mut self, args: Arguments<'_>) -> Result<(), Error> { ... }

    fn by_ref(&mut self) -> &mut Self
    where
        Self: Sized,
    { ... }
}
```

Writers are defined by two required methods:

- `write` attempts to write data into the object and returns the number of bytes successfully written.
- `flush` ensures that buffered data has been pushed to the underlying sink.

Writers are intended to be composable. Many types in `std::io` accept or provide values that implement `Write`.

## Examples

```rust
use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let data = b"some bytes";
    let mut pos = 0;
    let mut buffer = File::create("foo.txt")?;

    while pos < data.len() {
        let bytes_written = buffer.write(&data[pos..])?;
        pos += bytes_written;
    }

    Ok(())
}
```

The trait also provides convenience methods such as `write_all`, which repeatedly calls `write` until the entire input has been written.

## Required methods

### `write`

```rust
fn write(&mut self, buf: &[u8]) -> Result<usize, Error>
```

Writes a buffer into this writer and returns the number of bytes written.

The method attempts to write the entire contents of `buf`, but a write may be partial or may return an error. Calls are not guaranteed to block waiting for data to be written.

If the method consumes `n > 0` bytes, it must return `Ok(n)`, where `n <= buf.len()`. `Ok(0)` generally indicates that the underlying object cannot accept more bytes or that the supplied buffer is empty.

#### Errors

Each call may produce an I/O error. If an error is returned, no bytes in the buffer were written.

It is not an error if the entire buffer cannot be written in one call. An error with kind `ErrorKind::Interrupted` is non-fatal, and the operation should be retried when appropriate.

#### Example

```rust
use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut buffer = File::create("foo.txt")?;

    // Writes some prefix of the byte string, not necessarily all of it.
    buffer.write(b"some bytes")?;

    Ok(())
}
```

### `flush`

```rust
fn flush(&mut self) -> Result<(), Error>
```

Flushes this output stream, ensuring that all intermediate buffered contents reach their destination.

#### Errors

An error is returned if not all bytes can be written because of an I/O error or because EOF is reached.

#### Example

```rust
use std::fs::File;
use std::io::{BufWriter, Write};

fn main() -> std::io::Result<()> {
    let mut buffer = BufWriter::new(File::create("foo.txt")?);

    buffer.write_all(b"some bytes")?;
    buffer.flush()?;

    Ok(())
}
```

## Provided methods

### `write_vectored`

```rust
fn write_vectored(&mut self, bufs: &[IoSlice<'_>]) -> Result<usize, Error>
```

Writes data from a slice of buffers.

Data is copied from each buffer in order. The final buffer may be only partially consumed. This method behaves like calling `write` with all buffers concatenated.

The default implementation calls `write` with the first non-empty buffer, or with an empty buffer if all supplied buffers are empty.

#### Example

```rust
use std::fs::File;
use std::io::{IoSlice, Write};

fn main() -> std::io::Result<()> {
    let data1 = [1; 8];
    let data2 = [15; 8];
    let io_slice1 = IoSlice::new(&data1);
    let io_slice2 = IoSlice::new(&data2);
    let mut buffer = File::create("foo.txt")?;

    // Writes some prefix of the byte string, not necessarily all of it.
    buffer.write_vectored(&[io_slice1, io_slice2])?;

    Ok(())
}
```

### `is_write_vectored`

```rust
fn is_write_vectored(&self) -> bool
```

Determines whether this writer has an efficient `write_vectored` implementation.

This is a nightly-only experimental API: `can_vector`.

If a writer uses the default `write_vectored` implementation, callers may want to coalesce writes into a single buffer for better performance. The default implementation returns `false`.

### `write_all`

```rust
fn write_all(&mut self, buf: &[u8]) -> Result<(), Error>
```

Attempts to write the entire buffer.

The method repeatedly calls `write` until there is no more data or an error other than `ErrorKind::Interrupted` is returned. It returns the first non-`Interrupted` error.

If the buffer is empty, `write` is never called.

#### Example

```rust
use std::fs::File;
use std::io::Write;

fn main() -> std::io::Result<()> {
    let mut buffer = File::create("foo.txt")?;
    buffer.write_all(b"some bytes")?;

    Ok(())
}
```

### `write_all_vectored`

```rust
fn write_all_vectored(&mut self, bufs: &mut [IoSlice<'_>]) -> Result<(), Error>
```

Attempts to write all data from multiple buffers.

This is a nightly-only experimental API: `write_all_vectored`.

The method repeatedly calls `write_vectored` until all buffers have been written or an error other than `ErrorKind::Interrupted` is returned. It returns the first non-`Interrupted` error.

If all buffers are empty, `write_vectored` is never called.

#### Notes

Unlike `write_vectored`, this method takes a mutable slice of `IoSlice` values so it can track the bytes already written.

After the method returns, the contents of `bufs` are unspecified. The underlying buffers referenced by the `IoSlice` values are unchanged and may be reused.

#### Example

```rust
#![feature(write_all_vectored)]

use std::io::{IoSlice, Write};

fn main() -> std::io::Result<()> {
    let mut writer = Vec::new();
    let bufs = &mut [
        IoSlice::new(&[1]),
        IoSlice::new(&[2, 3]),
        IoSlice::new(&[4, 5, 6]),
    ];

    writer.write_all_vectored(bufs)?;

    // The contents of `bufs` are unspecified after the call.
    assert_eq!(writer, &[1, 2, 3, 4, 5, 6]);

    Ok(())
}
```

### `write_fmt`

```rust
fn write_fmt(&mut self, args: Arguments<'_>) -> Result<(), Error>
```

Writes a formatted string into this writer and returns any error encountered.

This method is primarily used with the `format_args!` macro. The `write!` macro is generally preferred.

The method internally uses `write_all`, so it continues writing until all formatted data has been written or an error occurs. Partial writes are not represented in the return type.

#### Example

```rust
use std::fs::File;
use std::io::Write;

fn main() -> std::io::Result<()> {
    let mut buffer = File::create("foo.txt")?;

    write!(buffer, "{:.*}", 2, 1.234567)?;

    // Equivalent to the preceding `write!` call:
    buffer.write_fmt(format_args!("{:.*}", 2, 1.234567))?;

    Ok(())
}
```

### `by_ref`

```rust
fn by_ref(&mut self) -> &mut Self
where
    Self: Sized
```

Creates a by-reference adapter for this writer.

The returned adapter also implements `Write` and borrows the original writer.

#### Example

```rust
use std::fs::File;
use std::io::Write;

fn main() -> std::io::Result<()> {
    let mut buffer = File::create("foo.txt")?;
    let reference = buffer.by_ref();

    reference.write_all(b"some bytes")?;

    Ok(())
}
```

## Dyn compatibility

This trait is dyn-compatible. In older Rust versions, dyn compatibility was called object safety.

## Implementors

The following types implement `yaml_serde::io::Write`:

- `&ChildStdin`
- `&Empty`
- `&File`
- `&PipeWriter`
- `&Sink`
- `&Stderr`
- `&Stdout`
- `&TcpStream`
- `&mut [u8]`
- `ChildStdin`
- `Cursor<&mut [u8]>`
- `Empty`
- `File`
- `PipeWriter`
- `Sink`
- `Stderr`
- `StderrLock<'_>`
- `Stdout`
- `StdoutLock<'_>`
- `TcpStream`
- `UnixStream`
- `&UnixStream`
- `BorrowedCursor<'a, u8>`
- `Vec<u8, A>`
  - Requires `A: Allocator`.
  - Writing appends bytes to the vector, which grows as needed.
- `VecDeque<u8, A>`
  - Requires `A: Allocator`.
  - Available only when `no_global_oom_handling` is not enabled.
  - Writing appends bytes to the deque, which grows as needed.
- `&mut W`
  - Requires `W: Write + ?Sized`.
- `Arc<W>`
  - Requires `W: Write + IoHandle + ?Sized`.
  - Also requires `&'a W: Write` for every lifetime `'a`.
  - Available when `target_has_atomic = "ptr"`, `no_rc` is not enabled, and `no_sync` is not enabled.
- `Box<W>`
  - Requires `W: Write + ?Sized`.
- `BufWriter<W>`
  - Requires `W: Write + ?Sized`.
- `LineWriter<W>`
  - Requires `W: Write + ?Sized`.
- `Cursor<[u8; N]>`
