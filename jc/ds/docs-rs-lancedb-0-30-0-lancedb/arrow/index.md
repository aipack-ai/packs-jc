# lancedb::arrow - Rust

**Source:** [../../src/lancedb/arrow.rs.html#4-349]

## Module arrow

### Re-exports

```text
pub use arrow_schema;
```

### Structs

- [PolarsDataFrameRecordBatchReader](struct.PolarsDataFrameRecordBatchReader.html) – An iterator of record batches formed from a Polars DataFrame.
- [SimpleRecordBatchReader](struct.SimpleRecordBatchReader.html) – A simple RecordBatchReader formed from the two parts (iterator + schema)
- [SimpleRecordBatchStream](struct.SimpleRecordBatchStream.html) – A simple RecordBatchStream formed from the two parts (stream + schema)

### Traits

- [IntoArrow](trait.IntoArrow.html) – A trait for converting incoming data to Arrow
- [IntoArrowStream](trait.IntoArrowStream.html) – A trait for converting incoming data to Arrow asynchronously
- [IntoPolars](trait.IntoPolars.html) – A trait for converting the result of a LanceDB query into a Polars DataFrame with aligned chunks. The resulting Polars DataFrame will have aligned chunks, but the series’s chunks are not guaranteed to be contiguous.
- [LanceDbDatagenExt](trait.LanceDbDatagenExt.html)
- [RecordBatchReader](trait.RecordBatchReader.html) – An iterator of batches that also has a schema
- [RecordBatchStream](trait.RecordBatchStream.html) – A stream of batches that also has a schema
- [SendableRecordBatchStreamExt](trait.SendableRecordBatchStreamExt.html)

### Type Aliases

- [BoxedRecordBatchReader](type.BoxedRecordBatchReader.html)
- [SendableRecordBatchStream](type.SendableRecordBatchStream.html) – A boxed RecordBatchStream that is also Send
