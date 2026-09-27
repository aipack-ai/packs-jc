# `markex::tag::Parts`

```rust
pub struct Parts {
    /* private fields */
}
```

`Parts` is the result of extracting data and parts from input.

## Methods

```rust
impl Parts {
    pub fn parts(&self) -> &Vec<Part>;

    pub fn into_parts(self) -> Vec<Part>;

    pub fn tag_names(&self) -> Vec<&str>;

    pub fn iter(&self) -> std::slice::Iter<'_, Part>;

    pub fn tag_elems(&self) -> Vec<&TagElem>;

    pub fn into_tag_elems(self) -> Vec<TagElem>;

    pub fn texts(&self) -> Vec<&String>;

    pub fn into_texts(self) -> Vec<String>;

    pub fn into_with_extrude_content(self) -> (Vec<TagElem>, String);
}
```

- `tag_names` returns the unique tag names found in the parts.
- `tag_elems` and `texts` return references to the corresponding items in the parsed data.
- `into_tag_elems` and `into_texts` consume the parsed data and return the corresponding items.
- `into_with_extrude_content` consumes the parsed data and returns its tag elements along with all text concatenated into a single string.

## Trait Implementations

- `Clone`
  - `fn clone(&self) -> Parts`
  - `fn clone_from(&mut self, source: &Self)`
- `Debug`
  - `fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result`
- `Default`
  - `fn default() -> Parts`
- `From<Parts> for Vec<Part>`
  - `fn from(val: Parts) -> Vec<Part>`
- `IntoIterator for Parts`
  - `type Item = Part`
  - `type IntoIter = std::vec::IntoIter<Part>`
  - `fn into_iter(self) -> Self::IntoIter`
- `IntoIterator for &'a Parts`
  - `type Item = &'a Part`
  - `type IntoIter = std::slice::Iter<'a, Part>`
  - `fn into_iter(self) -> Self::IntoIter`
- `PartialEq`
  - `fn eq(&self, other: &Parts) -> bool`
  - `fn ne(&self, other: &Parts) -> bool`
- `serde::Serialize`
  - `fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>`
  - where `S: serde::Serializer`
- `StructuralPartialEq`

## Auto Traits

`Parts` implements `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.

## Blanket Implementations

`Parts` also receives the standard blanket implementations for `Any`, `Borrow<T>`, `BorrowMut<T>`, `CloneToUninit`, `From<T>`, `Into<U>`, `ToOwned`, `TryFrom<U>`, and `TryInto<U>`.
