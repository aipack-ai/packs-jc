# DfExpr in `lancedb::expr`

**Enum** representing logical expressions such as `A + 1`, or `CAST(c1 AS int)`.

For example the expression `A + 1` will be represented as:

```text
BinaryExpr {
    left: Expr::Column("A"),
    op: Operator::Plus,
    right: Expr::Literal(ScalarValue::Int32(Some(1)), None)
}
```

## Description

### Creating Expressions

`Expr`s can be created directly, but it is often easier and less verbose to use the fluent APIs in [`crate::expr_fn`] such as `col` and `lit`, or methods such as `Expr::alias`, `Expr::cast_to`, and `Expr::Like`. See also `ExprFunctionExt` for creating aggregate and window functions.

### Printing Expressions

You can print `Expr`s using the `Debug` trait, `Display` trait, or `Self::human_display`. See the examples below.

If you need SQL to pass to other systems, consider using `Unparser`.

### Schema Access

See `ExprSchemable::get_type` to access the `DataType` and nullability of an `Expr`.

### Visiting and Rewriting `Expr`s

The `Expr` struct implements the `TreeNode` trait for walking and rewriting expressions. For example `TreeNode::apply` recursively visits an `Expr` and `TreeNode::transform` can be used to rewrite an expression.

### Examples: Creating and Using `Expr`s

#### Column References and Literals

`Expr::Column` refer to the values of columns and are often created with the `col` function.

```rust
let expr = col("c1");
assert_eq!(expr, Expr::Column(Column::from_name("c1")));
```

`Expr::Literal` refer to literal, or constant, values. These are created with the `lit` function.

```rust
let expr = lit(42i64);
assert_eq!(expr, Expr::Literal(ScalarValue::Int64(Some(42)), None));

let expr = Expr::Literal(ScalarValue::Int64(None), None);
let expr = lit(ScalarValue::Null);
```

#### Binary Expressions

Exprs implement traits that allow easy construction of more complex expressions.

```rust
let expr = col("c1") + col("c2");
assert!(matches!(expr, Expr::BinaryExpr { .. }));
```

```rust
let expr = col("c1").eq(lit(42_i32));
```

```rust
let arrow_schema = Schema::new(vec![
    Field::new("c1", DataType::Int32, false),
    Field::new("c2", DataType::Float64, false),
]);
let df_schema = DFSchema::try_from_qualified_schema("t1", &arrow_schema).unwrap();
let exprs: Vec<_> = df_schema.iter().map(Expr::from).collect();
```

### Examples: Displaying `Exprs`

#### Use `Debug` trait

```rust
let expr = col("c1") + lit(42);
assert_eq!(format!("{expr:?}"), "BinaryExpr(BinaryExpr { left: Column(Column { relation: None, name: \"c1\" }), op: Plus, right: Literal(Int32(42), None) })");
```

#### Use the `Display` trait (detailed expression)

```rust
let expr = col("c1") + lit(42);
assert_eq!(format!("{expr}"), "c1 + Int32(42)");
```

#### Use `Self::human_display` (human readable)

```rust
let expr = col("c1") + lit(42);
assert_eq!(format!("{}", expr.human_display()), "c1 + 42");
```

### Examples: Visiting and Rewriting `Expr`s

Find all literals in an `Expr` tree:

```rust
use datafusion_common::ScalarValue;
use datafusion_common::tree_node::{TreeNode, TreeNodeRecursion};
let expr = col("a").eq(lit(5)) & col("b").eq(lit(6));
let mut scalars = HashSet::new();
expr.apply(|e| {
    if let Expr::Literal(scalar, _) = e {
        scalars.insert(scalar);
    }
    Ok(TreeNodeRecursion::Continue)
}).unwrap();
```

Rewrite an expression, replacing references to column "a" with literal `42`:

```rust
let expr = col("a").eq(lit(5)).and(col("b").eq(lit(6)));
let rewritten = expr.transform(|e| {
    if let Expr::Column(c) = &e {
        if &c.name == "a" {
            return Ok(Transformed::yes(lit(42)))
        }
    }
    Ok(Transformed::no(e))
}).unwrap();
```

## Variants

- `Alias(Alias)` — An expression with a specific name.
- `Column(Column)` — A named reference to a qualified field in a schema.
- `ScalarVariable(Arc<Field>, Vec<String>)` — A named reference to a variable in a registry.
- `Literal(ScalarValue, Option<FieldMetadata>)` — A constant value along with associated `FieldMetadata`.
- `BinaryExpr(BinaryExpr)` — A binary expression such as “age > 21”.
- `Like(Like)` — LIKE expression.
- `SimilarTo(Like)` — LIKE expression that uses regular expressions.
- `Not(Box<Expr>)` — Negation of an expression.
- `IsNotNull(Box<Expr>)` — True if argument is not NULL.
- `IsNull(Box<Expr>)` — True if argument is NULL.
- `IsTrue(Box<Expr>)` — True if argument is true.
- `IsFalse(Box<Expr>)` — True if argument is false.
- `IsUnknown(Box<Expr>)` — True if argument is NULL.
- `IsNotTrue(Box<Expr>)` — True if argument is FALSE or NULL.
- `IsNotFalse(Box<Expr>)` — True if argument is TRUE OR NULL.
- `IsNotUnknown(Box<Expr>)` — True if argument is TRUE or FALSE.
- `Negative(Box<Expr>)` — Arithmetic negation of an expression.
- `Between(Between)` — Whether an expression is between a given range.
- `Case(Case)` — A CASE expression.
- `Cast(Cast)` — Casts the expression to a given type (runtime error on failure).
- `TryCast(TryCast)` — Casts the expression to a given type (returns null on failure).
- `ScalarFunction(ScalarFunction)` — Call a scalar function with arguments.
- `AggregateFunction(AggregateFunction)` — Call an aggregate function with arguments and optional `ORDER BY`, `FILTER`, `DISTINCT`, `NULL TREATMENT`.
- `WindowFunction(Box<WindowFunction>)` — Call a window function with arguments.
- `InList(InList)` — Returns whether the list contains the expr value.
- `Exists(Exists)` — EXISTS subquery.
- `InSubquery(InSubquery)` — IN subquery.
- `SetComparison(SetComparison)` — Set comparison subquery (e.g. `= ANY`, `> ALL`).
- `ScalarSubquery(Subquery)` — Scalar subquery.
- `Wildcard` — (Deprecated) Reference to all available fields in a schema.
  - `qualifier: Option<TableReference>`
  - `options: Box<WildcardOptions>`
- `GroupingSet(GroupingSet)` — List of grouping set expressions (valid only in GROUP BY).
- `Placeholder(Placeholder)` — A place holder for parameters in a prepared statement (e.g. `$foo` or `$1`).
- `OuterReferenceColumn(Arc<Field>, Column)` — A placeholder for a correlated subquery reference.
- `Unnest(Unnest)` — Unnest expression.

## Implementations

### `impl Expr`

- **`pub fn schema_name(&self) -> impl Display`** — The name of the column (field) that this `Expr` will produce.
- **`pub fn human_display(&self) -> impl Display`** — Human readable display formatting for this expression.
- **`pub fn qualified_name(&self) -> (Option<TableReference>, String)`** — Returns the qualifier and schema name.
- **`pub fn placement(&self) -> ExpressionPlacement`** — Returns placement information for optimizers.
- **`pub fn variant_name(&self) -> &str`** — Returns string representation of the variant.
- **`pub fn eq(self, other: Expr) -> Expr`** — Return `self == other`.
- **`pub fn not_eq(self, other: Expr) -> Expr`** — Return `self != other`.
- **`pub fn gt(self, other: Expr) -> Expr`** — Return `self > other`.
- **`pub fn gt_eq(self, other: Expr) -> Expr`** — Return `self >= other`.
- **`pub fn lt(self, other: Expr) -> Expr`** — Return `self < other`.
- **`pub fn lt_eq(self, other: Expr) -> Expr`** — Return `self <= other`.
- **`pub fn and(self, other: Expr) -> Expr`** — Return `self && other`.
- **`pub fn or(self, other: Expr) -> Expr`** — Return `self || other`.
- **`pub fn like(self, other: Expr) -> Expr`** — Return `self LIKE other`.
- **`pub fn not_like(self, other: Expr) -> Expr`** — Return `self NOT LIKE other`.
- **`pub fn ilike(self, other: Expr) -> Expr`** — Return `self ILIKE other`.
- **`pub fn not_ilike(self, other: Expr) -> Expr`** — Return `self NOT ILIKE other`.
- **`pub fn name_for_alias(&self) -> Result<String, DataFusionError>`** — Return the name to use for the specific Expr.
- **`pub fn alias_if_changed(self, original_name: String) -> Result<Expr, DataFusionError>`** — Ensure expr has the given name by adding an alias if necessary.
- **`pub fn alias(self, name: impl Into<String>) -> Expr`** — Return `self AS name` alias expression.
- **`pub fn alias_with_metadata(self, name: impl Into<String>, metadata: Option<FieldMetadata>) -> Expr`** — Return alias with metadata.
- **`pub fn alias_qualified(self, relation: Option<impl Into<TableReference>>, name: impl Into<String>) -> Expr`** — Return alias with a specific qualifier.
- **`pub fn alias_qualified_with_metadata(self, relation: Option<impl Into<TableReference>>, name: impl Into<String>, metadata: Option<FieldMetadata>) -> Expr`** — Return alias with qualifier and metadata.
- **`pub fn unalias(self) -> Expr`** — Remove an alias from an expression (one level).
- **`pub fn unalias_nested(self) -> Transformed<Expr>`** — Recursively remove multiple aliases.
- **`pub fn in_list(self, list: Vec<Expr>, negated: bool) -> Expr`** — Return `self IN` or `self NOT IN`.
- **`pub fn is_null(self) -> Expr`** — Return `IsNull(Box(self))`.
- **`pub fn is_not_null(self) -> Expr`** — Return `IsNotNull(Box(self))`.
- **`pub fn sort(self, asc: bool, nulls_first: bool) -> Sort`** — Create a sort configuration.
- **`pub fn is_true(self) -> Expr`** — Return `IsTrue(Box(self))`.
- **`pub fn is_not_true(self) -> Expr`** — Return `IsNotTrue(Box(self))`.
- **`pub fn is_false(self) -> Expr`** — Return `IsFalse(Box(self))`.
- **`pub fn is_not_false(self) -> Expr`** — Return `IsNotFalse(Box(self))`.
- **`pub fn is_unknown(self) -> Expr`** — Return `IsUnknown(Box(self))`.
- **`pub fn is_not_unknown(self) -> Expr`** — Return `IsNotUnknown(Box(self))`.
- **`pub fn between(self, low: Expr, high: Expr) -> Expr`** — Return `self BETWEEN low AND high`.
- **`pub fn not_between(self, low: Expr, high: Expr) -> Expr`** — Return `self NOT BETWEEN low AND high`.
- **`pub fn try_as_col(&self) -> Option<&Column>`** — Return a reference to the inner `Column` if any.
- **`pub fn get_as_join_column(&self) -> Option<&Column>`** — Returns the inner `Column` if any, taking Cast into account.
- **`pub fn column_refs(&self) -> HashSet<&Column>`** — Return all column references.
- **`pub fn add_column_refs<'a>(&'a self, set: &mut HashSet<&'a Column>)`** — Add column references to a set.
- **`pub fn column_refs_counts(&self) -> HashMap<&Column, usize>`** — Return column references and occurrence counts.
- **`pub fn add_column_ref_counts<'a>(&'a self, map: &mut HashMap<&'a Column, usize>)`** — Add column ref counts to a map.
- **`pub fn any_column_refs(&self) -> bool`** — Returns true if there are any column references.
- **`pub fn contains_outer(&self) -> bool`** — Return true if the expression contains outer (correlated) expressions.
- **`pub fn is_volatile_node(&self) -> bool`** — Returns true if the expression node is volatile (ignoring inputs).
- **`pub fn is_volatile(&self) -> bool`** — Returns true if the expression is volatile (considers inputs).
- **`pub fn infer_placeholder_types(self, schema: &DFSchema) -> Result<(Expr, bool), DataFusionError>`** — Infer `DataType` for all `Placeholder`s.
- **`pub fn short_circuits(&self) -> bool`** — Returns true if some subexpressions may not be evaluated.
- **`pub fn spans(&self) -> Option<&Spans>`** — Returns a reference to the set of locations in the SQL query.
- **`pub fn as_literal(&self) -> Option<&ScalarValue>`** — Check if the Expr is literal and get the value.

## Trait Implementations

- **`impl Add for Expr`**
  - `type Output = Expr`
  - `fn add(self, rhs: Expr) -> Expr`
- **`impl AsRef<Expr> for Expr`** — `fn as_ref(&self) -> &Expr`
- **`impl BitAnd for Expr`**
  - `type Output = Expr`
  - `fn bitand(self, rhs: Expr) -> Expr`
- **`impl BitOr for Expr`**
  - `type Output = Expr`
  - `fn bitor(self, rhs: Expr) -> Expr`
- **`impl BitXor for Expr`**
  - `type Output = Expr`
  - `fn bitxor(self, rhs: Expr) -> Expr`
- **`impl Clone for Expr`** — `fn clone(&self) -> Expr`, `fn clone_from(&mut self, source: &Self)`
- **`impl Debug for Expr`** — `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
- **`impl Default for Expr`** — `fn default() -> Expr`
- **`impl Display for Expr`** — `fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>`
- **`impl Div for Expr`**
  - `type Output = Expr`
  - `fn div(self, rhs: Expr) -> Expr`
- **`impl ExprExt for Expr`** (from `lance_datafusion`)
  - `fn field_newstyle(&self, name: &str) -> Expr`
- **`impl ExprFunctionExt for Expr`**
  - `fn order_by(self, order_by: Vec<Sort>) -> ExprFuncBuilder`
  - `fn filter(self, filter: Expr) -> ExprFuncBuilder`
  - `fn distinct(self) -> ExprFuncBuilder`
  - `fn null_treatment(self, null_treatment: impl Into<Option<NullTreatment>>) -> ExprFuncBuilder`
  - `fn partition_by(self, partition_by: Vec<Expr>) -> ExprFuncBuilder`
  - `fn window_frame(self, window_frame: WindowFrame) -> ExprFuncBuilder`
- **`impl ExprSchemable for Expr`**
  - `fn get_type(&self, schema: &dyn ExprSchema) -> Result<DataType, DataFusionError>`
  - `fn nullable(&self, input_schema: &dyn ExprSchema) -> Result<bool, DataFusionError>`
  - `fn data_type_and_nullable(&self, schema: &dyn ExprSchema) -> Result<(DataType, bool), DataFusionError>` (deprecated)
  - `fn to_field(&self, schema: &dyn ExprSchema) -> Result<(Option<TableReference>, Arc<Field>), DataFusionError>`
  - `fn cast_to(self, cast_to_type: &DataType, schema: &dyn ExprSchema) -> Result<Expr, DataFusionError>`
  - `fn metadata(&self, schema: &dyn ExprSchema) -> Result<FieldMetadata, DataFusionError>`
- **`impl FieldAccessor for Expr`** — `fn field(self, name: impl Literal) -> Expr`
- **`impl<'a> From<&'a Expr> for Predicate<'a>`** — `fn from(e: &'a Expr) -> Self`
- **`impl<'a> From<(Option<&'a TableReference>, &'a Arc<Field>)> for Expr`** — `fn from(value) -> Expr`
- **`impl From<Column> for Expr`** — `fn from(value: Column) -> Expr`
- **`impl From<ScalarAndMetadata> for Expr`** — `fn from(value: ScalarAndMetadata) -> Expr`
- **`impl From<WindowFunction> for Expr`** — `fn from(value: WindowFunction) -> Expr`
- **`impl Hash for Expr`** — `fn hash<__H>(&self, state: &mut __H)`, `fn hash_slice(data: &[Self], state: &mut H)`
- **`impl HashNode for Expr`** — `fn hash_node(&self, state: &mut H)`
- **`impl IndexAccessor for Expr`** — `fn index(self, key: Expr) -> Expr`
- **`impl Mul for Expr`**
  - `type Output = Expr`
  - `fn mul(self, rhs: Expr) -> Expr`
- **`impl Neg for Expr`**
  - `type Output = Expr`
  - `fn neg(self) -> Expr`
- **`impl NormalizeEq for Expr`** — `fn normalize_eq(&self, other: &Expr) -> bool`
- **`impl Normalizeable for Expr`** — `fn can_normalize(&self) -> bool`
- **`impl Not for Expr`**
  - `type Output = Expr`
  - `fn not(self) -> Expr`
- **`impl PartialEq for Expr`** — `fn eq(&self, other: &Expr) -> bool`, `fn ne(&self, other: &Rhs) -> bool`
- **`impl PartialOrd for Expr`** — `fn partial_cmp(&self, other: &Expr) -> Option<Ordering>`, `fn lt`, `fn le`, `fn gt`, `fn ge`
- **`impl Rem for Expr`**
  - `type Output = Expr`
  - `fn rem(self, rhs: Expr) -> Expr`
- **`impl Shl for Expr`**
  - `type Output = Expr`
  - `fn shl(self, rhs: Expr) -> Expr`
- **`impl Shr for Expr`**
  - `type Output = Expr`
  - `fn shr(self, rhs: Expr) -> Expr`
- **`impl SliceAccessor for Expr`** — `fn range(self, start: Expr, stop: Expr) -> Expr`
- **`impl Sub for Expr`**
  - `type Output = Expr`
  - `fn sub(self, rhs: Expr) -> Expr`
- **`impl TreeNode for Expr`**
  - `fn apply_children<'n, F>(&'n self, f: F) -> Result<TreeNodeRecursion, DataFusionError>`
  - `fn map_children(self, f: F) -> Result<Transformed<Expr>, DataFusionError>`
  - `fn visit<'n, V>(&'n self, visitor: &mut V) -> Result<TreeNodeRecursion, DataFusionError>`
  - `fn rewrite(self, rewriter: &mut R) -> Result<Transformed, DataFusionError>`
  - `fn apply<'n, F>(&'n self, f: F) -> Result<TreeNodeRecursion, DataFusionError>`
  - `fn transform(self, f: F) -> Result<Transformed, DataFusionError>`
  - `fn transform_down(self, f: F) -> Result<Transformed, DataFusionError>`
  - `fn transform_up(self, f: F) -> Result<Transformed, DataFusionError>`
  - `fn transform_down_up(self, f_down: FD, f_up: FU) -> Result<Transformed, DataFusionError>`
  - `fn exists(&self, f: F) -> Result<bool, DataFusionError>`
- **`impl<'a> TreeNodeContainer<'a, Expr> for Expr`**
  - `fn apply_elements(&'a self, f: F) -> Result<TreeNodeRecursion, DataFusionError>`
  - `fn map_elements(self, f: F) -> Result<Transformed<Expr>, DataFusionError>`

## Auto Trait Implementations

*(Not included for brevity – auto traits such as `Send`, `Sync`, `Unpin`, etc. are automatically derived.)*

## Blanket Implementations

*(Not included – generic blanket implementations for `Any`, `CloneToUninit`, `From`, `Into`, etc.)*
