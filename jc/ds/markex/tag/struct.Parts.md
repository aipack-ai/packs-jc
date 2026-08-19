# Struct Parts

Result of extracting data and parts from input.

```rust
pub struct Parts { /* private fields */ }
```

## Methods

- [into_parts](#method.into_parts)
- [into_tag_elems](#method.into_tag_elems)
- [into_texts](#method.into_texts)
- [into_with_extrude_content](#method.into_with_extrude_content)
- [iter](#method.iter)
- [parts](#method.parts)
- [tag_elems](#method.tag_elems)
- [tag_names](#method.tag_names)
- [texts](#method.texts)

### Implementations

#### impl [Parts](struct.Parts.html)

- [pub fn parts(&self) -> &[Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[Part](enum.Part.html)>](#method.parts)
- [pub fn into_parts(self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[Part](enum.Part.html)>](#method.into_parts)
- [pub fn tag_names(&self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<&[str](https://doc.rust-lang.org/1.97.1/std/primitive.str.html)>](#method.tag_names) - Returns the unique tag names found in the parts.
- [pub fn iter(&self) -> [Iter](https://doc.rust-lang.org/1.97.1/core/slice/iter/struct.Iter.html)<'_, [Part](enum.Part.html)>](#method.iter)
- [pub fn tag_elems(&self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<&[TagElem](struct.TagElem.html)>](#method.tag_elems) - Returns references to all `TagElem` items in the parsed data.
- [pub fn into_tag_elems(self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[TagElem](struct.TagElem.html)>](#method.into_tag_elems) - Consumes the parsed data and returns all `TagElem` items.
- [pub fn texts(&self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<&[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html)>](#method.texts) - Returns references to all text strings in the parsed data.
- [pub fn into_texts(self) -> [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html)>](#method.into_texts) - Consumes the parsed data and returns all text strings.
- [pub fn into_with_extrude_content(self) -> ([Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[TagElem](struct.TagElem.html)>, [String](https://doc.rust-lang.org/1.97.1/alloc/string/struct.String.html))](#method.into_with_extrude_content) - Consumes the parsed data and returns the tag elements along with all text concatenated into a single string.

```rust
impl Parts {
    pub fn parts(&self) -> &[Vec<Part>] {}
    pub fn into_parts(self) -> Vec<Part> {}
    pub fn tag_names(&self) -> Vec<&str> {}
    pub fn iter(&self) -> Iter<'_, Part> {}
    pub fn tag_elems(&self) -> Vec<&TagElem> {}
    pub fn into_tag_elems(self) -> Vec<TagElem> {}
    pub fn texts(&self) -> Vec<&String> {}
    pub fn into_texts(self) -> Vec<String> {}
    pub fn into_with_extrude_content(self) -> (Vec<TagElem>, String) {}
}
```

## Trait Implementations

- [Clone](#impl-Clone-for-Parts)
- [Debug](#impl-Debug-for-Parts)
- [Default](#impl-Default-for-Parts)
- [From](#impl-From%3CParts%3E-for-Vec%3CPart%3E)
- [IntoIterator](#impl-IntoIterator-for-%26Parts)
- [IntoIterator](#impl-IntoIterator-for-Parts)
- [PartialEq](#impl-PartialEq-for-Parts)
- [Serialize](#impl-Serialize-for-Parts)
- [StructuralPartialEq](#impl-StructuralPartialEq-for-Parts)

### impl [Clone](https://doc.rust-lang.org/1.97.1/core/clone/trait.Clone.html) for [Parts](struct.Parts.html)

- [fn clone(&self) -> [Parts](struct.Parts.html)](#method.clone) - Returns a duplicate of the value.
- [fn clone_from(&mut self, source: &Self)](#method.clone_from) - Performs copy-assignment from `source`.

```rust
impl Clone for Parts {
    fn clone(&self) -> Parts {}
    fn clone_from(&mut self, source: &Self) {}
}
```

### impl [Debug](https://doc.rust-lang.org/1.97.1/core/fmt/trait.Debug.html) for [Parts](struct.Parts.html)

- [fn fmt(&self, f: &mut [Formatter](https://doc.rust-lang.org/1.97.1/core/fmt/struct.Formatter.html)<'_>) -> [Result](https://doc.rust-lang.org/1.97.1/core/fmt/type.Result.html)](#method.fmt) - Formats the value using the given formatter.

```rust
impl Debug for Parts {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {}
}
```

### impl [Default](https://doc.rust-lang.org/1.97.1/core/default/trait.Default.html) for [Parts](struct.Parts.html)

- [fn default() -> [Parts](struct.Parts.html)](#method.default) - Returns the “default value” for a type.

```rust
impl Default for Parts {
    fn default() -> Parts {}
}
```

### impl [From](https://doc.rust-lang.org/1.97.1/core/convert/trait.From.html)<[Parts](struct.Parts.html)> for [Vec](https://doc.rust-lang.org/1.97.1/alloc/vec/struct.Vec.html)<[Part](enum.Part.html)>

- [fn from(val: [Parts](struct.Parts.html)) -> Self](#method.from) - Converts to this type from the input type.

```rust
impl From<Parts> for Vec<Part> {
    fn from(val: Parts) -> Self {}
}
```

### impl<'a> [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html) for &'a [Parts](struct.Parts.html)

- type [Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item) = &'a [Part](enum.Part.html)
- type [IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter) = [Iter](https://doc.rust-lang.org/1.97.1/core/slice/iter/struct.Iter.html)<'a, [Part](enum.Part.html)>
- [fn into_iter(self) -> Self::[IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter)](#method.into_iter-1) - Creates an iterator from a value.

```rust
impl<'a> IntoIterator for &'a Parts {
    type Item = &'a Part;
    type IntoIter = Iter<'a, Part>;
    fn into_iter(self) -> Self::IntoIter {}
}
```

### impl [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html) for [Parts](struct.Parts.html)

- type [Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item) = [Part](enum.Part.html)
- type [IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter) = [IntoIter](https://doc.rust-lang.org/1.97.1/alloc/vec/into_iter/struct.IntoIter.html)<<[Parts](struct.Parts.html) as [IntoIterator](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html)>::[Item](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.Item)>
- [fn into_iter(self) -> Self::[IntoIter](https://doc.rust-lang.org/1.97.1/core/iter/traits/collect/trait.IntoIterator.html#associatedtype.IntoIter)](#method.into_iter) - Creates an iterator from a value.

```rust
impl IntoIterator for Parts {
    type Item = Part;
    type IntoIter = IntoIter<<Parts as IntoIterator>::Item>;
    fn into_iter(self) -> Self::IntoIter {}
}
```

### impl [PartialEq](https://doc.rust-lang.org/1.97.1/core/cmp/trait.PartialEq.html) for [Parts](struct.Parts.html)

- [fn eq(&self, other: &[Parts](struct.Parts.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)](#method.eq) - Tests for `self` and `other` values to be equal.
- [fn ne(&self, other: &[Rhs](https://doc.rust-lang.org/1.97.1/std/primitive.reference.html)) -> [bool](https://doc.rust-lang.org/1.97.1/std/primitive.bool.html)](#method.ne) - Tests for `!=`.

```rust
impl PartialEq for Parts {
    fn eq(&self, other: &Parts) -> bool {}
    fn ne(&self, other: &Rhs) -> bool {}
}
```

### impl [Serialize](https://docs.rs/serde_core/1.0.228/serde_core/ser/trait.Serialize.html) for [Parts](struct.Parts.html)

- [fn serialize<__S>(&self, __serializer: __S) -> [Result](https://doc.rust-lang.org/1.97.1/core/result/enum.Result.html)<__S::[Ok](https://docs.rs/serde_core/1.0.228/serde_core/ser/trait.Serializer.html#associatedtype.Ok), __S::[Error](https://docs.rs/serde_core/1.0.228/serde_core/ser/trait.Serializer.html#associatedtype.Error)>](#method.serialize) - Serialize this value into the given Serde serializer.

```rust
impl Serialize for Parts {
    fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>
    where
        __S: Serializer,
    {}
}
```

### impl [StructuralPartialEq](https://doc.rust-lang.org/1.97.1/core/marker/trait.StructuralPartialEq.html) for [Parts](struct.Parts.html)

## Auto Trait Implementations

- [impl Freeze for Parts](#impl-Freeze-for-Parts)
- [impl RefUnwindSafe for Parts](#impl-RefUnwindSafe-for-Parts)
- [impl Send for Parts](#impl-Send-for-Parts)
- [impl Sync for Parts](#impl-Sync-for-Parts)
- [impl Unpin for Parts](#impl-Unpin-for-Parts)
- [impl UnsafeUnpin for Parts](#impl-UnsafeUnpin-for-Parts)
- [impl UnwindSafe for Parts](#impl-UnwindSafe-for-Parts)

## Blanket Implementations

- [impl<T> Any for T where T: 'static + ?Sized](#impl-Any-for-T)
- [impl<T> Borrow<T> for T where T: ?Sized](#impl-Borrow%3CT%3E-for-T)
- [impl<T> BorrowMut<T> for T where T: ?Sized](#impl-BorrowMut%3CT%3E-for-T)
- [impl<T> CloneToUninit for T where T: Clone](#impl-CloneToUninit-for-T)
- [impl<T> From<T> for T](#impl-From%3CT%3E-for-T)
- [impl<T, U> Into<U> for T where U: From<T>>](#impl-Into%3CU%3E-for-T)
- [impl<T> ToOwned for T where T: Clone](#impl-ToOwned-for-T)
- [impl<T, U> TryFrom<U> for T where U: Into<T>>](#impl-TryFrom%3CU%3E-for-T)
- [impl<T, U> TryInto<U> for T where U: TryFrom<T>>](#impl-TryInto%3CU%3E-for-T)
