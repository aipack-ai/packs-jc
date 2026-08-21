# Module `singleton_map_recursive`

In `yaml_serde::with`

[Source](../../../src/yaml_serde/with.rs.html#937)

Apply [`singleton_map`](../singleton_map/index.html) to all enums contained within the data structure.

## Example

```rust
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, PartialEq, Debug)]
enum Enum {
    Int(i32),
}

#[derive(Serialize, Deserialize, PartialEq, Debug)]
struct Inner {
    a: Enum,
    bs: Vec<Enum>,
}

#[derive(Serialize, Deserialize, PartialEq, Debug)]
struct Outer {
    tagged_style: Inner,
    #[serde(with = "yaml_serde::with::singleton_map_recursive")]
    singleton_map_style: Inner,
}

fn main() {
    let object = Outer {
        tagged_style: Inner {
            a: Enum::Int(0),
            bs: vec![Enum::Int(1)],
        },
        singleton_map_style: Inner {
            a: Enum::Int(2),
            bs: vec![Enum::Int(3)],
        },
    };

    let yaml = yaml_serde::to_string(&object).unwrap();
    print!("{}", yaml);

    let deserialized: Outer = yaml_serde::from_str(&yaml).unwrap();
    assert_eq!(object, deserialized);
}
```

The serialized output is:

```yaml
tagged_style:
  a: !Int 0
  bs:
    - !Int 1
singleton_map_style:
  a:
    Int: 2
  bs:
    - Int: 3
```

This module can also be used for the top-level serializer or deserializer call, without `serde(with = ...)`:

```rust
use serde::{Deserialize, Serialize};
use std::io::{self, Write};

#[derive(Serialize, Deserialize, PartialEq, Debug)]
enum Enum {
    Int(i32),
}

#[derive(Serialize, Deserialize, PartialEq, Debug)]
struct Inner {
    a: Enum,
    bs: Vec<Enum>,
}

fn main() {
    let object = Inner {
        a: Enum::Int(0),
        bs: vec![Enum::Int(1)],
    };

    let mut buf = Vec::new();
    let mut serializer = yaml_serde::Serializer::new(&mut buf);

    yaml_serde::with::singleton_map_recursive::serialize(&object, &mut serializer)
        .unwrap();

    io::stdout().write_all(&buf).unwrap();

    let deserializer = yaml_serde::Deserializer::from_slice(&buf);
    let deserialized: Inner =
        yaml_serde::with::singleton_map_recursive::deserialize(deserializer).unwrap();

    assert_eq!(object, deserialized);
}
```

## Functions

### `deserialize`

Deserializes a value while applying singleton-map representation recursively to all contained enums.

```rust
pub fn deserialize<'de, T, D>(deserializer: D) -> Result<T, D::Error>
where
    T: serde::Deserialize<'de>,
    D: serde::Deserializer<'de>;
```

- `deserializer`: The deserializer to read the value from.
- Returns the deserialized value or a deserialization error.

### `serialize`

Serializes a value while applying singleton-map representation recursively to all contained enums.

```rust
pub fn serialize<T, S>(value: &T, serializer: S) -> Result<S::Ok, S::Error>
where
    T: serde::Serialize,
    S: serde::Serializer;
```

- `value`: The value to serialize.
- `serializer`: The serializer to write the value to.
- Returns the serializer's success value or a serialization error.
