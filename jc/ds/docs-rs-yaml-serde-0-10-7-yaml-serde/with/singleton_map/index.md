# Module `singleton_map`

[`yaml_serde::with::singleton_map`](../index.html)

[Source](../../../src/yaml_serde/with.rs.html#75)

Serialize and deserialize an enum using a YAML map containing one entry, where the key identifies the variant name.

## Example

```rust
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, PartialEq, Debug)]
enum Enum {
    Unit,
    Newtype(usize),
    Tuple(usize, usize),
    Struct { value: usize },
}

#[derive(Serialize, Deserialize, PartialEq, Debug)]
struct Struct {
    #[serde(with = "yaml_serde::with::singleton_map")]
    w: Enum,
    #[serde(with = "yaml_serde::with::singleton_map")]
    x: Enum,
    #[serde(with = "yaml_serde::with::singleton_map")]
    y: Enum,
    #[serde(with = "yaml_serde::with::singleton_map")]
    z: Enum,
}

fn main() {
    let object = Struct {
        w: Enum::Unit,
        x: Enum::Newtype(1),
        y: Enum::Tuple(1, 1),
        z: Enum::Struct { value: 1 },
    };

    let yaml = yaml_serde::to_string(&object).unwrap();
    print!("{}", yaml);

    let deserialized: Struct = yaml_serde::from_str(&yaml).unwrap();
    assert_eq!(object, deserialized);
}
```

Using `singleton_map` on all fields produces:

```yaml
w: Unit
x:
  Newtype: 1
y:
  Tuple:
    - 1
    - 1
z:
  Struct:
    value: 1
```

Without `singleton_map`, the default representation would be:

```yaml
w: Unit
x: !Newtype 1
y: !Tuple
- 1
- 1
z: !Struct
  value: 1
```

## Functions

### `deserialize`

[`deserialize`](fn.deserialize.html)

```rust
pub fn deserialize<'de, D, T>(deserializer: D) -> Result<T, D::Error>
where
    D: serde::Deserializer<'de>,
    T: serde::Deserialize<'de>,
```

Deserializes an enum from a YAML map containing a single entry.

### `serialize`

[`serialize`](fn.serialize.html)

```rust
pub fn serialize<T, S>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
where
    S: serde::Serializer,
    T: serde::Serialize,
```

Serializes an enum as a YAML map containing a single entry.
