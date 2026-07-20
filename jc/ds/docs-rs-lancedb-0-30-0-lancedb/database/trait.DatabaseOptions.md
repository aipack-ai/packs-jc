# DatabaseOptions

In [lancedb::database](index.html)

Source: [../../src/lancedb/database.rs.html#36-38]

```
pub trait DatabaseOptions {
    // Required method
    fn serialize_into_map(&self, map: &mut HashMap<String, String>);
}
```

## Required Methods

- `fn serialize_into_map(&self, map: &mut HashMap<String, String>)`

## Dyn Compatibility

This trait **is** [dyn compatible](https://doc.rust-lang.org/nightly/reference/items/traits.html#dyn-compatibility) (formerly "object safe").

## Implementors

- [impl DatabaseOptions for RemoteDatabaseOptions](../remote/struct.RemoteDatabaseOptions.html)  
  Source: [../../src/lancedb/remote/db.rs.html#130-145]

- [impl DatabaseOptions for ListingDatabaseOptions](listing/struct.ListingDatabaseOptions.html)  
  Source: [../../src/lancedb/database/listing.rs.html#130-151]
