# lancedb::utils - Rust

From crate `lancedb-0.30.0`. [Source](../../src/lancedb/utils/mod.rs.html#4-797)

## Structs

- [MaxBatchLengthStream](struct.MaxBatchLengthStream.html) – A `Stream` wrapper that slices oversized batches to enforce a maximum batch length.
- [TimeoutStream](struct.TimeoutStream.html) – A `Stream` wrapper that implements a timeout.

## Traits

- [PatchReadParam](trait.PatchReadParam.html)
- [PatchStoreParam](trait.PatchStoreParam.html)
- [PatchWriteParam](trait.PatchWriteParam.html)

## Functions

- [string_to_datatype](fn.string_to_datatype.html) – Note: this is temporary until we get a proper datatype conversion in Lance.
- [supported_bitmap_data_type](fn.supported_bitmap_data_type.html)
- [supported_btree_data_type](fn.supported_btree_data_type.html)
- [supported_fts_data_type](fn.supported_fts_data_type.html)
- [supported_label_list_data_type](fn.supported_label_list_data_type.html)
- [supported_vector_data_type](fn.supported_vector_data_type.html)
- [validate_namespace](fn.validate_namespace.html) – Validate all components of a namespace
- [validate_namespace_name](fn.validate_namespace_name.html) – Validate a namespace name component
- [validate_table_name](fn.validate_table_name.html) – Validate table name.
