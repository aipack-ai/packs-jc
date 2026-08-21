# yaml_serde 0.10.7

`yaml_serde` is maintained by [The YAML Organization](https://github.com/yaml/yaml-serde).

- [Crate page](/crate/yaml_serde/0.10.7)
- License: [MIT](https://spdx.org/licenses/MIT) OR [Apache-2.0](https://spdx.org/licenses/Apache-2.0)
- Published: 18 August 2026
- [Repository](https://github.com/yaml/yaml-serde)
- [crates.io](https://crates.io/crates/yaml_serde)
- [Source](/crate/yaml_serde/0.10.7/source/)
- Owner: [ingydotnet](https://crates.io/users/ingydotnet)
- [Feature flags](/crate/yaml_serde/0.10.7/features)
- Target: [x86_64-unknown-linux-gnu](/crate/yaml_serde/0.10.7/target-redirect/yaml_serde/all.html)
- [100% of the crate is documented](/crate/yaml_serde/0.10.7)

## Dependencies

### Normal dependencies

- [indexmap ^2.2.1](/indexmap/^2.2.1/)
- [itoa ^1.0](/itoa/^1.0/)
- [libyaml-rs ^0.3](/libyaml-rs/^0.3/)
- [ryu ^1.0](/ryu/^1.0/)
- [serde ^1.0.195](/serde/^1.0.195/)

### Development dependencies

- [anyhow ^1.0.79](/anyhow/^1.0.79/)
- [indoc ^2.0](/indoc/^2.0/)
- [serde_derive ^1.0.195](/serde_derive/^1.0.195/)

## Crate items

### Structs

- [`Deserializer`](struct.Deserializer.html)
- [`Error`](struct.Error.html)
- [`Location`](struct.Location.html)
- [`Mapping`](struct.Mapping.html)
- [`Number`](struct.Number.html)
- [`Serializer`](struct.Serializer.html)
- [`io::Error`](io/struct.Error.html)
- [`mapping::IntoIter`](mapping/struct.IntoIter.html)
- [`mapping::IntoKeys`](mapping/struct.IntoKeys.html)
- [`mapping::IntoValues`](mapping/struct.IntoValues.html)
- [`mapping::Iter`](mapping/struct.Iter.html)
- [`mapping::IterMut`](mapping/struct.IterMut.html)
- [`mapping::Keys`](mapping/struct.Keys.html)
- [`mapping::Mapping`](mapping/struct.Mapping.html)
- [`mapping::OccupiedEntry`](mapping/struct.OccupiedEntry.html)
- [`mapping::VacantEntry`](mapping/struct.VacantEntry.html)
- [`mapping::Values`](mapping/struct.Values.html)
- [`mapping::ValuesMut`](mapping/struct.ValuesMut.html)
- [`value::Mapping`](value/struct.Mapping.html)
- [`value::Number`](value/struct.Number.html)
- [`value::Serializer`](value/struct.Serializer.html)
- [`value::Tag`](value/struct.Tag.html)
- [`value::TaggedValue`](value/struct.TaggedValue.html)

### Enums

- [`Value`](enum.Value.html)
- [`mapping::Entry`](mapping/enum.Entry.html)
- [`value::Value`](value/enum.Value.html)

### Traits

- [`Index`](trait.Index.html)
- [`io::Read`](io/trait.Read.html)
- [`io::Write`](io/trait.Write.html)
- [`mapping::Index`](mapping/trait.Index.html)
- [`value::Index`](value/trait.Index.html)

### Functions

- [`from_reader`](fn.from_reader.html)

  ```rust
  pub fn from_reader<R, T>(rdr: R) -> Result<T>
  where
      R: io::Read,
      T: serde::de::DeserializeOwned;
  ```

- [`from_slice`](fn.from_slice.html)

  ```rust
  pub fn from_slice<'de, T>(slice: &'de [u8]) -> Result<T>
  where
      T: serde::Deserialize<'de>;
  ```

- [`from_str`](fn.from_str.html)

  ```rust
  pub fn from_str<'de, T>(s: &'de str) -> Result<T>
  where
      T: serde::Deserialize<'de>;
  ```

- [`from_value`](fn.from_value.html)

  ```rust
  pub fn from_value<T>(value: Value) -> Result<T>
  where
      T: serde::de::DeserializeOwned;
  ```

- [`to_string`](fn.to_string.html)

  ```rust
  pub fn to_string<T>(value: &T) -> Result<String>
  where
      T: serde::Serialize;
  ```

- [`to_value`](fn.to_value.html)

  ```rust
  pub fn to_value<T>(value: &T) -> Result<Value>
  where
      T: serde::Serialize;
  ```

- [`to_writer`](fn.to_writer.html)

  ```rust
  pub fn to_writer<W, T>(writer: W, value: &T) -> Result<()>
  where
      W: io::Write,
      T: serde::Serialize;
  ```

- [`value::from_value`](value/fn.from_value.html)

  ```rust
  pub fn from_value<T>(value: Value) -> Result<T>
  where
      T: serde::de::DeserializeOwned;
  ```

- [`value::to_value`](value/fn.to_value.html)

  ```rust
  pub fn to_value<T>(value: &T) -> Result<Value>
  where
      T: serde::Serialize;
  ```

- [`with::singleton_map::deserialize`](with/singleton_map/fn.deserialize.html)

  ```rust
  pub fn deserialize<'de, D, T>(deserializer: D) -> Result<T, D::Error>
  where
      D: serde::Deserializer<'de>,
      T: serde::Deserialize<'de>;
  ```

- [`with::singleton_map::serialize`](with/singleton_map/fn.serialize.html)

  ```rust
  pub fn serialize<S, T>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
  where
      S: serde::Serializer,
      T: serde::Serialize;
  ```

- [`with::singleton_map_recursive::deserialize`](with/singleton_map_recursive/fn.deserialize.html)

  ```rust
  pub fn deserialize<'de, D, T>(deserializer: D) -> Result<T, D::Error>
  where
      D: serde::Deserializer<'de>,
      T: serde::Deserialize<'de>;
  ```

- [`with::singleton_map_recursive::serialize`](with/singleton_map_recursive/fn.serialize.html)

  ```rust
  pub fn serialize<S, T>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
  where
      S: serde::Serializer,
      T: serde::Serialize;
  ```

### Type aliases

- [`Result`](type.Result.html)
- [`Sequence`](type.Sequence.html)
- [`io::Result`](io/type.Result.html)
- [`value::Sequence`](value/type.Sequence.html)
