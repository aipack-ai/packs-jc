# Schema

## Description

A JSON Schema.

This wraps a JSON [`Value`](https://docs.rs/serde_json/1.0.140/x86_64-unknown-linux-gnu/serde_json/value/enum.Value.html) that must be either an [object](https://docs.rs/serde_json/1.0.140/x86_64-unknown-linux-gnu/serde_json/value/enum.Value.html#variant.Object) or a [bool](https://docs.rs/serde_json/1.0.140/x86_64-unknown-linux-gnu/serde_json/value/enum.Value.html#variant.Bool).

A custom JSON schema can be created using the `json_schema!` macro:

```rust
use schemars::{Schema, json_schema};
let my_schema: Schema = json_schema!({
    "type": ["object", "null"]
});
```

Because a `Schema` is a thin wrapper around a `Value`, you can also use `TryFrom::try_from` / `TryInto::try_into` to create a `Schema` from an existing `Value`. This operation is fallible, because only objects and bools can be converted in this way.

```rust
use schemars::{Schema, json_schema};
use serde_json::json;
let json_object = json!({"type": ["object", "null"]});
let object_schema: Schema = json_object.try_into().unwrap();
let json_bool = json!(true);
let bool_schema: Schema = json_bool.try_into().unwrap();
let json_string = json!("This is neither an object nor a bool!");
assert!(Schema::try_from(json_string).is_err());
// You can also convert a `&Value`/`&mut Value` to a `&Schema`/`&mut Schema` the same way:
let json_object = json!({"type": ["object", "null"]});
let object_schema_ref: &Schema = (&json_object).try_into().unwrap();
let mut json_object = json!({"type": ["object", "null"]});
let object_schema_mut: &mut Schema = (&mut json_object).try_into().unwrap();
```

Similarly, you can use `From` / `Into` to (infallibly) create a `Schema` from an existing `Map` or `bool`.

```rust
use schemars::{Schema, json_schema};
use serde_json::{Map, json};
let mut map = Map::new();
map.insert("type".to_owned(), json!(["object", "null"]));
let object_schema: Schema = map.into();
let bool_schema: Schema = true.into();
```

## Implementations

### `impl Schema`

#### Associated Functions

- `pub fn new_ref(reference: String) -> Self`
  - Creates a new schema object with a single string property `"$ref"`.

#### Methods

- `pub fn as_value(&self) -> &Value`
  - Borrows the `Schema`'s underlying JSON value.

- `pub fn as_bool(&self) -> Option<bool>`
  - If the `Schema`'s underlying JSON value is a bool, returns the bool value.

- `pub fn as_object(&self) -> Option<&Map<String, Value>>`
  - If the `Schema`'s underlying JSON value is an object, borrows the object as a `Map` of properties.

- `pub fn as_object_mut(&mut self) -> Option<&mut Map<String, Value>>`
  - If the `Schema`'s underlying JSON value is an object, mutably borrows the object as a `Map` of properties.

- `pub fn to_value(self) -> Value`
  - Returns the `Schema`'s underlying JSON value.

- `pub fn ensure_object(&mut self) -> &mut Map<String, Value>`
  - Converts the `Schema` (if it wraps a bool value) into an equivalent object schema. Then mutably borrows the object as a `Map` of properties.

- `pub fn insert(&mut self, k: String, v: Value) -> Option<Value>`
  - Inserts a property into the schema, replacing any previous value.

- `pub fn get(&self, key: &Q) -> Option<&Value>`
  - where `String: Borrow<Q>`, `Q: ?Sized + Ord + Eq + Hash`
  - If the `Schema`'s underlying JSON value is an object, gets a reference to that object's value for the given key if it exists.

- `pub fn get_mut(&mut self, key: &Q) -> Option<&mut Value>`
  - where `String: Borrow<Q>`, `Q: ?Sized + Ord + Eq + Hash`
  - If the `Schema`'s underlying JSON value is an object, gets a mutable reference to that object's value for the given key if it exists.

- `pub fn pointer(&self, pointer: &str) -> Option<&Value>`
  - If the `Schema`'s underlying JSON value is an object, looks up a value within the schema by a JSON Pointer.

- `pub fn pointer_mut(&mut self, pointer: &str) -> Option<&mut Value>`
  - If the `Schema`'s underlying JSON value is an object, looks up a value by a JSON Pointer and returns a mutable reference to that value.

- `pub fn remove(&mut self, key: &Q) -> Option<Value>`
  - where `String: Borrow<Q>`, `Q: ?Sized + Ord + Eq + Hash`
  - If the `Schema`'s underlying JSON value is an object, removes and returns its value for the given key.

## Trait Implementations

### `impl Clone for Schema`

- `fn clone(&self) -> Schema`
- `fn clone_from(&mut self, source: &Self)`

### `impl Debug for Schema`

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result`

### `impl Default for Schema`

- `fn default() -> Self`

### `impl<'de> Deserialize<'de> for Schema`

- `fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>` where `D: Deserializer<'de>`

### `impl From<Map<String, Value>> for Schema`

- `fn from(o: Map<String, Value>) -> Self`

### `impl From<Schema> for Value`

- `fn from(v: Schema) -> Value`

### `impl From<bool> for Schema`

- `fn from(b: bool) -> Self`

### `impl JsonSchema for Schema`

- `fn schema_name() -> Cow<'static, str>`
- `fn schema_id() -> Cow<'static, str>`
- `fn json_schema(_: &mut SchemaGenerator) -> Schema`
- `fn inline_schema() -> bool`

### `impl PartialEq for Schema`

- `fn eq(&self, other: &Schema) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialEq<Map<String, Value>> for Schema`

- `fn eq(&self, other: &Map<String, Value>) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialEq<Schema> for bool`

- `fn eq(&self, other: &Schema) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialEq<Schema> for Map<String, Value>`

- `fn eq(&self, other: &Schema) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialEq<Schema> for Value`

- `fn eq(&self, other: &Schema) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialEq<Value> for Schema`

- `fn eq(&self, other: &Value) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl PartialEq<bool> for Schema`

- `fn eq(&self, other: &bool) -> bool`
- `fn ne(&self, other: &Rhs) -> bool`

### `impl Serialize for Schema`

- `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>` where `S: Serializer`

### `impl StructuralPartialEq for Schema`

### `impl<'a> TryFrom<&'a Value> for &'a Schema`

- `type Error = Error`
- `fn try_from(value: &Value) -> Result<&Schema>`

### `impl<'a> TryFrom<&'a mut Value> for &'a mut Schema`

- `type Error = Error`
- `fn try_from(value: &mut Value) -> Result<&mut Schema>`

### `impl TryFrom<Value> for Schema`

- `type Error = Error`
- `fn try_from(value: Value) -> Result<Schema>`

## Auto Trait Implementations

- `impl Freeze for Schema`
- `impl RefUnwindSafe for Schema`
- `impl Send for Schema`
- `impl Sync for Schema`
- `impl Unpin for Schema`
- `impl UnsafeUnpin for Schema`
- `impl UnwindSafe for Schema`

## Blanket Implementations

- `impl Any for T` where T: 'static + ?Sized
  - `fn type_id(&self) -> TypeId`

- `impl Borrow<T> for T` where T: ?Sized
  - `fn borrow(&self) -> &T`

- `impl BorrowMut<T> for T` where T: ?Sized
  - `fn borrow_mut(&mut self) -> &mut T`

- `impl CloneToUninit for T` where T: Clone
  - `unsafe fn clone_to_uninit(&self, dest: *mut u8)`

- `impl DeserializeOwned for T` where T: for<'de> Deserialize<'de>

- `impl DynClone for T` where T: Clone
  - `fn __clone_box(&self, _: Private) -> *mut ()`

- `impl ErasedDestructor for T` where T: 'static

- `impl From<T> for T`
  - `fn from(t: T) -> T`

- `impl Into<U> for T` where U: From<T>
  - `fn into(self) -> U`

- `impl IntoEither for T`
  - `fn into_either(self, into_left: bool) -> Either`
  - `fn into_either_with(self, into_left: F) -> Either` where F: FnOnce(&Self) -> bool

- `impl MaybeSendSync for T`

- `impl ToOwned for T` where T: Clone
  - `type Owned = T`
  - `fn to_owned(&self) -> T`
  - `fn clone_into(&self, target: &mut T)`

- `impl TryFrom<U> for T` where U: Into<T>
  - `type Error = Infallible`
  - `fn try_from(value: U) -> Result<T, Self::Error>`

- `impl TryInto<U> for T` where U: TryFrom<T>
  - `type Error = <U as TryFrom<T>>::Error`
  - `fn try_into(self) -> Result<U, Self::Error>`
