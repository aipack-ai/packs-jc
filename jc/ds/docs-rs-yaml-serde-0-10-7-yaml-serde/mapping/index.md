# `yaml_serde::mapping`

## Module Information

- Crate: [`yaml_serde`](../../yaml_serde/index.html) 0.10.7
- Source: [`mapping.rs`](../../src/yaml_serde/mapping.rs.html#1-904)

A YAML mapping and its iterator types.

## Structs

- [`IntoIter`](struct.IntoIter.html) — Iterator over `yaml_serde::Mapping` by value.
- [`IntoKeys`](struct.IntoKeys.html) — Iterator of the keys of a `yaml_serde::Mapping`.
- [`IntoValues`](struct.IntoValues.html) — Iterator of the values of a `yaml_serde::Mapping`.
- [`Iter`](struct.Iter.html) — Iterator over `&yaml_serde::Mapping`.
- [`IterMut`](struct.IterMut.html) — Iterator over `&mut yaml_serde::Mapping`.
- [`Keys`](struct.Keys.html) — Iterator of the keys of a `&yaml_serde::Mapping`.
- [`Mapping`](struct.Mapping.html) — A YAML mapping in which the keys and values are both `yaml_serde::Value`.
- [`OccupiedEntry`](struct.OccupiedEntry.html) — A view into an occupied entry in a [`Mapping`](../struct.Mapping.html). It is part of the [`Entry`](enum.Entry.html) enum.
- [`VacantEntry`](struct.VacantEntry.html) — A view into a vacant entry in a [`Mapping`](../struct.Mapping.html). It is part of the [`Entry`](enum.Entry.html) enum.
- [`Values`](struct.Values.html) — Iterator of the values of a `&yaml_serde::Mapping`.
- [`ValuesMut`](struct.ValuesMut.html) — Iterator of the values of a `&mut yaml_serde::Mapping`.

## Enums

- [`Entry`](enum.Entry.html) — Entry for an existing key-value pair or a vacant location to insert one.

## Traits

- [`Index`](trait.Index.html) — A type that can be used to index into a `yaml_serde::Mapping`. See the methods `get`, `get_mut`, `contains_key`, and `remove` of `Value`.
