# IntoQueryVector

**Trait** in `lancedb::query`

## Description

A trait for converting a type to a query vector.

This is primarily intended to allow Rust users that are unfamiliar with Arrow a chance to use native types such as `Vec` instead of arrow arrays. It also serves as an integration point for other Rust libraries such as Polars.

By accepting the query vector as an array we are potentially allowing any data type to be used as the query vector. In the future, custom embedding models may be installed. These models may accept something other than `f32`. For example, sentence transformers typically expect the query to be a string. This means that any kind of conversion library should expect to convert more than just `f32`.

## Trait Definition

```rust
pub trait IntoQueryVector {
    // Required method
    fn to_query_vector(
        self,
        data_type: &DataType,
        embedding_model_label: &str,
    ) -> Result<Arc<dyn Array>>;
}
```

## Required Methods

### `to_query_vector`

```rust
fn to_query_vector(
    self,
    data_type: &DataType,
    embedding_model_label: &str,
) -> Result<Arc<dyn Array>>;
```

Convert the user’s query vector input to a query vector.  
This trait exists to allow users to provide many different types as input to the `crate::query::QueryBuilder::nearest_to` method.

By default, there is no embedding model registered, and the input should be the vector that the user wants to search with. LanceDb expects a fixed-size-list of floats. This means the input will need to be something that can be converted to a fixed-size-list of floats (e.g. a `Vec`).  

This crate provides a variety of default impls for common types.

On the other hand, if an embedding model is registered, then the embedding model will determine the input type. For example, sentence transformers expect the input to be strings. The input should be converted to an array with a single string value.

Trait impls should try and convert the source data to the requested data type if they can and fail with a meaningful error if they cannot. An embedding model label is provided to help provide useful error messages. For example, “failed to create query vector, the sentence transformer model expects strings but the input was a list of integers”.

Note that the output is an array but, in most cases, this will be an array of length one. The query vector is considered a single “item” and arrays of length one are how arrow represents scalars.

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility). In older versions of Rust, dyn compatibility was called “object safety”.

## Implementations on Foreign Types

- `&[f16; N]`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `&[f16]`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `&[f32; N]`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `&[f32]`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `&[f64; N]`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `&[f64]`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `&dyn Array`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      _embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `Arc<dyn Array>`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      _embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `Vec<f16>`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `Vec<f32>`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

- `Vec<f64>`  
  Method:  
  ```rust
  fn to_query_vector(
      self,
      data_type: &DataType,
      embedding_model_label: &str,
  ) -> Result<Arc<dyn Array>>;
  ```

## Implementors

(No implementors listed)
