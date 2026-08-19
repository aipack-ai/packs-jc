# LuaStdLibPolicy

## Fields

- [base](#structfield.base)
- [coroutine](#structfield.coroutine)
- [debug](#structfield.debug)
- [io](#structfield.io)
- [math](#structfield.math)
- [os](#structfield.os)
- [package](#structfield.package)
- [string](#structfield.string)
- [table](#structfield.table)
- [utf8](#structfield.utf8)

## Methods

- [with_base](#method.with_base)
- [with_coroutine](#method.with_coroutine)
- [with_debug](#method.with_debug)
- [with_io](#method.with_io)
- [with_math](#method.with_math)
- [with_os](#method.with_os)
- [with_package](#method.with_package)
- [with_string](#method.with_string)
- [with_table](#method.with_table)
- [with_utf8](#method.with_utf8)

## Trait Implementations

- [Clone](#impl-Clone-for-LuaStdLibPolicy)
- [Debug](#impl-Debug-for-LuaStdLibPolicy)
- [Default](#impl-Default-for-LuaStdLibPolicy)

## Auto Trait Implementations

- [Freeze](#impl-Freeze-for-LuaStdLibPolicy)
- [RefUnwindSafe](#impl-RefUnwindSafe-for-LuaStdLibPolicy)
- [Send](#impl-Send-for-LuaStdLibPolicy)
- [Sync](#impl-Sync-for-LuaStdLibPolicy)
- [Unpin](#impl-Unpin-for-LuaStdLibPolicy)
- [UnsafeUnpin](#impl-UnsafeUnpin-for-LuaStdLibPolicy)
- [UnwindSafe](#impl-UnwindSafe-for-LuaStdLibPolicy)

## Blanket Implementations

- [Any](#impl-Any-for-T)
- [AutoreleaseSafe](#impl-AutoreleaseSafe-for-T)
- [Borrow](#impl-Borrow%3CT%3E-for-T)
- [BorrowMut](#impl-BorrowMut%3CT%3E-for-T)
- [CloneToUninit](#impl-CloneToUninit-for-T)
- [DynClone](#impl-DynClone-for-T)
- [From](#impl-From%3CT%3E-for-T)
- [Instrument](#impl-Instrument-for-T)
- [Into](#impl-Into%3CU%3E-for-T)
- [IntoEither](#impl-IntoEither-for-T)
- [MaybeSend](#impl-MaybeSend-for-T)
- [MaybeSync](#impl-MaybeSync-for-T)
- [PolicyExt](#impl-PolicyExt-for-T)
- [ToOwned](#impl-ToOwned-for-T)
- [TryFrom](#impl-TryFrom%3CU%3E-for-T)
- [TryInto](#impl-TryInto%3CU%3E-for-T)
- [WithSubscriber](#impl-WithSubscriber-for-T)

## Struct Definition

```rust
pub struct LuaStdLibPolicy {
    pub base: bool,
    pub coroutine: bool,
    pub math: bool,
    pub string: bool,
    pub table: bool,
    pub utf8: bool,
    pub package: bool,
    pub io: bool,
    pub os: bool,
    pub debug: bool,
}
```

## Implementations

### impl LuaStdLibPolicy

```rust
pub fn with_base(self, enabled: bool) -> Self
pub fn with_coroutine(self, enabled: bool) -> Self
pub fn with_math(self, enabled: bool) -> Self
pub fn with_string(self, enabled: bool) -> Self
pub fn with_table(self, enabled: bool) -> Self
pub fn with_utf8(self, enabled: bool) -> Self
pub fn with_package(self, enabled: bool) -> Self
pub fn with_io(self, enabled: bool) -> Self
pub fn with_os(self, enabled: bool) -> Self
pub fn with_debug(self, enabled: bool) -> Self
```

### impl Clone for LuaStdLibPolicy

```rust
fn clone(&self) -> LuaStdLibPolicy
fn clone_from(&mut self, source: &Self)
```

### impl Debug for LuaStdLibPolicy

```rust
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### impl Default for LuaStdLibPolicy

```rust
fn default() -> Self
```
