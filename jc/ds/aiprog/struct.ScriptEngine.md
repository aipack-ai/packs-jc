# ScriptEngine

```rust
pub struct ScriptEngine { /* private fields */ }
```

## Implementations

### impl ScriptEngine

- [builder](#method.builder)
- [generate_doc](#method.generate_doc)
- [start](#method.start)
- [exec](#method.exec)

```rust
pub fn builder() -> ScriptEngineBuilder
```

```rust
pub fn generate_doc(&self) -> Result<String, EngineError>
```

```rust
pub fn start(&self) -> Result<RunningEngine, EngineError>
```

```rust
pub async fn exec(&self, script: &str, context: RunningContext) -> Result<RunOutcome<Value>, EngineError>
```

## Trait Implementations

### impl Clone for ScriptEngine

- [clone](#method.clone)
- [clone_from](#method.clone_from)

```rust
fn clone(&self) -> ScriptEngine
```

Returns a duplicate of the value. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#tymethod.clone)

```rust
fn clone_from(&mut self, source: &Self)
```

Performs copy-assignment from `source`. [Read more](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html#method.clone_from)

## Auto Trait Implementations

- impl [Freeze](https://doc.rust-lang.org/1.97.1/core/marker/trait.Freeze.html) for [ScriptEngine](struct.ScriptEngine.html)
- impl ![RefUnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.RefUnwindSafe.html) for [ScriptEngine](struct.ScriptEngine.html)
- impl [Send](https://doc.rust-lang.org/1.97.1/core/marker/trait.Send.html) for [ScriptEngine](struct.ScriptEngine.html)
- impl [Sync](https://doc.rust-lang.org/1.97.1/core/marker/trait.Sync.html) for [ScriptEngine](struct.ScriptEngine.html)
- impl [Unpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.Unpin.html) for [ScriptEngine](struct.ScriptEngine.html)
- impl [UnsafeUnpin](https://doc.rust-lang.org/1.97.1/core/marker/trait.UnsafeUnpin.html) for [ScriptEngine](struct.ScriptEngine.html)
- impl ![UnwindSafe](https://doc.rust-lang.org/1.97.1/core/panic/unwind_safe/trait.UnwindSafe.html) for [ScriptEngine](struct.ScriptEngine.html)

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
fn into_either_with(self, into_left: F) -> Either
```

### impl PolicyExt for T

```rust
fn and(self, other: P) -> And
```

```rust
fn or(self, other: P) -> Or
```

### impl ToOwned for T

- type [Owned](https://doc.rust-lang.org/1.97.1/alloc/borrow/trait.ToOwned.html#associatedtype.Owned) = T

```rust
fn to_owned(&self) -> T
```

```rust
fn clone_into(&self, target: &mut T)
```

### impl TryFrom for T

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryFrom.html#associatedtype.Error) = Infallible

```rust
fn try_from(value: U) -> Result<T, TryFrom::Error>
```

### impl TryInto for T

- type [Error](https://doc.rust-lang.org/1.97.1/core/convert/trait.TryInto.html#associatedtype.Error) = TryFrom::Error

```rust
fn try_into(self) -> Result<T, TryFrom::Error>
```

### impl WithSubscriber for T

```rust
fn with_subscriber(self, subscriber: S) -> WithDispatch
```

```rust
fn with_current_subscriber(self) -> WithDispatch
```

### impl AutoreleaseSafe for T

### impl MaybeSend for T

### impl MaybeSync for T
