# Struct LuaRuntimePolicy

```rust
pub struct LuaRuntimePolicy { /* private fields */ }
```

## Implementations

### impl LuaRuntimePolicy

- pub fn [with_std_lib_policy](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html)(self, policy: LuaStdLibPolicy) -> Self
- pub fn [with_limits](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html)(self, limits: LuaExecutionLimits) -> Self
- pub fn [std_lib_policy](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html)(&self) -> &LuaStdLibPolicy
- pub fn [limits](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html)(&self) -> &LuaExecutionLimits

## Trait Implementations

### impl Clone for LuaRuntimePolicy

- fn [clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)(&self) -> LuaRuntimePolicy
- fn [clone_from](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)(&mut self, source: &Self)

### impl Debug for LuaRuntimePolicy

- fn [fmt](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html#tymethod.fmt)(&self, f: &mut Formatter<'_>) -> Result

### impl Default for LuaRuntimePolicy

- fn [default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html#tymethod.default)() -> LuaRuntimePolicy

## Auto Trait Implementations

- impl Freeze for LuaRuntimePolicy
- impl RefUnwindSafe for LuaRuntimePolicy
- impl Send for LuaRuntimePolicy
- impl Sync for LuaRuntimePolicy
- impl Unpin for LuaRuntimePolicy
- impl UnsafeUnpin for LuaRuntimePolicy
- impl UnwindSafe for LuaRuntimePolicy

## Blanket Implementations

### impl Any for T

where T: 'static + ?Sized

- fn [type_id](https://doc.rust-lang.org/1.97.1/core/any/trait.Any.html#tymethod.type_id)(&self) -> TypeId

### impl Borrow for T

where T: ?Sized

- fn [borrow](https://doc.rust-lang.org/1.97.1/core/borrow/trait.Borrow.html#tymethod.borrow)(&self) -> &T

### impl BorrowMut for T

where T: ?Sized

- fn [borrow_mut](https://doc.rust-lang.org/1.97.1/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)(&mut self) -> &mut T

### impl CloneToUninit for T

where T: Clone

- unsafe fn [clone_to_uninit](https://doc.rust-lang.org/1.97.1/core/clone/trait.CloneToUninit.html#tymethod.clone_to_uninit)(&self, dest: *mut u8)

### impl DynClone for T

where T: Clone

- fn [__clone_box](https://docs.rs/dyn-clone/1.0.20/dyn_clone/trait.DynClone.html#tymethod.__clone_box)(&self, _: Private) -> *mut ()

### impl From for T

- fn [from](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html#tymethod.from)(t: T) -> T

### impl Instrument for T

- fn instrument(self, span: Span) -> Instrumented
- fn in_current_span(self) -> Instrumented

### impl Into for T

where U: From

- fn [into](https://doc.rust-lang.org/1.97.1/core/convert/trait.Into.html#tymethod.into)(self) -> U

### impl IntoEither for T

- fn [into_either](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either)(self, into_left: bool) -> Either
- fn [into_either_with](https://docs.rs/either/1/either/into_either/trait.IntoEither.html#method.into_either_with)(self, into_left: F) -> Either where F: FnOnce(&Self) -> bool

### impl PolicyExt for T

where T: ?Sized

- fn and(self, other: P) -> And where T: Policy, P: Policy
- fn or(self, other: P) -> Or where T: Policy, P: Policy

### impl ToOwned for T

where T: Clone

- type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T
- fn [to_owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)(&self) -> T
- fn [clone_into](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#method.clone_into)(&self, target: &mut T)

### impl TryFrom for T

where U: Into

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = Infallible
- fn [try_from](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#tymethod.try_from)(value: U) -> Result<T, <T as TryFrom<U>>::Error>

### impl TryInto for T

where U: TryFrom

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = <U as TryFrom<T>>::Error
- fn [try_into](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#tymethod.try_into)(self) -> Result<U, <U as TryFrom<T>>::Error>

### impl WithSubscriber for T

- fn with_subscriber(self, subscriber: S) -> WithDispatch where S: Into
- fn with_current_subscriber(self) -> WithDispatch

### impl AutoreleaseSafe for T

where T: ?Sized

### impl MaybeSend for T

### impl MaybeSync for T
