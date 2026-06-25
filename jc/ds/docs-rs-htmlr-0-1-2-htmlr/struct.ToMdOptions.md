# ToMdOptions

In crate [htmlr](index.html) 0.1.2

## Struct Definition

[Source](../src/htmlr/to_md/to_md_options.rs.html#4)

```rust
pub struct ToMdOptions(/* private fields */);
```

## Implementations

### impl ToMdOptions

[Source](../src/htmlr/to_md/to_md_options.rs.html#6-10)

#### `pub fn into_htmd_options(self) -> HtmdOptions`

[Source](../src/htmlr/to_md/to_md_options.rs.html#7-9)

```rust
pub fn into_htmd_options(self) -> HtmdOptions
```

Converts `ToMdOptions` into the underlying `HtmdOptions`.

## Trait Implementations

### impl Debug for ToMdOptions

[Source](../src/htmlr/to_md/to_md_options.rs.html#3)

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/nightly/core/fmt/trait.Debug.html#tymethod.fmt)

### impl Default for ToMdOptions

[Source](../src/htmlr/to_md/to_md_options.rs.html#12-22)

```rust
fn default() -> Self
```

Returns the “default value” for a type. [Read more](https://doc.rust-lang.org/nightly/core/default/trait.Default.html#tymethod.default)

### impl From<Option<ToMdOptions>> for ToMdOptions

[Source](../src/htmlr/to_md/to_md_options.rs.html#32-36)

```rust
fn from(o: Option<ToMdOptions>) -> Self
```

Converts to this type from the input type.

### impl From<Options> for ToMdOptions

[Source](../src/htmlr/to_md/to_md_options.rs.html#26-30)

```rust
fn from(opts: HtmdOptions) -> Self
```

Converts to this type from the input type.

## Auto Trait Implementations

- [Freeze](https://doc.rust-lang.org/nightly/core/marker/trait.Freeze.html)
- [RefUnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.RefUnwindSafe.html)
- [Send](https://doc.rust-lang.org/nightly/core/marker/trait.Send.html)
- [Sync](https://doc.rust-lang.org/nightly/core/marker/trait.Sync.html)
- [Unpin](https://doc.rust-lang.org/nightly/core/marker/trait.Unpin.html)
- [UnsafeUnpin](https://doc.rust-lang.org/nightly/core/marker/trait.UnsafeUnpin.html)
- [UnwindSafe](https://doc.rust-lang.org/nightly/core/panic/unwind_safe/trait.UnwindSafe.html)

## Blanket Implementations

- [Any](https://doc.rust-lang.org/nightly/core/any/trait.Any.html) where T: 'static + ?Sized
- [Borrow<T>](https://doc.rust-lang.org/nightly/core/borrow/trait.Borrow.html) where T: ?Sized
- [BorrowMut<T>](https://doc.rust-lang.org/nightly/core/borrow/trait.BorrowMut.html) where T: ?Sized
- [From<T>](https://doc.rust-lang.org/nightly/core/convert/trait.From.html)
- [Into<U>](https://doc.rust-lang.org/nightly/core/convert/trait.Into.html) where U: From<T>
- [TryFrom<U>](https://doc.rust-lang.org/nightly/core/convert/trait.TryFrom.html) where U: Into<T>
- [TryInto<U>](https://doc.rust-lang.org/nightly/core/convert/trait.TryInto.html) where U: TryFrom<T>
