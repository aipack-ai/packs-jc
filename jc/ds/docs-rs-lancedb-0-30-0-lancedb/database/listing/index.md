# lancedb::database::listing - Rust

[lancedb](../../index.html) :: [database](../index.html) :: listing

[Source](../../../src/lancedb/database/listing.rs.html#4-2614)

Provides the `ListingDatabase`, a simple database where tables are folders in a directory.

## Structs

- [ListingDatabase](struct.ListingDatabase.html) – A database that stores tables in a flat directory structure.
- [ListingDatabaseOptions](struct.ListingDatabaseOptions.html) – Options specific to the listing database.
- [ListingDatabaseOptionsBuilder](struct.ListingDatabaseOptionsBuilder.html) – Builder for `ListingDatabaseOptions`.
- [NewTableConfig](struct.NewTableConfig.html) – Controls how new tables should be created.

## Constants

- [LANCE_FILE_EXTENSION](constant.LANCE_FILE_EXTENSION.html) – File extension to indicate a lance table.
- [OPT_NEW_TABLE_ENABLE_STABLE_ROW_IDS](constant.OPT_NEW_TABLE_ENABLE_STABLE_ROW_IDS.html) – Option for enabling stable row IDs in new tables.
- [OPT_NEW_TABLE_STORAGE_VERSION](constant.OPT_NEW_TABLE_STORAGE_VERSION.html) – Option for storage version of new tables.
- [OPT_NEW_TABLE_V2_MANIFEST_PATHS](constant.OPT_NEW_TABLE_V2_MANIFEST_PATHS.html) – Option for V2 manifest paths in new tables.
