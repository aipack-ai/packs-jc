# Module permutation

## lancedb::dataloader::permutation

Contains the `PermutationBuilder` to create a permutation “view” of an existing table.

A permutation view can apply a filter, divide the data into splits, and shuffle the data. The permutation table only stores the split ids and row ids. It is not a materialized copy of the underlying data and can be very lightweight.

Building a permutation table should be fairly quick (it is an O(N) operation where N is the number of rows in the base table) and memory efficient, even for billions or trillions of rows.

### Modules

- [builder](builder/index.html) — Module for building permutation tables.
- [reader](reader/index.html) — Row ID-based views for LanceDB tables.
- [shuffle](shuffle/index.html) — Shuffling utilities.
- [split](split/index.html) — Splitting utilities.
- [util](util/index.html) — Utility functions.
