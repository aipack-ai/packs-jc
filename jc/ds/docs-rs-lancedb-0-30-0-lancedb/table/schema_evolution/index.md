# Module `schema_evolution`

## In `lancedb::table`

[Source](https://github.com/lancedb/lancedb/blob/main/lancedb/src/table/schema_evolution.rs)

Schema evolution operations for LanceDB tables.

This module provides functionality to modify the schema of existing tables:

- [`add_columns`](execute_add_columns) — Add new columns using SQL expressions
- [`alter_columns`](execute_alter_columns) — Rename columns, change types, or modify nullability
- [`drop_columns`](execute_drop_columns) — Remove columns from the table

## Structs

- `AddColumnsResult` — The result of an add columns operation.
- `AlterColumnsResult` — The result of an alter columns operation.
- `DropColumnsResult` — The result of a drop columns operation.
