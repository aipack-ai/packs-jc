# `yaml_serde::io::Read` Trait

## Trait Declaration

```rust
pub trait Read {
    fn read(&mut self, buf: &mut [u8]) -> Result<usize, Error>;

    fn read_vectored(&mut self, bufs: &mut [IoSliceMut<'_>]) -> Result<usize, Error>;

    fn is_read_vectored(&self) -> bool;

    fn read_to_end(&mut self, buf: &mut Vec<u8>) -> Result<usize, Error>;

    fn read_to_string(&mut self, buf: &mut String) -> Result<usize, Error>;

    fn read_exact(&mut self, buf: &mut [u8]) -> Result<(), Error>;

    fn read_buf(&mut self, buf: BorrowedCursor<'_, u8>) -> Result<(), Error>;

    fn read_buf_exact(&mut self, cursor: BorrowedCursor<'_, u8>) -> Result<(), Error>;

    fn by_ref(&mut self) -> &mut Self
    where
        Self: Sized;

    fn bytes(self) -> Bytes
    where
        Self: Sized;

    fn chain<R>(self, next: R) -> Chain<Self, R>
    where
        R: Read,
        Self: Sized;

    fn take(self, limit: u64) -> Take<Self>
    where
        Self: Sized;

    fn read_array<const N: usize>(&mut self) -> Result<[u8; N], Error>
    where
        Self: Sized;

    fn read_le<T>(&mut self) -> Result<T, Error>
    where
        T: FromEndianBytes,
        Self: Sized;

    fn read_be<T>(&mut self) -> Result<T, Error>
    where
        T: FromEndianBytes,
        Self: Sized;
}
```

- Version: 1.0.0
- Source: [Rust standard library `Read` trait](https://doc.rust-lang.org/nightly/src/alloc/io/read.rs.html#87)
- Module: `yaml_serde::io`

## Description

The `Read` trait allows reading bytes from a source.

Implementors of the `Read` trait are called readers. Readers are defined by the required `read` method. Each call to `read` attempts to pull bytes from the source into a provided buffer.

The other methods are implemented in terms of `read`, allowing implementors to provide multiple ways to read bytes while only implementing a single required method.

Readers are intended to be composable. Many types throughout `std::io` accept or provide values implementing `Read`.

Each call to `read` may involve a system call. For improved efficiency, use a buffered reader such as `BufReader` when appropriate.

Repeated reads use the same cursor. For example, calling `read_to_end` twice on a `File` only returns the file contents the first time. Call `rewind` before reading again when necessary.

## Required Methods

At least one of the following methods must be implemented:

- `read`
- `read_buf`

## Provided Methods

### `read`

```rust
fn read(&mut self, buf: &mut [u8]) -> Result<usize, Error>
```

Pulls bytes from the source into `buf` and returns the number of bytes read.

The method does not guarantee whether it blocks while waiting for data. If the reader needs to block but cannot, it typically returns an error.

When the method returns `Ok(n)`, implementations must guarantee that `0 <= n <= buf.len()`. A nonzero `n` means that `n` bytes were written to `buf`.

A return value of `0` can indicate either:

1. The reader reached the end of the source and will probably not produce more bytes.
2. The supplied buffer has zero length.

It is valid for `n` to be smaller than the buffer length even when the reader has not reached the end of the source. This can happen when fewer bytes are currently available or when the operation is interrupted by a signal.

Because this trait is safe to implement, unsafe callers must not rely on `n <= buf.len()` for memory safety. Implementations should only write to `buf`, but callers must ensure that `buf` is initialized before calling `read`.

#### Errors

If an I/O or other error occurs, an error is returned and no bytes must have been read.

An error with kind `ErrorKind::Interrupted` is non-fatal. The operation should be retried when there is nothing else to do.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::prelude::*;

fn main() -> io::Result<()> {
    let mut f = File::open("foo.txt")?;
    let mut buffer = [0; 10];

    let n = f.read(&mut buffer)?;
    println!("The bytes: {:?}", &buffer[..n]);

    Ok(())
}
```

### `read_vectored`

```rust
fn read_vectored(
    &mut self,
    bufs: &mut [IoSliceMut<'_>],
) -> Result<usize, Error>
```

Reads into a slice of buffers.

Data is copied into each buffer in order. The final buffer may be only partially filled. The method must behave equivalently to a single `read` call using concatenated buffers.

The default implementation calls `read` with the first nonempty buffer, or with an empty buffer if all buffers are empty.

### `is_read_vectored`

```rust
fn is_read_vectored(&self) -> bool
```

> This is a nightly-only experimental API: `can_vector`.

Determines whether the reader has an efficient `read_vectored` implementation.

If the reader uses the default `read_vectored` implementation, callers may improve performance by coalescing the buffers into one buffer.

The default implementation returns `false`.

### `read_to_end`

```rust
fn read_to_end(&mut self, buf: &mut Vec<u8>) -> Result<usize, Error>
```

Reads all bytes until EOF and appends them to `buf`.

The method repeatedly calls `read` until it returns `Ok(0)` or a non-`Interrupted` error. On success, it returns the total number of bytes read.

#### Errors

- `ErrorKind::Interrupted` errors are ignored and the operation continues.
- Any other error causes the method to return immediately.
- Bytes read before an error are retained in `buf`.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::prelude::*;

fn main() -> io::Result<()> {
    let mut f = File::open("foo.txt")?;
    let mut buffer = Vec::new();

    f.read_to_end(&mut buffer)?;

    Ok(())
}
```

See also `std::fs::read` for a convenience function that reads a file into a byte vector.

#### Implementing `read_to_end`

When implementing `Read`, memory should preferably be allocated with `Vec::try_reserve`. However, not all implementations guarantee this behavior, so `read_to_end` may not handle out-of-memory situations gracefully.

```rust
fn read_to_end(&mut self, dest_vec: &mut Vec<u8>) -> io::Result<usize> {
    let initial_vec_len = dest_vec.len();

    loop {
        let src_buf = self.example_datasource.fill_buf()?;

        if src_buf.is_empty() {
            break;
        }

        dest_vec.try_reserve(src_buf.len())?;
        dest_vec.extend_from_slice(src_buf);

        // Perform irreversible side effects only after `try_reserve`
        // succeeds, avoiding data loss on allocation failure.
        let read = src_buf.len();
        self.example_datasource.consume(read);
    }

    Ok(dest_vec.len() - initial_vec_len)
}
```

#### Usage Notes

`read_to_end` attempts to read until EOF. Continuous streams that do not send EOF can cause it to block indefinitely.

For example:

```sh
cat file | my-rust-program
```

terminates when `cat` closes the stream, while the following command generally does not terminate:

```sh
yes | my-rust-program
```

For line-oriented input, use `lines` with a `BufReader`, or call `read` directly.

### `read_to_string`

```rust
fn read_to_string(&mut self, buf: &mut String) -> Result<usize, Error>
```

Reads all bytes until EOF and appends them to `buf`.

On success, returns the number of bytes read and appended.

#### Errors

If the input is not valid UTF-8, an error is returned and `buf` remains unchanged. Other error behavior is the same as `read_to_end`.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::prelude::*;

fn main() -> io::Result<()> {
    let mut f = File::open("foo.txt")?;
    let mut buffer = String::new();

    f.read_to_string(&mut buffer)?;

    Ok(())
}
```

See also `std::fs::read_to_string` for a convenience function that reads a file into a string.

#### Usage Notes

Like `read_to_end`, `read_to_string` can block indefinitely when reading from a continuous stream that does not send EOF.

For line-oriented input, use `lines` with a `BufReader`, or call `read` directly.

### `read_exact`

```rust
fn read_exact(&mut self, buf: &mut [u8]) -> Result<(), Error>
```

Reads enough bytes to completely fill `buf`.

#### Errors

- `ErrorKind::Interrupted` errors are ignored and the operation continues.
- If EOF is reached before `buf` is filled, the method returns `ErrorKind::UnexpectedEof`.
- Any other error causes the method to return immediately.
- If an error occurs, the contents of `buf` are unspecified.
- The method never reads more bytes than needed to fill `buf`.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::prelude::*;

fn main() -> io::Result<()> {
    let mut f = File::open("foo.txt")?;
    let mut buffer = [0; 10];

    f.read_exact(&mut buffer)?;

    Ok(())
}
```

### `read_buf`

```rust
fn read_buf(
    &mut self,
    buf: BorrowedCursor<'_, u8>,
) -> Result<(), Error>
```

> This is a nightly-only experimental API: `read_buf`.

Reads bytes into a `BorrowedCursor`.

Unlike `read`, this method accepts a cursor that can be used with uninitialized buffers. New data is appended to the cursor's existing contents.

The default implementation delegates to `read`.

Although this method can return both data and an error, implementations are advised not to do so.

### `read_buf_exact`

```rust
fn read_buf_exact(
    &mut self,
    cursor: BorrowedCursor<'_, u8>,
) -> Result<(), Error>
```

> This is a nightly-only experimental API: `read_buf`.

Reads exactly enough bytes to fill `cursor`.

This is equivalent to `read_exact`, except that it accepts a `BorrowedCursor` to support uninitialized buffers.

#### Errors

- `ErrorKind::Interrupted` errors are ignored and the operation continues.
- If EOF is reached before the cursor is filled, the method returns `ErrorKind::UnexpectedEof`.
- Any other error causes the method to return immediately.
- If an error occurs, all bytes read are appended to `cursor`.

### `by_ref`

```rust
fn by_ref(&mut self) -> &mut Self
where
    Self: Sized
```

Creates a by-reference adapter for the reader.

The returned adapter also implements `Read` and borrows the current reader.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::Read;

fn main() -> io::Result<()> {
    let mut f = File::open("foo.txt")?;
    let mut buffer = Vec::new();
    let mut other_buffer = Vec::new();

    {
        let reference = f.by_ref();

        // Read at most five bytes.
        reference.take(5).read_to_end(&mut buffer)?;
    }

    // The original file remains usable.
    f.read_to_end(&mut other_buffer)?;

    Ok(())
}
```

### `bytes`

```rust
fn bytes(self) -> Bytes
where
    Self: Sized
```

Transforms the reader into an iterator over its bytes.

The returned iterator has the following item type:

```rust
Result<u8, Error>
```

Each item is `Ok` when a byte is read successfully and `Err` otherwise. EOF is represented by `None`.

The default implementation calls `read` once for each byte and can be inefficient for sources such as files. Use a `BufReader` when appropriate.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::{BufReader, Read};

fn main() -> io::Result<()> {
    let reader = BufReader::new(File::open("foo.txt")?);

    for byte in reader.bytes() {
        println!("{}", byte?);
    }

    Ok(())
}
```

### `chain`

```rust
fn chain<R>(self, next: R) -> Chain<Self, R>
where
    R: Read,
    Self: Sized
```

Creates an adapter that chains this reader with another reader.

The returned reader first reads all bytes from `self` until EOF, then reads from `next`.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::prelude::*;

fn main() -> io::Result<()> {
    let f1 = File::open("foo.txt")?;
    let f2 = File::open("bar.txt")?;
    let mut handle = f1.chain(f2);
    let mut buffer = String::new();

    handle.read_to_string(&mut buffer)?;

    Ok(())
}
```

### `take`

```rust
fn take(self, limit: u64) -> Take<Self>
where
    Self: Sized
```

Creates an adapter that reads at most `limit` bytes.

After the limit is reached, the adapter always returns EOF (`Ok(0)`). Read errors do not count toward the limit, and subsequent reads may succeed.

#### Example

```rust
use std::fs::File;
use std::io;
use std::io::prelude::*;

fn main() -> io::Result<()> {
    let f = File::open("foo.txt")?;
    let mut handle = f.take(5);
    let mut buffer = [0; 5];

    handle.read(&mut buffer)?;

    Ok(())
}
```

### `read_array`

```rust
fn read_array<const N: usize>(&mut self) -> Result<[u8; N], Error>
where
    Self: Sized
```

> This is a nightly-only experimental API: `read_array`.

Reads and returns a fixed-size byte array.

The array size is specified with a const generic, such as `reader.read_array::<8>()`, or inferred from the expected return type.

As with `read_exact`, reaching EOF before reading the requested number of bytes returns `ErrorKind::UnexpectedEof`.

#### Example

```rust
#![feature(read_array)]

use std::io::Cursor;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut buf = Cursor::new([
        1, 2, 3, 4, 5, 6, 7, 8,
        9, 8, 7, 6, 5, 4, 3, 2,
    ]);

    let x = u64::from_le_bytes(buf.read_array()?);
    let y = u32::from_be_bytes(buf.read_array()?);
    let z = u16::from_be_bytes(buf.read_array()?);

    assert_eq!(x, 0x0807060504030201);
    assert_eq!(y, 0x09080706);
    assert_eq!(z, 0x0504);

    Ok(())
}
```

### `read_le`

```rust
fn read_le<T>(&mut self) -> Result<T, Error>
where
    T: FromEndianBytes,
    Self: Sized
```

> This is a nightly-only experimental API: `read_le`.

Reads and returns a type, such as an integer, in little-endian byte order.

The type can be specified with turbofish syntax, such as `reader.read_le::<u64>()`, or inferred from the expected return type.

As with `read_exact`, reaching EOF before reading the requested number of bytes returns `ErrorKind::UnexpectedEof`.

#### Example

```rust
#![feature(read_le)]

use std::io::Cursor;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut buf = Cursor::new([
        1, 2, 3, 4, 5, 6, 7, 8,
        9, 8, 7, 6, 5, 4, 3, 2,
    ]);

    let x: u64 = buf.read_le()?;
    let y: u32 = buf.read_le()?;
    let z: u16 = buf.read_le()?;

    assert_eq!(x, 0x0807060504030201);
    assert_eq!(y, 0x06070809);
    assert_eq!(z, 0x0504);

    Ok(())
}
```

### `read_be`

```rust
fn read_be<T>(&mut self) -> Result<T, Error>
where
    T: FromEndianBytes,
    Self: Sized
```

> This is a nightly-only experimental API: `read_be`.

Reads and returns a type, such as an integer, in big-endian byte order.

The type can be specified with turbofish syntax, such as `reader.read_be::<u64>()`, or inferred from the expected return type.

As with `read_exact`, reaching EOF before reading the requested number of bytes returns `ErrorKind::UnexpectedEof`.

#### Example

```rust
#![feature(read_be)]

use std::io::Cursor;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut buf = Cursor::new([
        1, 2, 3, 4, 5, 6, 7, 8,
        9, 8, 7, 6, 5, 4, 3, 2,
    ]);

    let x: u64 = buf.read_be()?;
    let y: u32 = buf.read_be()?;
    let z: u16 = buf.read_be()?;

    assert_eq!(x, 0x0102030405060708);
    assert_eq!(y, 0x09080706);
    assert_eq!(z, 0x0504);

    Ok(())
}
```

## Dyn Compatibility

The `Read` trait is dyn-compatible. In older Rust versions, dyn compatibility was called object safety.

## Implementors

The following types implement `Read`:

- `&File`
- `&PipeReader`
- `&Stdin`
- `&TcpStream`
- `&[u8]`
  - Reading consumes bytes from the front of the slice.
  - The slice points to the unread portion after each read.
  - The slice is empty at EOF.
- `ChildStderr`
- `ChildStdout`
- `Empty`
- `File`
- `PipeReader`
- `Repeat`
- `Stdin`
- `StdinLock<'_>`
- `TcpStream`
- `UnixStream`
- `&UnixStream`
- `VecDeque<u8, A>`
  - Requires `A: Allocator`.
  - Available only when `no_global_oom_handling` is not enabled.
  - Reading consumes bytes from the front of the deque.
- `&mut R`
  - Requires `R: Read + ?Sized`.
- `Arc<R>`
  - Requires `R: Read + IoHandle + ?Sized`.
  - Available on targets with pointer-sized atomics and when `no_rc` and `no_sync` are not enabled.
- `Box<R>`
  - Requires `R: Read + ?Sized`.
- `BufReader<R>`
  - Requires `R: Read + ?Sized`.
- `Chain<T, U>`
  - Requires `T: Read` and `U: Read`.
- `Cursor<T>`
  - Requires `T: AsRef<[u8]>`.
- `Take<T>`
  - Requires `T: Read`.
