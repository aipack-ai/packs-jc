# TableBuilderCallback

**Module:** [lancedb::database](index.html)

**Type Alias**  
Defines a callback for configuring an `OpenTableRequest` when building a table.

```
pub type TableBuilderCallback = 
            Box<dyn FnOnce(OpenTableRequest) -> OpenTableRequest + Send>;
```

**Aliased Type**  
The underlying implementation is a newtype struct with private fields.

```
pub struct TableBuilderCallback(/* private fields */);
```

**Source:** [database.rs line 89](../../src/lancedb/database.rs.html#89)
