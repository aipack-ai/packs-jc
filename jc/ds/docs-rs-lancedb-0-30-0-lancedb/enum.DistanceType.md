# DistanceType

## Enum Definition

[Source](../src/lancedb/lib.rs.html#199-223)

```text
#[non_exhaustive]
pub enum DistanceType {
    L2,
    Cosine,
    Dot,
    Hamming,
}
```

## Variants (Non-exhaustive)

This enum is marked as non-exhaustive. Non-exhaustive enums could have additional variants added in future. Therefore, when matching against variants of non-exhaustive enums, an extra wildcard arm must be added to account for any future variants.

- **L2** – Euclidean distance. This is a very common distance metric that accounts for both magnitude and direction when determining the distance between vectors. L2 distance has a range of \[0, ∞).
- **Cosine** – Cosine distance. Cosine distance is a distance metric calculated from the cosine similarity between two vectors. Cosine similarity is a measure of similarity between two non-zero vectors of an inner product space. It is defined to equal the cosine of the angle between them. Unlike l2, the cosine distance is not affected by the magnitude of the vectors. Cosine distance has a range of \[0, 2\]. Note: the cosine distance is undefined when one (or both) of the vectors are all zeros (there is no direction). These vectors are invalid and may never be returned from a vector search.
- **Dot** – Dot product. Dot distance is the dot product of two vectors. Dot distance has a range of (-∞, ∞). If the vectors are normalized (i.e. their l2 norm is 1), then dot distance is equivalent to the cosine distance.
- **Hamming** – Hamming distance. Hamming distance is a distance metric that measures the number of positions at which the corresponding elements are different.

## Trait Implementations

### impl Clone for DistanceType

- `fn clone(&self) -> DistanceType` – Returns a duplicate of the value.
- `fn clone_from(&mut self, source: &Self)` – Performs copy-assignment from `source`.

### impl Copy for DistanceType

### impl Debug for DistanceType

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter.

### impl Default for DistanceType

- `fn default() -> DistanceType` – Returns the “default value” for a type.

### impl Deserialize<'de> for DistanceType

- `fn deserialize<__D>(__deserializer: __D) -> Result<__, __D::Error>` where `__D: Deserializer<'de>` – Deserialize this value from the given Serde deserializer.

### impl Display for DistanceType

- `fn fmt(&self, f: &mut Formatter<'_>) -> Result` – Formats the value using the given formatter.

### impl From<DistanceType> for lance_linalg::distance::DistanceType

- `fn from(value: DistanceType) -> Self` – Converts to this type from the input type.

### impl From<lance_linalg::distance::DistanceType> for DistanceType

- `fn from(value: LanceDistanceType) -> Self` – Converts to this type from the input type.

### impl PartialEq for DistanceType

- `fn eq(&self, other: &DistanceType) -> bool` – Tests for equality.
- `fn ne(&self, other: &Rhs) -> bool` – Tests for inequality.

### impl Serialize for DistanceType

- `fn serialize<__S>(&self, __serializer: __S) -> Result<__S::Ok, __S::Error>` where `__S: Serializer` – Serialize this value into the given Serde serializer.

### impl StructuralPartialEq for DistanceType

### impl TryFrom<&'a str> for DistanceType

- Type `Error = <lance_linalg::distance::DistanceType as TryFrom<&'a str>>::Error`
- `fn try_from(value: &str) -> Result<DistanceType, Error>` – Performs the conversion.

## Auto Trait Implementations

- `Freeze`
- `RefUnwindSafe`
- `Send`
- `Sync`
- `Unpin`
- `UnsafeUnpin`
- `UnwindSafe`

## Blanket Implementations

(Not included for brevity; see full documentation for a complete list.)

---

This documentation is for lancedb version 0.30.0.
