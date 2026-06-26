# IntoParams in turso::params

## [IntoParams](#)

[turso](../turso/index.html)::[params](index.html)

## Trait `IntoParams`

[Source](../../src/turso/params.rs.html#94-99)

```
pub trait IntoParams: Sealed { }
```

Expand description

Converts some type into parameters that can be passed to libsql.

The trait is sealed and not designed to be implemented by hand but instead provides a few ways to use it.

### Passing parameters to libsql

Many functions in this library let you pass parameters to libsql. Doing this lets you avoid any risk of SQL injection, and is simpler than escaping things manually. These functions generally contain some parameter that generically accepts some implementation this trait.

### Positional parameters

These can be supplied in a few ways:

- For heterogeneous parameter lists of 16 or less items a tuple syntax is supported by doing `(1, "foo")`.
- For heterogeneous parameter lists of 16 or greater, the `turso::params!` macro is supported by doing `turso::params![1, "foo"]`.
- For homogeneous parameter types (where they are all the same type), const arrays are supported by doing `[1, 2, 3]`.

#### Example (positional)

```text
let mut stmt = conn.prepare("INSERT INTO test (a, b) VALUES (?1, ?2)").await?;
// Using a tuple:
stmt.execute((0, "foobar")).await?;
// Using `turso::params!`:
stmt.execute(params![1i32, "blah"]).await?;
// array literal — non-references
stmt.execute([2i32, 3i32]).await?;
// array literal — references
stmt.execute(["foo", "bar"]).await?;
// Slice literal, references:
stmt.execute([2i32, 3i32]).await?;
```

### Named parameters

Named parameter keys must include the SQL prefix used in the statement, for example `:name`, `@name`, `$name`, or `?1`.

- For heterogeneous parameter lists of 16 or less items a tuple syntax is supported by doing `((":key1", 1), (":key2", "foo"))`.
- For heterogeneous parameter lists of 16 or greater, the `turso::named_params!` macro is supported by doing `turso::named_params![":key1": 1, ":key2": "foo"]`.
- For homogeneous parameter types (where they are all the same type), const arrays are supported by doing `[(":key1", 1), (":key2", 2), (":key3", 3)]`.

#### Example (named)

```text
let mut stmt = conn.prepare("INSERT INTO test (a, b) VALUES (:key1, :key2)").await?;
// Using a tuple:
stmt.execute(((":key1", 0), (":key2", "foobar"))).await?;
// Using `turso::named_params!`:
stmt.execute(named_params! {":key1": 1i32, ":key2": "blah" }).await?;
// const array:
stmt.execute([(":key1", 2i32), (":key2", 3i32)]).await?;
```

## Implementations on Foreign Types

[Source](../../src/turso/params.rs.html#136-140)

- **`impl IntoParams for ()`**  
  [Source](../../src/turso/params.rs.html#136-140)

- **`impl IntoParams for ((&'static str, A),)`** where `A: IntoValue`  
  [Source](../../src/turso/params.rs.html#225)

- **`impl IntoParams for (A,)`** where `A: IntoValue`  
  [Source](../../src/turso/params.rs.html#242)

- **`impl IntoParams for ((&'static str, A), (&'static str, B))`** where `A: IntoValue, B: IntoValue`  
  [Source](../../src/turso/params.rs.html#226)

- **`impl IntoParams for (A, B)`** where `A: IntoValue, B: IntoValue`  
  [Source](../../src/turso/params.rs.html#243)

- **`impl IntoParams for ((&'static str, A), (&'static str, B), (&'static str, C))`** where `A: IntoValue, B: IntoValue, C: IntoValue`  
  [Source](../../src/turso/params.rs.html#227)

- **`impl IntoParams for (A, B, C)`** where `A: IntoValue, B: IntoValue, C: IntoValue`  
  [Source](../../src/turso/params.rs.html#244)

- **`impl IntoParams for ((&'static str, A), ..., (&'static str, D))`** where `A: IntoValue, ..., D: IntoValue`  
  [Source](../../src/turso/params.rs.html#228)

- **`impl IntoParams for (A, B, C, D)`** where `A: IntoValue, B: IntoValue, C: IntoValue, D: IntoValue`  
  [Source](../../src/turso/params.rs.html#245)

- *Similarly for tuples up to 16 elements (both positional and named).*  
  For brevity, the complete list is omitted, but follows the same pattern.

- **`impl<T: IntoValue + Clone, const N: usize> IntoParams for &[T; N]`**  
  [Source](../../src/turso/params.rs.html#194-198)

- **`impl<T: IntoValue> IntoParams for Vec<(String, T)>`**  
  [Source](../../src/turso/params.rs.html#162-171)

- **`impl<T: IntoValue> IntoParams for Vec<T>`**  
  [Source](../../src/turso/params.rs.html#150-159)

- **`impl<T: IntoValue, const N: usize> IntoParams for [T; N]`**  
  [Source](../../src/turso/params.rs.html#174-178)

- **`impl<T: IntoValue, const N: usize> IntoParams for [(&'static str, T); N]`**  
  [Source](../../src/turso/params.rs.html#182-191)

## Implementors

(No additional implementors beyond those listed on foreign types.)
