# LuaExecutionLimits

## Fields

- [`max_instructions`](#structfield.max_instructions)
- [`max_memory_bytes`](#structfield.max_memory_bytes)
- [`wall_clock_timeout`](#structfield.wall_clock_timeout)

## Methods

- [`max_instructions`](#method.max_instructions)
- [`max_memory_bytes`](#method.max_memory_bytes)
- [`wall_clock_timeout`](#method.wall_clock_timeout)
- [`with_max_instructions`](#method.with_max_instructions)
- [`with_max_memory_bytes`](#method.with_max_memory_bytes)
- [`with_wall_clock_timeout`](#method.with_wall_clock_timeout)

## Trait Implementations

- [Clone](#impl-Clone-for-LuaExecutionLimits)
- [Debug](#impl-Debug-for-LuaExecutionLimits)
- [Default](#impl-Default-for-LuaExecutionLimits)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-LuaExecutionLimits)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-LuaExecutionLimits)
- [Send](#impl-Send-for-LuaExecutionLimits)
- [Sync](#impl-Sync-for-LuaExecutionLimits)
- [Unpin](#impl-Unpin-for-LuaExecutionLimits)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-LuaExecutionLimits)
- [UnwindSafe](#impl-UnwindSafe-for-LuaExecutionLimits)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow&lt;T&gt;](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut&lt;T&gt;](#impl-BorrowMut%3CT%3E-for-T)
- [CloneToUninit](#impl-CloneToUninit-for-T)
- [DynClone](#impl-DynClone-for-T)
- [From&lt;T&gt;](#impl-From%3CT%3E-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into&lt;U&gt;](#impl-Into%3CU%3E-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [ToOwned](#impl-ToOwned-for-T)
- [TryFrom&lt;U&gt;](#impl-TryFrom%3CU%3E-for-T)
- [TryInto&lt;U&gt;](#impl-TryInto%3CU%3E-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

# Struct LuaExecutionLimits

```rust
pub struct LuaExecutionLimits {
    pub max_memory_bytes: Option<usize>,
    pub max_instructions: Option<u64>,
    pub wall_clock_timeout: Option<Duration>,
}
```

## Fields

- `max_memory_bytes`: `Option<usize>`
- `max_instructions`: `Option<u64>`
- `wall_clock_timeout`: `Option<Duration>`

## Implementations

### impl LuaExecutionLimits

```rust
pub fn with_max_memory_bytes(self, max_memory_bytes: usize) -> Self
```

```rust
pub fn with_max_instructions(self, max_instructions: u64) -> Self
```

```rust
pub fn with_wall_clock_timeout(self, wall_clock_timeout: Duration) -> Self
```

```rust
pub fn max_memory_bytes(&self) -> Option<usize>
```

```rust
pub fn max_instructions(&self) -> Option<u64>
```

```rust
pub fn wall_clock_timeout(&self) -> Option<Duration>
```

## Trait Implementations

### impl Clone for LuaExecutionLimits

```rust
fn clone(&self) -> LuaExecutionLimits
```

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`.

### impl Debug for LuaExecutionLimits

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

Formats the value using the given formatter.

### impl Default for LuaExecutionLimits

```rust
fn default() -> LuaExecutionLimits
```

Returns the "default value" for a type.

## Auto Trait Implementations

- impl Freeze for LuaExecutionLimits
- impl RefUnwindSafe for LuaExecutionLimits
- impl Send for LuaExecutionLimits
- impl Sync for LuaExecutionLimits
- impl Unpin for LuaExecutionLimits
- impl UnsafeUnpin for LuaExecutionLimits
- impl UnwindSafe for LuaExecutionLimits

## Blanket Implementations

### impl Any for T

```rust
fn type_id(&self) -> TypeId
```

### impl Borrow for T

```rust
fn borrow(&self) -> &T
```

### impl BorrowMut for T

```rust
fn borrow_mut(&mut self) -> &mut T
```

### impl CloneToUninit for T

```rust
unsafe fn clone_to_uninit(&self, dest: *mut u8)
```

### impl DynClone for T

```rust
fn __clone_box(&self, _: Private) -> *mut ()
```

### impl From for T

```rust
fn from(t: T) -> T
```

### impl Instrument for T

```rust
fn instrument(self, span: Span) -> Instrumented
```

```rust
fn in_current_span(self) -> Instrumented
```

### impl Into for T

```rust
fn into(self) -> U
```

### impl IntoEither for T

```rust
fn into_either(self, into_left: bool) -> Either
```

```rust
fn into_either_with(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool
```

### impl PolicyExt for T

```rust
fn and(self, other: P) -> And where T: Policy, P: Policy
```

```rust
fn or(self, other: P) -> Or where T: Policy, P: Policy
```

### impl ToOwned for T

- type Owned = T

```rust
fn to_owned(&self) -> T
```

```rust
fn clone_into(&self, target: &mut T)
```

### impl TryFrom for T

- type Error = Infallible

```rust
fn try_from(value: U) -> Result
```

### impl TryInto for T

- type Error = TryFrom::Error

```rust
fn try_into(self) -> Result
```

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into
```

```rust
fn with_current_subscriber(self) -> WithDispatch
```

### impl AutoreleaseSafe for T

### impl MaybeSend for T

### impl MaybeSync for T
