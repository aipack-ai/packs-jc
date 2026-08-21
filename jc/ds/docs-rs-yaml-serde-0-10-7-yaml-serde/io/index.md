# Module `yaml_serde::io`

**Version:** 0.10.7

[Source](../../src/yaml_serde/io.rs.html#1-98)

## Description

I/O traits abstracted over `std` and `no_std`.

In `std` mode, this module re-exports items from `std::io`. In `no_std` mode, it provides a minimal `Write` trait and error type.

This follows the same pattern as `serde_json`: [https://github.com/serde-rs/json/blob/master/src/io/mod.rs](https://github.com/serde-rs/json/blob/master/src/io/mod.rs)

## Structs

### [`Error`](struct.Error.html)

The error type for I/O operations of the [`Read`](../../std/io/trait.Read.html), [`Write`](trait.Write.html), [`Seek`](https://doc.rust-lang.org/nightly/core/io/seek/trait.Seek.html), and associated traits.

## Traits

### [`Read`](trait.Read.html)

The `Read` trait allows for reading bytes from a source.

### [`Write`](trait.Write.html)

A trait for objects that are byte-oriented sinks.

## Type Aliases

### [`Result`](type.Result.html)

A specialized [`Result`](https://doc.rust-lang.org/nightly/core/result/enum.Result.html) type for I/O operations.
