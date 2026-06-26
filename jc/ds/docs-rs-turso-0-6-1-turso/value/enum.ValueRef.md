# ValueRef

A borrowed version of `Value`.

## Variants

- `Null`
- `Integer(i64)`
- `Real(f64)`
- `Text(&'a [u8])`
- `Blob(&'a [u8])`

## Implementations

### `impl ValueRef<'_>`

```text
pub fn data_type(&self) -> ValueType
```

```text
pub fn is_null(&self) -> bool
```

Returns `true` if the value ref is `Null`.

```text
pub fn is_integer(&self) -> bool
```

Returns `true` if the value ref is `Integer`.

```text
pub fn as_integer(&self) -> Option<&i64>
```

```text
pub fn is_real(&self) -> bool
```

Returns `true` if the value ref is `Real`.

```text
pub fn as_real(&self) -> Option<&f64>
```

```text
pub fn is_text(&self) -> bool
```

Returns `true` if the value ref is `Text`.

```text
pub fn as_text(&self) -> Option<&[u8]>
```

```text
pub fn is_blob(&self) -> bool
```

Returns `true` if the value ref is `Blob`.

```text
pub fn as_blob(&self) -> Option<&[u8]>
```

## Trait Implementations

### `impl<'a> Debug for ValueRef<'a>`

```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result
```

### `impl<'a> From<&'a [u8]> for ValueRef<'a>`

```text
fn from(s: &[u8]) -> ValueRef<'_>
```

### `impl<'a> From<&'a Value> for ValueRef<'a>`

```text
fn from(v: &'a Value) -> ValueRef<'a>
```

### `impl<'a> From<&'a str> for ValueRef<'a>`

```text
fn from(s: &str) -> ValueRef<'_>
```

### `impl<'a, T> From<Option<T>> for ValueRef<'a>` where `T: Into<ValueRef<'a>>`

```text
fn from(s: Option<T>) -> ValueRef<'a>
```

### `impl From<ValueRef<'_>> for Value`

```text
fn from(vr: ValueRef<'_>) -> Value
```

## Auto Trait Implementations

- `impl<'a> Freeze for ValueRef<'a>`
- `impl<'a> RefUnwindSafe for ValueRef<'a>`
- `impl<'a> Send for ValueRef<'a>`
- `impl<'a> Sync for ValueRef<'a>`
- `impl<'a> Unpin for ValueRef<'a>`
- `impl<'a> UnsafeUnpin for ValueRef<'a>`
- `impl<'a> UnwindSafe for ValueRef<'a>`

## Blanket Implementations

- `impl<T> Any for T` where `T: 'static + ?Sized`
- `impl<T> Borrow<T> for T` where `T: ?Sized`
- `impl<T> BorrowMut<T> for T` where `T: ?Sized`
- `impl<T> Downcast for T` where `T: Any`
- `impl<T> DowncastSend for T` where `T: Any + Send`
- `impl<T> DowncastSync for T` where `T: Any + Send + Sync`
- `impl<T> From<T> for T`
- `impl<T> Instrument for T`
- `impl<T> Into<U> for T` where `U: From<T>`
- `impl<T> IntoEither for T`
- `impl<T> IntoValue for T` where `T: TryInto<Value>`, `TryInto<Value>::Error: Into<Box<dyn Error + Sync + Send>>`
- `impl<T> Pointable for T`
- `impl<T> Same for T`
- `impl<T> TryFrom<U> for T` where `U: Into<T>`
- `impl<T> TryInto<U> for T` where `U: TryFrom<T>`
- `impl<T, V> VZip<V> for T` where `V: MultiLane`
- `impl<T> WithSubscriber for T`
- `impl<T> Fruit for T` where `T: Send + Downcast`

## Enum Definition

```text
pub enum ValueRef<'a> {
    Null,
    Integer(i64),
    Real(f64),
    Text(&'a [u8]),
    Blob(&'a [u8]),
}
```
