# Struct RunningContext

```rust
pub struct RunningContext { /* private fields */ }
```

## Implementations

### impl RunningContext

- [Source](../src/aiprog/running_context.rs.html#20-27)
- `pub fn insert(&mut self, value: T) -> Option` where T: [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") + [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") + [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") + 'static,

- [Source](../src/aiprog/running_context.rs.html#29-34)
- `pub fn get(&self) -> Option<[&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)>` where T: [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") + [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") + [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") + 'static,

- [Source](../src/aiprog/running_context.rs.html#36-43)
- `pub fn get_mut(&mut self) -> Option<[&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)>` where T: [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") + [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") + [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") + 'static,

- [Source](../src/aiprog/running_context.rs.html#45-50)
- `pub fn remove(&mut self) -> Option` where T: [Any](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html "trait core::any::Any") + [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") + [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") + 'static,

## Trait Implementations

### impl Debug for RunningContext

- `fn fmt(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html "struct core::fmt::Formatter")<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html "type core::fmt::Result")`
- Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)

### impl Default for RunningContext

- `fn default() -> [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")`
- Returns the "default value" for a type. [Read more](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html "trait core::marker::Freeze") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")
- impl ! [RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html "trait core::panic::unwind_safe::RefUnwindSafe") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html "trait core::marker::Send") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html "trait core::marker::Sync") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html "trait core::marker::Unpin") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html "trait core::marker::UnsafeUnpin") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")
- impl ! [UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html "trait core::panic::unwind_safe::UnwindSafe") for [RunningContext](struct.RunningContext.html "struct aiprog::RunningContext")

## Blanket Implementations

### impl Any for T

- `fn type_id(&self) -> [TypeId](https://doc.rust-lang.org/1.97.1/core/any/struct.TypeId.html "struct core::any::TypeId")`

### impl Borrow for T

- `fn borrow(&self) -> [&T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)`

### impl BorrowMut for T

- `fn borrow_mut(&mut self) -> [&mut T](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)`

### impl From for T

- `fn from(t: T) -> T`

### impl Instrument for T

- `fn instrument(self, span: Span) -> Instrumented`
- `fn in_current_span(self) -> Instrumented`

### impl Into for T

- `fn into(self) -> U`

### impl IntoEither for T

- `fn into_either(self, into_left: [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")`
- `fn into_either_with(self, into_left: F) -> [Either](https://docs.rs/either/1/either/enum.Either.html "enum either::Either")`

### impl PolicyExt for T

- `fn and(self, other: P) -> And`
- `fn or(self, other: P) -> Or`

### impl TryFrom for T

- `type Error = [Infallible](https://doc.rust-lang.org/1.97.1/core/convert/enum.Infallible.html "enum core::convert::Infallible")`
- `fn try_from(value: U) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")`

### impl TryInto for T

- `type Error = TryFrom::Error`
- `fn try_into(self) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html "enum core::result::Result")`

### impl WithSubscriber for T

- `fn with_subscriber(self, subscriber: S) -> WithDispatch`
- `fn with_current_subscriber(self) -> WithDispatch`

### impl AutoreleaseSafe for T
### impl MaybeSend for T
### impl MaybeSync for T
