# JsonSchema in schemars - Rust

## Trait `JsonSchema`

A type which can be described as a JSON Schema document.

This is implemented for many Rust primitive and standard library types.  
This can also be automatically derived on most custom types with `#[derive(JsonSchema)]` by enabling the `derive` feature flag (which is enabled by default). For more info on deriving `JsonSchema`, see the derive macro documentation.

### Source

```rust
pub trait JsonSchema {
    // Required methods
    fn schema_name() -> Cow<'static, str>;
    fn json_schema(generator: &mut SchemaGenerator) -> Schema;

    // Provided methods
    fn inline_schema() -> bool { ... }
    fn schema_id() -> Cow<'static, str> { ... }
}
```

### Examples

#### Deriving an implementation

```rust
use schemars::{schema_for, JsonSchema};

#[derive(JsonSchema)]
struct MyStruct {
    foo: i32,
}

let my_schema = schema_for!(MyStruct);
```

#### Manual implementation

For non-generic types:

```rust
use schemars::{SchemaGenerator, Schema, JsonSchema, json_schema};
use std::borrow::Cow;

struct NonGenericType;

impl JsonSchema for NonGenericType {
    fn schema_name() -> Cow<'static, str> {
        "NonGenericType".into()
    }

    fn schema_id() -> Cow<'static, str> {
        concat!(module_path!(), "::NonGenericType").into()
    }

    fn json_schema(_gen: &mut SchemaGenerator) -> Schema {
        json_schema!({ "foo": "bar" })
    }
}

assert_eq!(NonGenericType::schema_id(), <&mut NonGenericType>::schema_id());
```

For generic types:

```rust
use schemars::{SchemaGenerator, Schema, JsonSchema, json_schema};
use std::{borrow::Cow, marker::PhantomData};

struct GenericType<T>(PhantomData<T>);

impl<T: JsonSchema> JsonSchema for GenericType<T> {
    fn schema_name() -> Cow<'static, str> {
        format!("GenericType_{}", T::schema_name()).into()
    }

    fn schema_id() -> Cow<'static, str> {
        format!("{}::GenericType<{}>", module_path!(), T::schema_id()).into()
    }

    fn json_schema(_gen: &mut SchemaGenerator) -> Schema {
        json_schema!({ "foo": "bar" })
    }
}

assert_eq!(GenericType::<&i32>::schema_id(), <&mut GenericType<&i32>>::schema_id());
```

### Required Methods

#### `fn schema_name() -> Cow<'static, str>`

The name of the generated JSON Schema.  
Used as the title for root schemas and the key within the root’s `definitions` property for subschemas.

#### `fn json_schema(generator: &mut SchemaGenerator) -> Schema`

Generates a JSON Schema for this type.  
If the returned schema depends on any non‑inlined schemas, this method will add them to the `SchemaGenerator`’s schema definitions.  
This should not return a `$ref` schema.

### Provided Methods

#### `fn inline_schema() -> bool`

Whether JSON Schemas generated for this type should be included directly in parent schemas, rather than being re‑used with `$ref`.  
For trivial types (primitives) this should return `true`; for complex types it should return `false`. Recursive types **must** return `false`.  
Default: `false`.

#### `fn schema_id() -> Cow<'static, str>`

Returns a string that uniquely identifies the schema produced by this type.  
If two types produce different schemas, they **must** have different `schema_id()`s; identical schemas should *ideally* have the same `schema_id()`.  
Default: returns the same value as `schema_name()`.

### Dyn Compatibility

This trait is **not** dyn compatible.

---

## Implementations on Foreign Types

For each foreign type, the overridden method signatures are shown.  
The default `schema_id()` implementation is used unless explicitly overridden.

### `()`

```rust
impl JsonSchema for () {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `AtomicBool`, `AtomicI8`, `AtomicI16`, `AtomicI32`, `AtomicI64`, `AtomicIsize`, `AtomicU8`, `AtomicU16`, `AtomicU32`, `AtomicU64`, `AtomicUsize`

For each of these atomic types:

```rust
impl JsonSchema for AtomicType {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `BigDecimal`

```rust
impl JsonSchema for BigDecimal {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Bytes`

```rust
impl JsonSchema for Bytes {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `BytesMut`

```rust
impl JsonSchema for BytesMut {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `CStr`

```rust
impl JsonSchema for CStr {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `CString`

```rust
impl JsonSchema for CString {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Date` (jiff)

```rust
impl JsonSchema for Date {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `DateTime` (jiff)

```rust
impl JsonSchema for DateTime {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Decimal`

```rust
impl JsonSchema for Decimal {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Duration`

```rust
impl JsonSchema for Duration {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `IpAddr`

```rust
impl JsonSchema for IpAddr {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Ipv4Addr`

```rust
impl JsonSchema for Ipv4Addr {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Ipv6Addr`

```rust
impl JsonSchema for Ipv6Addr {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Map<String, Value>`

```rust
impl JsonSchema for Map<String, Value> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `NaiveDate`, `NaiveDateTime`, `NaiveTime`

For each of these chrono types:

```rust
impl JsonSchema for ChronoType {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `NonZeroI8`, `NonZeroI16`, `NonZeroI32`, `NonZeroI64`, `NonZeroI128`, `NonZeroIsize`, `NonZeroU8`, `NonZeroU16`, `NonZeroU32`, `NonZeroU64`, `NonZeroU128`, `NonZeroUsize`

For each non‑zero type:

```rust
impl JsonSchema for NonZeroType {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Number`

```rust
impl JsonSchema for Number {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `OsStr`

```rust
impl JsonSchema for OsStr {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `OsString`

```rust
impl JsonSchema for OsString {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Path`

```rust
impl JsonSchema for Path {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `PathBuf`

```rust
impl JsonSchema for PathBuf {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `RawValue`

```rust
impl JsonSchema for RawValue {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `SignedDuration`

```rust
impl JsonSchema for SignedDuration {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `SmolStr` (0.2.1 and 0.3.2)

Both versions have identical signatures:

```rust
impl JsonSchema for SmolStr {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `SocketAddr`, `SocketAddrV4`, `SocketAddrV6`

For each socket type:

```rust
impl JsonSchema for SocketAddrType {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Span`

```rust
impl JsonSchema for Span {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `String`

```rust
impl JsonSchema for String {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `SystemTime` (requires crate feature `std`)

```rust
impl JsonSchema for SystemTime {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Time`

```rust
impl JsonSchema for Time {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `TimeDelta`

```rust
impl JsonSchema for TimeDelta {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Timestamp`

```rust
impl JsonSchema for Timestamp {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Url`

```rust
impl JsonSchema for Url {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Uuid`

```rust
impl JsonSchema for Uuid {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Value`

```rust
impl JsonSchema for Value {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Version`

```rust
impl JsonSchema for Version {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Weekday`

```rust
impl JsonSchema for Weekday {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### `Zoned`

```rust
impl JsonSchema for Zoned {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### Primitive types: `bool`, `char`, `f32`, `f64`, `i8`, `i16`, `i32`, `i64`, `i128`, `isize`, `str`, `u8`, `u16`, `u32`, `u64`, `u128`, `usize`

Each primitive has identical signatures:

```rust
impl JsonSchema for Primitive {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

Additionally, `char` overrides `schema_id()`:

```rust
impl JsonSchema for char {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

### Wrapper types

#### `&'a T` where `T: JsonSchema + ?Sized`

```rust
impl<'a, T: JsonSchema + ?Sized> JsonSchema for &'a T {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `&'a mut T` where `T: JsonSchema + ?Sized`

```rust
impl<'a, T: JsonSchema + ?Sized> JsonSchema for &'a mut T {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Cow<'a, T>` where `T: JsonSchema + ?Sized + ToOwned`

```rust
impl<'a, T> JsonSchema for Cow<'a, T>
where
    T: JsonSchema + ?Sized + ToOwned,
{
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Arc<T>`, `Box<T>`, `Cell<T>`, `Rc<T>`, `RefCell<T>`, `Reverse<T>`, `RwLock<T>`, `Mutex<T>`, `Weak<T>` (both `rc` and `sync`), `Wrapping<T>`

For each of these wrapper types, the implementation is similar:

```rust
impl<T: JsonSchema + ?Sized> JsonSchema for WrapperType<T> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Arguments<'a>`

```rust
impl<'a> JsonSchema for Arguments<'a> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `PhantomData<T>` where `T: ?Sized`

```rust
impl<T: ?Sized> JsonSchema for PhantomData<T> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Result<T, E>` where `T: JsonSchema, E: JsonSchema`

```rust
impl<T: JsonSchema, E: JsonSchema> JsonSchema for Result<T, E> {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Option<T>` where `T: JsonSchema`

```rust
impl<T: JsonSchema> JsonSchema for Option<T> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Bound<T>`, `Range<T>`, `RangeInclusive<T>` where `T: JsonSchema`

Each of these uses similar signatures:

```rust
impl<T: JsonSchema> JsonSchema for RangeType<T> {
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `SmallVec<A>` where `A::Item: JsonSchema`

```rust
impl<A: Array> JsonSchema for SmallVec<A>
where
    A::Item: JsonSchema,
{
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `ArrayString<CAP>` where `CAP: unsigned int`

```rust
impl<CAP: unsigned int> JsonSchema for ArrayString<CAP> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `ArrayVec<T, CAP>` where `T: JsonSchema, CAP: unsigned int`

```rust
impl<T: JsonSchema, CAP: unsigned int> JsonSchema for ArrayVec<T, CAP> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

### Collection types

#### `BTreeMap<K, V>` where `K: JsonSchema, V: JsonSchema`

```rust
impl<K: JsonSchema, V: JsonSchema> JsonSchema for BTreeMap<K, V> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `HashMap<K, V, H>` where `K: JsonSchema, V: JsonSchema, H: ...`

```rust
impl<K: JsonSchema, V: JsonSchema, H: ...> JsonSchema for HashMap<K, V, H> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `IndexMap<K, V, H>` where `K: JsonSchema, V: JsonSchema, H: ...`

```rust
impl<K: JsonSchema, V: JsonSchema, H: ...> JsonSchema for IndexMap<K, V, H> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `Either<L, R>` where `L: JsonSchema, R: JsonSchema`

```rust
impl<L: JsonSchema, R: JsonSchema> JsonSchema for Either<L, R> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `BTreeSet<T>`, `HashSet<T, H>`, `IndexSet<T, H>` where `T: JsonSchema`

For each set type:

```rust
impl<T: JsonSchema> JsonSchema for SetType<T> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `BinaryHeap<T>`, `LinkedList<T>`, `Vec<T>`, `VecDeque<T>` where `T: JsonSchema`

For each sequence type:

```rust
impl<T: JsonSchema> JsonSchema for SeqType<T> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

#### `[T; N]` for `N = 0..32` and `[T]` (slice)

For arrays of length 0..32 and slices:

```rust
impl<T: JsonSchema> JsonSchema for [T; N] {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
```

Additionally, `[T; 0]` has a specific implementation:

```rust
impl<T: JsonSchema> JsonSchema for [T; 0] {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

#### Tuple types

For tuple types from `(T0,)` up to `(T0, T1, ..., T15)`:

```rust
impl<T0: JsonSchema> JsonSchema for (T0,) {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(generator: &mut SchemaGenerator) -> Schema { ... }
}
// similarly for larger tuples
```

### `DateTime<Tz>` (chrono)

```rust
impl<Tz: TimeZone> JsonSchema for DateTime<Tz> {
    fn inline_schema() -> bool { ... }
    fn schema_name() -> Cow<'static, str> { ... }
    fn schema_id() -> Cow<'static, str> { ... }
    fn json_schema(_: &mut SchemaGenerator) -> Schema { ... }
}
```

---

## Implementors

### `Schema`

```rust
impl JsonSchema for Schema {
    // (provided by the crate itself)
}
```
