# Function `get_depth`

**Crate:** [`simple_fs`](../simple_fs/index.html) 0.12.3

**Source:** [`list/glob.rs`](../src/simple_fs/list/glob.rs.html#54-71)

## Signature

```text
pub fn get_depth(patterns: &[&str], depth: Option<usize>) -> usize
```

## Description

Computes the maximum depth required for a set of glob patterns.

The function follows this logic:

1. If a depth is provided via the `depth` argument, it returns that value directly.
2. Otherwise, if any pattern contains `**`, it returns `TOP_MAX_DEPTH`.
3. Otherwise, it calculates the maximum folder level from the patterns using the folder count, regardless of whether they contain a single `*` or only `/`.

The function always returns at least `1`.
