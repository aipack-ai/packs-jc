# lancedb::index::scalar

Source: [../../../src/lancedb/index/scalar.rs.html#4-57](https://docs.rs/lancedb/0.30.0/src/lancedb/index/scalar.rs.html#4-57)

## Description

Scalar indices are exact indices that are used to quickly satisfy a variety of filters against a column of scalar values. Scalar indices are currently supported on numeric, string, boolean, and temporal columns.

A scalar index will help with queries with filters like `x > 10`, `x < 10`, `x = 10`, etc. Scalar indices can also speed up prefiltering for vector searches. A single vector search with prefiltering can use both a scalar index and a vector index.

## Structs

- [BTreeIndexBuilder](struct.BTreeIndexBuilder.html) - Builder for a btree index
- [BitmapIndexBuilder](struct.BitmapIndexBuilder.html) - Builder for a Bitmap index.
- [BooleanQuery](struct.BooleanQuery.html)
- [BoostQuery](struct.BoostQuery.html)
- [FtsIndexBuilder](struct.FtsIndexBuilder.html) - Tokenizer configs
- [FtsSearchParams](struct.FtsSearchParams.html)
- [FullTextSearchQuery](struct.FullTextSearchQuery.html) - A full text search query
- [InvertedIndexParams](struct.InvertedIndexParams.html) - Tokenizer configs
- [LabelListIndexBuilder](struct.LabelListIndexBuilder.html) - Builder for LabelList index.
- [MatchQuery](struct.MatchQuery.html)
- [MultiMatchQuery](struct.MultiMatchQuery.html)
- [PhraseQuery](struct.PhraseQuery.html)
- [Tokens](struct.Tokens.html)

## Enums

- [FtsQuery](enum.FtsQuery.html)
- [Occur](enum.Occur.html)
- [Operator](enum.Operator.html)

## Traits

- [FtsQueryNode](trait.FtsQueryNode.html)

## Functions

- [collect_query_tokens](fn.collect_query_tokens.html)
- [fill_fts_query_column](fn.fill_fts_query_column.html)
- [has_query_token](fn.has_query_token.html)
