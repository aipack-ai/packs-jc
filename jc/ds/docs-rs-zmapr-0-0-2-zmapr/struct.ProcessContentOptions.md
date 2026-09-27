# ProcessContentOptions

`ProcessContentOptions` configures the Fetch, Sanitize, and Map stages of a content-processing workflow. Stages run in that order; a disabled stage passes the current artifacts through unchanged.

```rust
ProcessContentOptions::new("docs")
    .with_dest("target/zmapr-docs")
    .with_sanitize(true)
    .with_map(true)
    .with_model("gpt-5-mini");
```

## Struct definition

```rust
pub struct ProcessContentOptions {
    pub destination: Option<SPath>,
    pub source: String,
    pub fetch: bool,
    pub include: Vec<String>,
    pub exclude: Vec<String>,
    pub format: FetchFormat,
    pub max_depth: usize,
    pub llms: bool,
    pub sanitize: bool,
    pub map: bool,
    pub model: Option<String>,
    pub sanitize_model: Option<String>,
    pub map_model: Option<String>,
    pub sanitize_prompt: Option<SanitizePrompt>,
    pub resume: bool,
    pub concurrency: usize,
}
```

## Defaults

`ProcessContentOptions::new(source)` sets `destination` to `None`. If no destination is provided, it is derived from the source:

- A local directory such as `docs` uses the sibling destination `docs-zmapr`.
- A local file such as `notes/guide.md` uses the sibling destination `notes/guide-zmapr`.
- A web URL such as `https://example.com/docs/` uses `zmapr/example.com/docs` relative to the current directory. URL path segments are sanitized.

Other defaults:

- `fetch` is `true`; `sanitize`, `map`, and `resume` are `false`.
- `include` and `exclude` are empty.
- `format` is `FetchFormat::Md`.
- `max_depth` is `0`, so web Fetch starts with the requested resource and does not follow linked pages.
- `llms` is `true`, enabling `llms.txt` discovery for web sources.
- `model`, `sanitize_model`, `map_model`, and `sanitize_prompt` are `None`.
- `concurrency` is `8`.

## Fetch selection

Fetch uses the source passed to `new(source)`. Include patterns are applied before exclusions, and exclusions take precedence. Patterns support `*` within a path segment and `**` across zero or more path segments. A leading `!` on an include pattern adds an exclusion.

`format` selects how fetched HTML is stored. Non-HTML files are stored unchanged. For web sources, `max_depth` controls link crawling from the starting URL, and `llms` controls discovery of `llms.txt` entries.

With `with_fetch(false)`, the workflow skips Fetch and loads a prior Fetch cache from the resolved destination. The source passed to `new(source)` must match the source recorded in the cache manifest.

## AI stages and models

Set `sanitize` and `map` to enable their respective stages. Each enabled AI stage requires a nonempty resolved model. Sanitize uses `sanitize_model` when set, otherwise `model`; Map uses `map_model` when set, otherwise `model`.

A custom `sanitize_prompt` replaces the built-in Sanitize instructions. Inline prompt content must not be empty or whitespace-only. A file-backed prompt must identify an existing file.

## Resume and concurrency

When `resume` is enabled, successful unchanged work may be reused when the stage’s saved state and inputs remain compatible. Reuse rules depend on the stage.

Sanitize records completed items in `.tmp-zmapr/sanitize.journal.jsonl`. Resume reuses an entry only when the journal header, input hash, and existing output hash match the current run. For a given path, the latest journal record wins.

`concurrency` limits parallel item processing for web Fetch, Sanitize, and Map. Local Fetch processes items sequentially and does not use this limit.

Only one workflow run per destination directory is supported at a time. Journals do not provide cross-process locking.

## Configuration validation

Options are validated before stage execution:

- At least one stage must be selected.
- `concurrency` must be greater than zero.
- Every enabled AI stage must resolve to a nonempty model.
- When Fetch is enabled, the source must be a valid local file or directory, or a structurally valid HTTP(S) URL.
- A local source directory must not equal or contain the resolved destination.
- When Fetch is disabled and a later stage is enabled, the prior Fetch cache must exist and its manifest source must match the configured source.
- Invalid Sanitize prompt values cause validation to fail.

## Fields

- `destination: Option<SPath>` — Root directory for cache, stage outputs, manifests, and maps.
- `source: String` — Local path or HTTP(S) URL to fetch.
- `fetch: bool` — Controls whether the workflow fetches the configured source.
- `include: Vec<String>` — Glob patterns selecting content to include.
- `exclude: Vec<String>` — Glob patterns excluding otherwise selected content.
- `format: FetchFormat` — Storage format for fetched HTML content.
- `max_depth: usize` — Maximum web link depth from the starting URL.
- `llms: bool` — Enables `llms.txt` discovery for web sources.
- `sanitize: bool` — Enables the AI Sanitize stage.
- `map: bool` — Enables the AI Map stage.
- `model: Option<String>` — Default model for the AI stages.
- `sanitize_model: Option<String>` — Model override for Sanitize.
- `map_model: Option<String>` — Model override for Map.
- `sanitize_prompt: Option<SanitizePrompt>` — Custom Sanitize instructions replacing the built-in instructions.
- `resume: bool` — Reuses successful unchanged stage work when possible.
- `concurrency: usize` — Limits parallel item processing within a stage.

## Methods

All builder methods consume and return `Self`, allowing them to be chained.

### Constructor

```rust
pub fn new(source: impl Into<String>) -> Self
```

Creates a workflow with Fetch enabled and the Sanitize and Map stages disabled.

### Destination and Fetch configuration

```rust
pub fn with_dest(self, destination: impl Into<SPath>) -> Self
pub fn with_fetch(self, fetch: bool) -> Self
pub fn with_format(self, format: FetchFormat) -> Self
pub fn with_max_depth(self, max_depth: usize) -> Self
pub fn with_llms(self, llms: bool) -> Self
```

- `with_dest` sets the destination directory for workflow outputs.
- `with_fetch` enables or disables fetching the configured source.
- `with_format` sets the storage format used by Fetch.
- `with_max_depth` sets the maximum web crawl depth from the starting URL.
- `with_llms` enables or disables `llms.txt` discovery for web sources.

### Include and exclude patterns

```rust
pub fn with_include(
    self,
    include: impl IntoIterator<Item = impl Into<String>>,
) -> Self

pub fn append_include(self, include: impl Into<String>) -> Self

pub fn append_includes(
    self,
    includes: impl IntoIterator<Item = impl Into<String>>,
) -> Self

pub fn with_exclude(
    self,
    exclude: impl IntoIterator<Item = impl Into<String>>,
) -> Self

pub fn append_exclude(self, exclude: impl Into<String>) -> Self

pub fn append_excludes(
    self,
    excludes: impl IntoIterator<Item = impl Into<String>>,
) -> Self
```

- `with_include` replaces the include patterns; `append_include` and `append_includes` add patterns.
- `with_exclude` replaces the exclude patterns; `append_exclude` and `append_excludes` add patterns.

### AI stages and models

```rust
pub fn with_sanitize(self, sanitize: bool) -> Self
pub fn with_map(self, map: bool) -> Self
pub fn with_model(self, model: impl Into<String>) -> Self
pub fn with_sanitize_model(self, model: impl Into<String>) -> Self
pub fn with_map_model(self, model: impl Into<String>) -> Self
pub fn with_sanitize_prompt(self, prompt: SanitizePrompt) -> Self
```

- `with_sanitize` enables or disables the Sanitize stage.
- `with_map` enables or disables the Map stage.
- `with_model` sets the fallback model for enabled AI stages.
- `with_sanitize_model` sets the model used by Sanitize.
- `with_map_model` sets the model used by Map.
- `with_sanitize_prompt` sets custom instructions that replace the built-in Sanitize instructions.

### Resume and concurrency

```rust
pub fn with_resume(self, resume: bool) -> Self
pub fn with_concurrency(self, concurrency: usize) -> Self
```

- `with_resume` controls whether successful unchanged stage work may be reused.
- `with_concurrency` sets the maximum parallel item processing within a stage.

## Trait implementations

- Implements `Clone`.
- Implements `Debug`.
- Also implements the auto traits `Freeze`, `RefUnwindSafe`, `Send`, `Sync`, `Unpin`, `UnsafeUnpin`, and `UnwindSafe`.
